import logging
from io import BytesIO
from flask import Flask, render_template, request, redirect, flash, send_file, url_for
from flask_sqlalchemy import SQLAlchemy
import pandas as pd
from werkzeug.utils import secure_filename
import os
from wtforms import SelectField, SubmitField
from wtforms.fields import DateField
from flask_wtf import FlaskForm
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from wtforms.validators import DataRequired
from datetime import datetime
from io import BytesIO
from flask import send_file
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from flask_wtf import FlaskForm
from wtforms import SelectField, SubmitField, DateField
from wtforms.validators import DataRequired
from pymongo import MongoClient
from reportlab.lib import colors
from reportlab.lib.pagesizes import letter
from reportlab.platypus import Table, TableStyle, Paragraph, Image
from reportlab.lib.units import inch
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.platypus import Spacer
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication

# Set up logging
logging.basicConfig(filename='app.log', level=logging.DEBUG, 
                    format='%(asctime)s %(levelname)s: %(message)s')

app = Flask(__name__)
app.secret_key = 'supersecretkey'

# Directory for saving uploaded files
UPLOAD_FOLDER = 'uploads'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

MONGODB_URI = "mongodb+srv://yuktidemo:8XzMA9assqJXrlzc@empiredrivers.blmpb.mongodb.net/"  # Replace with your MongoDB URI
client = MongoClient(MONGODB_URI)
db = client['EmpireDriver']  # Database name
trip_data_collection = db['Empire']  # Collection name for trip data

os.makedirs(UPLOAD_FOLDER, exist_ok=True)

# Function to clean and import data into MongoDB
def clean_and_import_data(df):
    try:
        df.columns = df.columns.str.strip()
        df['DATE'] = pd.to_datetime(df['DATE'], errors='coerce')
        df = df.dropna(subset=['DATE'])
        df['GROSS PAY'] = df['GROSS PAY'].replace({'\$': ''}, regex=True).astype(float)
        df['NET PAY'] = df['GROSS PAY'] * 0.75
        data = df.to_dict(orient='records')

        for row in data:
            if not trip_data_collection.find_one({
                "batch_id": row['BATCH ID'],
                "driver_name": row['DRIVER NAME'],
                "trip_date": row['DATE'],
                "trip_code": row['TRIP CODE']
            }):
                trip_data_collection.insert_one({
                    "batch_id": row['BATCH ID'],
                    "sp_company": row['SP COMPANY'],
                    "driver_name": row['DRIVER NAME'],
                    "drive_code": row['DRIVE CODE'],
                    "trip_date": row['DATE'],
                    "trip_code": row['TRIP CODE'],
                    "trip_name": row['TRIP NAME'],
                    "cancellation_reason": row.get('CANCELLATION REASON'),
                    "miles": row['MILES'],
                    "gross_pay": row['GROSS PAY'],
                    "deduction": row.get('DEDUCTION', 0),
                    "spiff": row.get('SPIFF', 0),
                    "net_pay": row['NET PAY']
                })
        logging.info("Data cleaned and imported successfully into MongoDB.")
    except Exception as e:
        logging.error(f"Error in clean_and_import_data: {e}")

@app.route('/')
def home():
    logging.info("Home route accessed.")
    return redirect(url_for('upload_file'))

# Route to upload and process the Excel file
@app.route('/upload', methods=['GET', 'POST'])
def upload_file():
    logging.info("Upload route accessed.")
    if request.method == 'POST':
        file = request.files.get('file')
        if file and file.filename.endswith('.xlsx'):
            file_path = os.path.join(UPLOAD_FOLDER, file.filename)
            file.save(file_path)
            try:
                df_global = pd.read_excel(file_path)
                if df_global.empty:
                    flash('Failed to read the uploaded file or the file is empty.')
                    return redirect(request.url)

                clean_and_import_data(df_global)
                data = list(trip_data_collection.find())
                df_global = pd.DataFrame(data)
                if 'driver_name' in df_global.columns:
                    driver_names = df_global['driver_name'].unique().tolist()
                else:
                    flash('Driver names not found in the uploaded data.')
                    return redirect(request.url)

                flash('File uploaded and processed successfully')
                return redirect(url_for('filter_rides'))
            except Exception as e:
                logging.error(f"Error uploading file: {e}")
                flash(f"Error uploading file: {str(e)}")
                return redirect(request.url)

    return render_template('upload.html')

# Route to filter rides
@app.route('/filter', methods=['GET', 'POST'])
def filter_rides():
    try:
        data = list(trip_data_collection.find())
        df_global = pd.DataFrame(data)
        df_global.columns = df_global.columns.str.strip().str.lower().str.replace(' ', '_')

        if request.method == 'POST':
            driver_name = request.form.get('driver_name')
            date_from = request.form.get('date_from')
            date_to = request.form.get('date_to')
            date_from = datetime.strptime(date_from, '%Y-%m-%d').date()
            date_to = datetime.strptime(date_to, '%Y-%m-%d').date()

            df_global['trip_date'] = pd.to_datetime(df_global['trip_date']).dt.date
            filtered_df = df_global[
                (df_global['driver_name'] == driver_name) & 
                (df_global['trip_date'] >= date_from) & 
                (df_global['trip_date'] <= date_to)
            ].copy()

            if filtered_df.empty:
                flash('No data found for the selected filters.')
                return redirect(request.url)

            filtered_df.loc[:, 'net_pay'] = filtered_df['gross_pay'] * 0.75
            filtered_df['trip_date'] = filtered_df['trip_date'].apply(lambda x: x.strftime('%Y-%m-%d'))
            grouped_df = filtered_df.groupby('trip_date').agg({
                'trip_name': 'count', 'miles': 'sum', 'gross_pay': 'sum', 'net_pay': 'sum'
            }).reset_index()
            grouped_df = grouped_df.rename(columns={'trip_name': 'runs'})

            total_miles = grouped_df['miles'].sum()
            total_gross_pay = grouped_df['gross_pay'].sum()
            total_net_pay = grouped_df['net_pay'].sum()
            days = filtered_df['trip_date'].nunique()
            total_runs = grouped_df['runs'].sum()
            data = grouped_df.to_dict(orient='records')

            logging.info("Filter applied successfully.")
            return render_template('display.html', data=data, 
                                   total_miles=total_miles, total_gross_pay=total_gross_pay, total_net_pay=total_net_pay,
                                   driver_name=driver_name, date_from=date_from, date_to=date_to, days=days, run=total_runs)
        else:
            if 'driver_name' in df_global.columns:
                driver_names = df_global['driver_name'].unique().tolist()
            else:
                flash('No driver names found in the database.')
                return redirect(url_for('upload_file'))
        
        return render_template('filter.html', driver_names=driver_names)
    except Exception as e:
        logging.error(f"Error in filter_rides: {e}")
        flash("An error occurred while filtering rides.")
        return redirect(url_for('upload_file'))

# ... Continue adding logging to other routes similarly

# Run the application
if __name__ == '__main__':
    if not os.path.exists(UPLOAD_FOLDER):
        os.makedirs(UPLOAD_FOLDER)
    app.run(debug=False)
