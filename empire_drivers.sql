PGDMP  -    )            	    |           empire_drivers    16.2    16.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16549    empire_drivers    DATABASE     p   CREATE DATABASE empire_drivers WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE empire_drivers;
                postgres    false            �            1259    16550 	   trip_data    TABLE     �  CREATE TABLE public.trip_data (
    batch_id character varying(50),
    sp_company character varying(100),
    driver_name character varying(100),
    drive_code character varying(10),
    trip_date date,
    trip_code character varying(20),
    trip_name character varying(255),
    cancellation_reason text,
    miles integer,
    gross_pay numeric(10,2),
    deduction numeric(10,2),
    spiff numeric(10,2),
    net_pay numeric(10,2)
);
    DROP TABLE public.trip_data;
       public         heap    postgres    false                      0    16550 	   trip_data 
   TABLE DATA           �   COPY public.trip_data (batch_id, sp_company, driver_name, drive_code, trip_date, trip_code, trip_name, cancellation_reason, miles, gross_pay, deduction, spiff, net_pay) FROM stdin;
    public          postgres    false    215   �             x�՝ms�F��?{~E�r��.�{�GI�c��P)q�쳵�!	D: i�����H"A �f�l��LR�X��su�_�9�Y*X�Df������O�����/n����V�j��L޿?{v��������'焜�|se��ų�_z��T=��X����P�HJ&g'�ҭ�,V9y~^�������/?���$��~v??�Ϥ|�eϲ���%��"���*n�P��,F�48�1:g�s<������Yp�bt΂s�DB�X������\g�9G~���hS��隔3W�2�,ɟ��[����+�M{�����9�͕e~G.��l8H�3E_j��L��4�2)쮲ɸ�4x��y�I���̀g�g<{b���:�,x��׳f*��Il��2)��{&녰l����w~�!���.��[7�[.ݼ�Q`��L6��9ͧy��@�h�̝'_rr���_�y�t���rr�����k�����PT�p�gM�(DrrQ�Vˏ��ӌ�^����/74�D���=�&	5�ǌȏ~"~�C�c��������Gď~"~,�c��S�,<?*��fu��x�	��?p��tߜ���E}Ӽ�����f�jԟ?�.������\殺���^���@Z>G�­��w��Ѣ������E �ŀ/�/|�|	ZD���ߘ7���}-"��}9��Ŵ���3��p�H-�z�p��W�;��t}]T����/�&��ҌåMI������$Jה�6쟩"RlK+o��>����$�J�G���ĮK�$�"�
7���2@��G����%Аe�,��,di|dY ˢ!�YYa_ɴ8���,��WX"���?�F��ƕQ���vbC��:�焼q�n�n���l�8���xW�?=��hi=bt�E��I:1������U6x�W�w�h���a���$ң����H�h �!!G9v9WU񙜹�um`>�Y�_W�d�ZO��jI�9Y�r��ə[>��G�E �9?�B� r
r��H�z��t�0YY �s~HE�r4r,�#��c����n"r|�O����	7<H�1L��/o��b���u���$�nݔ�Ϋ���$��n�>�
k����?XmF�C^���'o�߯HR�u*�$T��#��#Q4�H��ȀG�G<Rh<��Q��O�Q8����C��((b���(�$�s�9i�1�i��T堃�B���pUo��J�W�WA��2���p�52J$�TuR���e#�)��PcB�p���sԓjpt �	82�Eő�$
�pDQpdG�����#1TY�H���GG��r;`��]�@&��(����V%p�B]�🼺Jb����q�j���떳��S�sg�ꮑ5ϯAK򂜝�������ZA�L���o�a/���F�E\��I"5<c�	�wR�dv3~�����r;-�3T���^��Rq��X�h �� G9��JBN�VH�1��7�Ӑc���ȑ��JB�r(r,��7�Ӑc�����*	9�a(�	KhY����,��-Mi��cV�Rٮ1F�G�_F{�$��+�[���>F-�m�K��ź��FE���}C{y]�MB���U~=�/�ŧ���JH��Q��)�����7I�O�}�}�cH�3`�i��'��M����?$Ш���y��mJ|�柚f4['*1��j�d�K�$�xq�xY��贀�D���(���a�����ހ��R�ߛ�,
���Pˎo�<��{�?F��U��,݌4��;=�2M}ߨ�YNN+7�l�H��1�Z�3�R٘*�U����b�L�/̨^����/�^X�B���S{�{ӌ�W�x!��ŷo��h�LO�ۼr;[(ʔ�ᒛ����[Y�f��n{o#w�4R:��M�J�)���L�%r+��"��;�f�-�H��-j:$MK��� 
%���e=�2��q��}�HB��6�4#���F���"��0"9��aD<#RÈ��F����H#���F���"�40"�i`DZ<#���d�F��i��H#R��F���"刴0"%�$I�φdDZ�߈�0"-�	�^B�W����ȣ��"Sd��$�ݎ�Dn��M��Vfϊ$	�sP�4s䝺��5�o�m1m�]ˬ�gT����n�,�]�x��ba���̿��+�m"Q�R�������4&�8%09e�)��)N�9�P��%��l��{�Z5���t���̚��y�Sj��)�o�|��>�׫j}{��a�>����������ziz��_Ux�q����Ui�J��J�W�W������J!Te}����;�W�W�����^yY�~w7��j���h��u���OU��o�����w/L���.]��3��CuM�����t+�����R	��V�[�$� D	dD��<Dx�Q��`"�4%�e�(��(DQdD �?���2@��B��2�,Őe��� &"�Q
	QP�%
�{�T�G���F>��G4��g>F����MB��n����56ΩZ^&�WN����-%Y�l%p_���$'��Ϯ�u���}ܝ���/ʼZ|��XLI�;T��z����ȿ��1�mLs����	jl#l�U^�lY������S�J(ӯ'jg�}z4P�Ƣ�[W�KB��4�4e�e�(��(D",	Q�0'$!�֣��>mlH�6*؏������ƕ���+\��pe�L-�G�����=QQ ��C�� 
�s #x@���ԥ�S�Eb�_�^+�y�[5i��S6�iԊ^/�͂|kC�����P���ã6����������\�D{M�G����������b�╻���Rt@�W+%GA
f4�`GEA
f|�@�@� 
vL@�d��` ;>
P`c�`
*(�QQ�߁j\|�v����k�(���jؘ(5
4
��Ul�9���ǆ�������N�wzhG����i�HE��l�rLI<�X<�������-�G<2x<��р���ȂG�G���ء�Ҥ[��!�(�_�e�}�]>�/�׳��wߚ��.k-o5��o\��͊r:k����G���"R��Ent�Ɏ�R�����<\dJ+X�1[i���E��҂����<\dB+�1��Ji}�wX��QLc+�YxLi"E��w��Wq�"��65N���dOgBe��W��[��w7�����|�������׳͆�왴/�0�R���C�M	�������2�c3�¸/��CO�㊳������D����1_E��1��#8��l]�[Rs������f�~N�WzW��,��*���O|�	r�_�c���J���LR������w4w�#q�c�����G9�;ܱ(��g��;�QN�N�c3�pA
w޸jY�~s�37�)��چ��<����<�PsQ�]�V���!Bv�۹����o�m��[Z�$�_jq�S�pExj�
��]qߨ�T��;��P�za�6�^�Q����?�5*&{b���H8��_��1��s��r�/�M���=���/�e	��9#�8�:o��j��V�"����deE�R�e3���?MSݧi*�=S�$Ť �mI��DLi`��bJSS��x�2����	.A?R$.q�8�GP��<z|Yҟ�6�*�SS��x�����+�#/0eQ1]�lv�����x����^W]�Ƞ)6�A��Cfx?A#��������rJ.~}w�S�n��V2"9t�_(��S"�0J���o�D.�.����#u�W/s�W��#1���=,&
�����W/<'��<'د�W��� ��<���%͢EB����@q߆߫��71��ĸ��c�F��b}]�rZ��Ū�ҳ�SP������bN�#���
��rK@��nƈ�˷[F�Ze41�ޯEC4�X���w%�!D�@4�X�0����*��D�B4�XѰ����*��\���.�ۈyY�D���;jd��>2r�Ȁ nvj��4_z�j��/�˥#��]�Z{X��    ����w���H����������Ƥq�F��8P9��C�*J�ms��q6�s��������֙a��l�$��^I��B���NI���񮳣��1I�*`ا��RM�4���$�'��q[/W�s��_����+�+��V�����s�u�o/�8>������xy��<�W����5�C�ș��"'W�7j�(�����/O6�w����J)^��&�P�1H�c|��!�g|5ė�����|�5_�3���Q��@|-��Z���_���kC|�E��6:_�2� ��M���u|��Ʒi�N�ɝ��4���i�-W�Z���]��b�w(a�d�S2I�D�8�p�_��7vK�V�b�)'53GHE�R#}/�n5�GS��::/�]R&��M��^
^4��Oo
^��F�� /���� //A���c�����t������jL�4e�j^����y�����ۼ���˜����xI�qT'�Tk���y�T� uC���G鮳�%��H��(>�����s�[�N:��8��O{4h�a߳S)|���>�}0��>&S�`�9������ѣ�gձXY�Ok	�j4\����*>�s��:/�|��,�$�,�r�����s������3�|���gd�Z��H��ҟ���Ǉ��r�]V�}R���i�
xr���*�r�Ϸ��S���x��I:AbX��Pw�:d�!��!u�,�CX��Pw��9�3��$�@���!���bQݷ�ۭ��,��Lv�ñX��x�'�b�!�&ITi�j��4^i�J��ʀWCU��ʀW�W��*�W�����:Y�Qq��v�n�W;�!��w�\|+��Q}C�z�rZ���e˧zBQ�uhe_*]�yB�$��z�T�)�5��M�諳��q_���R��+%K�W���pe��t������7�+A��{�$s����+ttW@��{�Du��lJ�.o]^���|9+�퓆��Λ�A�^#B��1������g�é���S7�.�qҫHC��Xi���+�z�Nv�X������@�4�X�ՓU����B����6V�y��u${�i�яU6L�fϼxA#S���5@�oI��,N�������2�нX���+��ٺjo�u
`V��b>ݸ�|HV��de}h�r�E���-	o�J�t���L��l�gm�dƆ���9h��]�Uu׮���-^�maW͔�k�N��2�4�e��e��AqL��,2�,�5(�	���/?[!�+<٩��
�tX7�k7�,��bJ9��B�������tT�VM���z����x"w+3� eQˏ�+㙭�¡r�^�<�/}fZ?^��:~<�B�6��5Da��lKy�Q�r�n)���	��Q�|-:|5�{��$�j�W���|���j�����	��~����¹'.|����� ?O�c�����c����%��?||~,���L||~�U�OW��Q�e����(��ë�1:? �y|~J7[O�Ŝ���jq���[2.�e��w69�}����xa M�, �mZi\�\����O�vP@���L)|�YpmH@�f�5��5ȓ�H���c$�]��u^r���SK(���j���XK����������XY��ԯ�{E^I�U�����cJ��V)�b~������9
��|�M��I9�h�@CC���4�pdA>A�h�/�j{C��A��w�tD9��HB���,4�+��J���pQ'��1@���>O��8^�A������t�F���qj}�[�1;�+��kR|U���n3���n�I�V��r��\�'�i�%��*�W���5��������I�&.�0p9U���_���g���O��衫%�.9�K����M"CD��"�4�$�Ф�&��&^g��sa.~��?��e r�r��ƓAn r�r�s<���o*H��"ȃ&�|]�Anr�r��6�HjnM=MM�I��x*��=��ɠ�)H�i4?œt����������ݧ����m���N������?��޴�]U��R�r:�-ɶ�aFhUޥ�S�Y��.�Q�t�܄��Z�Xk�\-�ȏ���[�y������z���J�@i�D�4P(�S��B��B*|j���� �
9�(d�)4@��G�	����(�KmB/?���C��;_~ίW����5������gЗ�R�Roj2ꥡq4Y�Ȱ028�aad�)N52,��nd�d)��:��&|��E߿�z��瘃%\�(���B��}T�M[��{�X�Q�\�o�%c�p�����7R�r�;9�N�Ikޫi�L��"�4�$�d���إ�ɀO�O|�]:�,������Z!wA���igR���}���U��j���L!3���`֝�b�lP��U�d�4x�Py���!��ye�+��+^Q��+^	T^Y�j��d^�>��5,^�*��W;��^��-(�T�7�'����>9'���[�Y�И����j�SM�ΖƇvɃK$#��o�3@܀��h�DpΧ`�sN�s�s���������9�1��q�Ջɝ�8]�r�ZZ��%��w�[����iO.��7[X��o�����'����'�B��4����R6W� �8:�xF�y&�3��3	�=1F�L�g�g
<{b���$�ݪ�!o�r�}>\�޴y�+r�O󖈽G�5�L*��=���sW���W�}����6R����X�i����	�pD�����������L�J���O3W�?��2_�xQ-~ϯW�2w���<������Z@�=s����~�Z���u-||��E��_$_��;���__�B��r�ϋiQ;�x�$����z��}ϛ��=fl�6�I�(�Dp-���rM�k
�k\��\������>��f�rmv���扽[�X��e�u���{����tʠI[�΋/y�,V;�Ľ���4h�[�?�c\h��p|?���"��ǐ�Q4@���� 4؈h���/�h�ѐ�	h�}h��G<�:�b�͔�x�q� �bġ� ,GX�����ݣS�NTLOnݔ�Ϋ����wdw��VXHs$�nV��}�U�[ZqI�h���{ES$�#��#14I�H��H�G�G
<�h<R�Q���Q�yGN�i$�fZЇ�����)T�,����U	�ʢ�J�W�W2x��`�$x�Py���"��+^�Ѽj.���:&���S�G�Y������u-bI^����3rru{�۩F��ץ&�Vr��1�|�9���f�.fM����v>?;f�9a�3��_�#9^��� �� GrD���#���	���4�H �� G9��JB�rr��7�Ӑ������*	9
��ɹ�U�X�VFY�U�̧oUf_ys��wr�_��r�鮝"�
�:N��>�7�`�8�Y�������-:���SP�!�6[�]�e���N��S`��i�������?�e�f��u��ܠg���2W���Vn��������i�O��_[�UL�����^�Q�����	^�Q�P���<�
�����۷|Z4�z���m^���S�wȢ#,MA���vR���Y>��^M�ȡ"M�K�~i��҄�!��y�~�&m���ԮK�~a�r)�{L�J�X=�Ϗ�Զ�𢶯�U"I§�wH�$�$`4r|�Q�h8Q���x���E���)6tj`�4c�s�!�<���&aD
|#R8Y��F��3"�$�[��H	#���F��7"�H�oD*�'��#R��TxF��I�H#R��A�𷌩G䩫�\s�����v���,��3*[A<+�rY\���(��:�ř�'�+�m"Q�Ҙ������&�$8%19��)��)N��:U����������5�̟=�����t��l�9�Pq�_f�_�$��t�I� �[���G�?�H������xA�~w7����P�C�n%e�T������)�x��DOK���kQ��� ]�4��%��%�/��/	~)d~I��!�K�_�_
���u6s�    z�r�t;���P_�jI����+���\^���,n�.�/~�H#��y���!�ަ�3FC�jl#l��V�,]Qm�WO=�
i��LR�@��F� ���(D$D�@�ʐ%�(��(	D",	Q�0'$!JQ	Q
��؈R@�!�Qf����(D��D���VR��]?��'������r�Wۋ�0=?\����5�|���1~s���7��1~s~s���+������ߜ�7]O;�#�dvST���X8��h���*����b�-(��]� NcT���?�$),	����H�G�#	Y<)�h@��x��G�49�G�e�N�.����8��M��
O9[ު �/�o=�9�ힸ"�5�a"7��c�`%�l� +��J	V
�VJ��p�)�T`��l�+�ʯn�\�S�s'�	����*�p��~[}��ț��w��|��$�׳�k��ޕ�-a��1��� a�D�86XX*ǂ0�7��#�?��@��,6�$p6XX*�Tp�稠r,K��i�.�-!���Zo�/��nZx��X���j���o��ƘV{��6�L�gRe���&��q�r���~��4m4�<���^!�?�U�\� ���Ϯr�Eu�N���G<�;PYԌ��ʄ�,����3�qt�I����L�g�g
<;`$�L�gr$����-�r�q����N�Ȅa��V)����T�,�T�M�ʿ/���tY����ʗ�'�"���0�U������O��F��F 55��r:�$xeQy���!L�
^�,�W�\t����eS�о�����b�Y�(mdm��<�+ܚ"�!�Ȫw[|���~���]<����bM��%	�P�P@ � ��=�L�8I��_��$054x������Ŕ� R<T��N%
�� *\T0)<���Xj��89�\�!����w';��Ro%#��A���y��j��$rxe�V��i��ݺ�K�����q�����<<&��Qs�K�����ÿSb<l�,�D��W�g�{��E.R�.*pQ���b}]�4�^ϊU��U�����:��on�j����ȹ����qK@ԅA� c���ݷ�X�����ZD��ѠcEC@4�hH��+��38SECB44�h(��+
��38SECA4L�h���+��޾�k]�b9۝7��_�n�x�v�\�u�u������<����_�?nc�%K�=/\��Ww�d���|���v���A�Cj�5��T)�K�D��|d�9���q�W@|9��
���_	�8�+!�u|�2�!����J��U_�:�
�KG��Ϯ����NwN������j��Z�'���<��d�&ڴ�.3�:�=k�=����W	J��'$L���>�A��$ Hl� ��0��+�$P"!NQ�$ĉ�'	q�&&E��I!���8��� N��ďS������ۇ�J�ŧ����^f4U��א"��S��4Lh���>�Ӑ�	>�}���>)|P��ч���^]{} �_G;@���^||H��}>�i�I���~����+rU���a��[H$H�)h�N� �8�8���IpH`qH�C�!K��$�8���-�}���n��[�J�;�*\�ʣ��͟������$Q%�����x%�+��+	^U��+	^YT^)�j��4^���/N��/n�䇼]޺�$���rVL�+��4��p�l!{d��1��?u��i�p��1;Oݑ�x��W��XI�+�!Vb�d��(���=(����X���'S�F���X�A9m���b���X=��t�X-��>��j�r����RVH��m/�jvŞ'���u٨�l� ��ג0I$A�OHH�B�򨲂��\����\��x.(p�@�rA���.\��j�������z����M8����K=����+�ne���`e�4��m��6���S��0�3�������is��0s���6�AyA��<�(BEs��ٓN0��yD�C�}�\�e�o;.|�+��W �l||����W���=HY|%���W�|||%���w(�
��J<_��,	�
���� _1>�
�}�;�����i1'��Zܺ�n�d���[v��x�&� l�R���[*
��.x*i�44�	�IpM�sM�k�k
\��\S�ڐ�ߵbִ�p���nKk&���6[Fo5�+�P�+!j˽	\�� �1�\0� �9�
\�㹠��'edn�yI����Ny�4*<�BM�ٶ���zQM��~1�#���T(��wu#g�I�������VQ&����`��4If��4cC��qyZ� �zJC���8@�A� �8�$�kP�$D�$� �� 		4) �נ4) h�$�� 	) H�'h�W�O�\�.�|�~�^	)�ճQ�)f����_�d>���rU��j�!��k��BW�MQ��ti�E� �,"�$���4i6��>�zj2Y��)�k�/~�|R�၇��<xI,�����&�$)��#�IMf�d45o	�}SB��\���ẏ5<��k�l��^~��r�4�w�E�Ա�K'Ϙ
:�D�����ݪX�[�bt#�g�ä�}��S�/x|ot��Q��)�B��B*|
���P �9�(��)�@�N*
%Ph�Q(�B��B�*���	'�A���d*�P���^�6i.����������Ɍ��"�Zo��˕� ;�f�&�D��I2M|�|��D���c��'	>)D>)�?v�|R��N��8��?��g�ʿ �޺f�96;=��YByu�G8�U���j�L� �*��ӎ�B��J�WC"��+	^QT^���t^)��E��ӫ��W��:ys~�\���sBNn��S�.����En�پ!��B��Y����O�,F�8�1:'�s&�� ��8�}��I9sE-��˒�銻�-�Ϳ�ߴ�H=��PVose�ת���}�����KN(�*�U6W�8:�xF�y��3��3�=1F�L�g�g<{b��I�UW�z����w�↼q���qX���62S���i>m�q��3��I�O����U���<O���q'�ل%�&C�/P.Z����rp�[dM���k����x��cF�??�Q��a��E�~��p��#�G_���c�"��ʗ0�4�qvx���ҍ�i�:{r�i��FDS��.������\殺���^���@Z�̣k��֒���0��"���/�/A���9c�"�����侜��bZTE���Ц�/P��J��߇�r(c|z��~J���I��?�y8ZJ��~A"�4��#x���6�Hc@EC��X �??��,d1|d	 ��!K YY�:`bHE� ��Xdͮ�y�4��u�u�TF�q��B�+��&�yu}׺}��>=�7���3I�Gd�R���|�i��ZG�]�Ӥm6@�$�&q$=��;b��GG8�v:�D���I�z��.��ȫ�n��j_��8r��#
���A)r�nݔ�Ϋ�����@��K�

�ɶ���_�x�~EL�0{M�*�/���&}���r�W�ܕK�	�Ws��r�^�ț�,w�*�֮�Vi�>T�
�x*���ƀ7��7�1Լ1�͠捃�����轴�:�)���I��a����U�����f�>��;�ҵ4���`�KsX�C�0��F3��T�IE�@�BPi�9��t��#'Od�RZ�e��#�'U�j-���h����%������r�A?�*������&�Wŀ��K��
�pt@�pĀ#��#�\�p$Qp$��"��#��8j�D��[�@J��{�ϊ�]#e^/�jK򂜝�������k�N5ҟ t����ߧ��Z��>�����֬)V���N���D�%G���)�1X1����a@�EAr(
r��UR_ꈀ�h�@���i�@CA� r(r�c�sr��b���kd,����lS�{7�ԜIl�3b�өFJէf�LWh<k_�]^��:''W��l�(��v���H��'��:��o�F �  �(
���Q�� -�� �����A�<��ñ5
����K@@΀
�+��sŪ�s]�nF����NY���e����r��Dv�Tk�`_*S��¨�b�L/̨^0����/�^p�B��^������<�߾�Ӣ�9]�o���.��?J�F�L�0��?㊱�"��p���D��,�O�|~������5DZh����$�k������-]��d�3W:��ߖ�-I�\�d�bݒ�H�oD2`k��L��������U��ZL���* ��s\��S+���N����sͱ�w[LwSh8����%�t�eq���=%��c�U��!�&�DY���.i�$P�-�y^-W���CU��Un��6��<�yt�Fa��'�42 �`"�qq���h&#�q1q|���|��#G죀�k1�\#�a����h&#N qbt�ҕ~�4kZ����Z��{���'G�f�W�ͱ�R��+�ʫ�*4"�� �4*�x�>w�V�e����T;kq���Oe��+�!Z��A�JM�
��kQP��L�n��T������)�h�h��ѣ���CtM��b@��B�$�őŀ(��(D,D	 ��LD� ����@�������k�����m����WUK����颺!�׳Ţ$���,��7���5��q}���i�5g�� jl����e�j{Y�B�~=Q�f��À(��(D",	Q�R-<���(D1$D	 �`#J Q�KB� ��	I�@OLԫ�k%!���)jRX?�^/�*���@�4Ǟ.Cf����:���%ʹo˸g��u���
��n��GW�/^���/�
t�`�@�|��P`��ŀB�8�fcdu�W�P6�< ��1 � (P ��a#* >
P�c�  6*
P��Px]/�JG����iKF�}lڰu��Sl-��[����M��͂�cJb������D�g�[�!mJ:&�A��\���k�Z6�����ܿ���\�=����ʓ�%��K�nWa�"�����Qs�[%+f+X)�[V�r�<�ne�|8�	�, �r� u�&u������L��_!��/ܺ�?[�YT�M^���O�ͧ�r(��m�'�w%���&^*SXxMf��I"a3�¸�9�P|\q\��\���a�%&�c��[T�	pL���O�u�n	�t��zu�nvN��1���J|s�����R�r��96cz��IJ9ܑ8�a����ww8�cq�#���('uGw|I
w���-T[�q����晕�kگ��K^-=-S"��v�`^����S!@E�����-q�Z�s��r�/�Mz�n�����Fi���&}i1ϗmw����G����Y���D�埌P��X�XgW}�D���#i�FR(��th�1ŀ)��)LQ<L1`��aJ SC���)L1\L	`��aJ S65S�?��N.ߐSr�뻓����T%Y�b��}S�S�N�T�P>{�ĨiM�%6G:�S�{��	\dh�7�<H��L�=���b"�H�(���{������i^ڼ��ց������on�}�bN�#gY�
�>+kK@�L�N\K���	Y����|���cE�A4�X�`!�	����!b�hp����L�x:(m4DC����Q�q�X�+jҜ!U�=Oq�|Y�䶹+��{��%g�u�|>��D>=���i���&�tH���q?˺�C�n�{i#(��Iz�"$I<$I��1$$1 ɢ!�I
IHRxH Ic�d$�UU|&gn~]G6���,��ٶ+K�\���|�$Ŝ�f9����-�风
F�Ќ
�B'���}�%�k]�b9kokL��T���jV
o��U�Z׊>���>���곧`���	�jx�?��;��cMQ���v[����	��<kzCn��⥎l��M�T>~��� �g|ė��/��Z|��_�3��+PǗ���0d�_�3��+Q�W@|�(������i��<c��8��j�ʗ���b�)'�?~����� կ�/y��|[������ѥZSMuܬ�����6<�#Zסg7[�31r�;�h
�-��L(a���?�_PmB��x�=fsUy�`w�S0Jh(�� �E3�A�f���9�';���8.�����K55���,�<f�=��t�AO�x������]�:�}p��NY�����;�0~Q\~1��c��|��!���7� ��]�u�3p�"�\38]y� �"��{��!�}�D�e&MhqL�d������UQ����>p�R�+������LR�a���w����Α�����OAZu,�C�X�Pw��:�XT�5�w�5$�}���lٝ2�b� ���ە-�&IT1�J��W�W�R���˫�W^ߊ��J3�hMfm�`���7��j-H���_��{�L	a������TBL�WH��p��� G�
	���.��l���.o]^���|9+��e���H;��C�4�V=-&jE� 1�*i����2ac�*b+�!Vb�1ĊA��,j%Vb�崱�+�!Vb�d��(��=(����XY��'"��K����*�?fsw=k��U
Re��~oZ]�Y�g�r���ץ�CtM��b�E��2��Ő�%�/9�_Ŕ�7���S���eS�V�Mۗz����T���ʌ=HY����꽻�p�T�D�W�̴~��&pu�xZ�G|{���0�� �Rc�]�n)!?~׉�۲#
`��A�/|R�_��q�e�/_���倯E�/|R�_�������������_H��'(��U4��#�1>?�yz&��O�f�鴘�s^-n�|7	����vga�]F�9�(a"�R9@�$�4�Y|�1pM�s-܁	��sM�kz�¾����̙T>/^�i^^�>ъЃ�W��|WB�I:$0pA���x.pp����x.p��� ���]�]�%!��o�/�K泜(5$�� ��t{!�X�K���3S���3�_��0���h��e��R�}]L�AqK����a·y���"	1 H�!�AAh@��A� ��dq$� ���Y^�?�/��lQ��ֻ��$�oEeT�R->׿��|Z�_����������k�\�k��B�[B8�-�k�/~٬"x�}���]�$����~I�t�X�ɷ��B�"�Ф��Ā&��&4QD4q�i�|��&4i<4q�I�I MMA���d4	���I M}��4]�j='�7w=s��$����j�b���r��v�b1ow�ϔj-2�Ke#JS��5�l��_~�]�r�4��<Y�-4B���M���Z!խ�+���PO����(�)d@�w��D2���P �
�(��)@�w��D
���Ea��o��O�?jm����!�V��Ǩ��v�t%_��6~�N/��Ĥ�[�$��p��u��'>1D>	�?v�|�����{�������۫�     