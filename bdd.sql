PGDMP                 
        w        	   portfolio    11.1    11.1 1    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            k           1262    16536 	   portfolio    DATABASE     �   CREATE DATABASE portfolio WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE portfolio;
             postgres    false                        2615    16650    mon_schemas    SCHEMA        CREATE SCHEMA mon_schemas;
    DROP SCHEMA mon_schemas;
             postgres    false            �            1259    16823    apropos    TABLE     t   CREATE TABLE mon_schemas.apropos (
    id_apropos character varying(2),
    description character varying(10000)
);
     DROP TABLE mon_schemas.apropos;
       mon_schemas         postgres    false    6            �            1259    16829    competenceclef    TABLE     �   CREATE TABLE mon_schemas.competenceclef (
    competence1 character varying(10000),
    competence2 character varying(10000),
    competence3 character varying(10000),
    id character varying
);
 '   DROP TABLE mon_schemas.competenceclef;
       mon_schemas         postgres    false    6            �            1259    16835    contact    TABLE     �   CREATE TABLE mon_schemas.contact (
    message character varying(10000),
    email character varying(10000),
    id_contact character varying(2),
    nom character varying(10000),
    prenom character varying(10000)
);
     DROP TABLE mon_schemas.contact;
       mon_schemas         postgres    false    6            �            1259    16841 
   experience    TABLE     �   CREATE TABLE mon_schemas.experience (
    id_experiences character varying(2),
    experience3 character varying(10000),
    experience1 character varying(10000),
    experience2 character varying(10000)
);
 #   DROP TABLE mon_schemas.experience;
       mon_schemas         postgres    false    6            �            1259    16844 	   formation    TABLE     �   CREATE TABLE mon_schemas.formation (
    id_formation character varying(2),
    formation1 character varying(10000),
    formation2 character varying(10000),
    formation3 character varying(10000)
);
 "   DROP TABLE mon_schemas.formation;
       mon_schemas         postgres    false    6            �            1259    16862    langue    TABLE     �   CREATE TABLE mon_schemas.langue (
    langue1 character varying(10000),
    langue2 character varying(10000),
    langue3 character varying(10000),
    id character varying(2)
);
    DROP TABLE mon_schemas.langue;
       mon_schemas         postgres    false    6            �            1259    16847    loisirs    TABLE     �   CREATE TABLE mon_schemas.loisirs (
    id_loisirs character varying(2),
    loisir1 character varying(10000),
    loisir2 character varying(10000),
    loisir3 character varying(10000)
);
     DROP TABLE mon_schemas.loisirs;
       mon_schemas         postgres    false    6            �            1259    16850    projet    TABLE     �   CREATE TABLE mon_schemas.projet (
    id character varying(2),
    projet1 character varying(10000),
    projet2 character varying(10000),
    projet3 character(10000)
);
    DROP TABLE mon_schemas.projet;
       mon_schemas         postgres    false    6            �            1259    16853    techno    TABLE     �   CREATE TABLE mon_schemas.techno (
    id_techno character varying(2),
    techno1 character varying(10000),
    techno2 character varying(10000),
    techno3 character varying(10000)
);
    DROP TABLE mon_schemas.techno;
       mon_schemas         postgres    false    6            �            1259    16605    apropos    TABLE     �   CREATE TABLE public.apropos (
    id_apropos character varying(2),
    nom_apropos character varying(50),
    prenom_apropos character varying(50),
    photo_apropos boolean,
    description character varying(1000)
);
    DROP TABLE public.apropos;
       public         postgres    false            �            1259    16599    competenceclef    TABLE     �   CREATE TABLE public.competenceclef (
    competence1 character varying(2),
    competence2 character varying(50),
    competence3 character varying(50),
    id character varying
);
 "   DROP TABLE public.competenceclef;
       public         postgres    false            �            1259    16562    contact    TABLE     �   CREATE TABLE public.contact (
    id_contact integer NOT NULL,
    prenom character(100),
    nom character(200),
    message character varying(1000),
    email character varying(100)
);
    DROP TABLE public.contact;
       public         postgres    false            �            1259    16765    description    TABLE     %   CREATE TABLE public.description (
);
    DROP TABLE public.description;
       public         postgres    false            �            1259    16602 
   experience    TABLE     �   CREATE TABLE public.experience (
    id_experiences character varying(2),
    experience1 date,
    experience2 date,
    experience3 character varying(100)
);
    DROP TABLE public.experience;
       public         postgres    false            �            1259    16590 	   formation    TABLE     �   CREATE TABLE public.formation (
    id_formation character varying(2),
    formation1 character varying(50),
    formation2 character varying(100),
    formation3 character varying(200)
);
    DROP TABLE public.formation;
       public         postgres    false            �            1259    16568 
   formulaire    TABLE       CREATE TABLE public.formulaire (
    id_formulaire character varying(2) NOT NULL,
    nom_formulaie character varying(50),
    prenom_formulaire character varying(70),
    email_formulaire character varying(80),
    message_formulaire character varying(150)
);
    DROP TABLE public.formulaire;
       public         postgres    false            �            1259    16581    loisirs    TABLE     �   CREATE TABLE public.loisirs (
    id_loisirs character varying(2),
    loisir1 character varying(100),
    loisir2 character varying(100),
    loisir3 character varying(100)
);
    DROP TABLE public.loisirs;
       public         postgres    false            �            1259    16543    projet    TABLE     �   CREATE TABLE public.projet (
    id character varying(2) NOT NULL,
    projet1 character(100),
    projet2 character varying(100),
    techno_id character(1),
    projet3 character(100)
);
    DROP TABLE public.projet;
       public         postgres    false            �            1259    16546    techno    TABLE     �   CREATE TABLE public.techno (
    id_techno character varying NOT NULL,
    techno1 character varying(100),
    techno2 character varying(100),
    techno3 character varying(100)
);
    DROP TABLE public.techno;
       public         postgres    false            ]          0    16823    apropos 
   TABLE DATA               ?   COPY mon_schemas.apropos (id_apropos, description) FROM stdin;
    mon_schemas       postgres    false    207   �4       ^          0    16829    competenceclef 
   TABLE DATA               X   COPY mon_schemas.competenceclef (competence1, competence2, competence3, id) FROM stdin;
    mon_schemas       postgres    false    208   �6       _          0    16835    contact 
   TABLE DATA               O   COPY mon_schemas.contact (message, email, id_contact, nom, prenom) FROM stdin;
    mon_schemas       postgres    false    209   7       `          0    16841 
   experience 
   TABLE DATA               `   COPY mon_schemas.experience (id_experiences, experience3, experience1, experience2) FROM stdin;
    mon_schemas       postgres    false    210   s7       a          0    16844 	   formation 
   TABLE DATA               Z   COPY mon_schemas.formation (id_formation, formation1, formation2, formation3) FROM stdin;
    mon_schemas       postgres    false    211   �8       e          0    16862    langue 
   TABLE DATA               D   COPY mon_schemas.langue (langue1, langue2, langue3, id) FROM stdin;
    mon_schemas       postgres    false    215   �9       b          0    16847    loisirs 
   TABLE DATA               M   COPY mon_schemas.loisirs (id_loisirs, loisir1, loisir2, loisir3) FROM stdin;
    mon_schemas       postgres    false    212   n:       c          0    16850    projet 
   TABLE DATA               D   COPY mon_schemas.projet (id, projet1, projet2, projet3) FROM stdin;
    mon_schemas       postgres    false    213   �:       d          0    16853    techno 
   TABLE DATA               K   COPY mon_schemas.techno (id_techno, techno1, techno2, techno3) FROM stdin;
    mon_schemas       postgres    false    214   =       [          0    16605    apropos 
   TABLE DATA               f   COPY public.apropos (id_apropos, nom_apropos, prenom_apropos, photo_apropos, description) FROM stdin;
    public       postgres    false    205   �=       Y          0    16599    competenceclef 
   TABLE DATA               S   COPY public.competenceclef (competence1, competence2, competence3, id) FROM stdin;
    public       postgres    false    203   �=       U          0    16562    contact 
   TABLE DATA               J   COPY public.contact (id_contact, prenom, nom, message, email) FROM stdin;
    public       postgres    false    199   �=       \          0    16765    description 
   TABLE DATA               %   COPY public.description  FROM stdin;
    public       postgres    false    206   �=       Z          0    16602 
   experience 
   TABLE DATA               [   COPY public.experience (id_experiences, experience1, experience2, experience3) FROM stdin;
    public       postgres    false    204   >       X          0    16590 	   formation 
   TABLE DATA               U   COPY public.formation (id_formation, formation1, formation2, formation3) FROM stdin;
    public       postgres    false    202   1>       V          0    16568 
   formulaire 
   TABLE DATA               {   COPY public.formulaire (id_formulaire, nom_formulaie, prenom_formulaire, email_formulaire, message_formulaire) FROM stdin;
    public       postgres    false    200   N>       W          0    16581    loisirs 
   TABLE DATA               H   COPY public.loisirs (id_loisirs, loisir1, loisir2, loisir3) FROM stdin;
    public       postgres    false    201   k>       S          0    16543    projet 
   TABLE DATA               J   COPY public.projet (id, projet1, projet2, techno_id, projet3) FROM stdin;
    public       postgres    false    197   �>       T          0    16546    techno 
   TABLE DATA               F   COPY public.techno (id_techno, techno1, techno2, techno3) FROM stdin;
    public       postgres    false    198   �>       �
           2606    16572    formulaire formulaire_clef 
   CONSTRAINT     c   ALTER TABLE ONLY public.formulaire
    ADD CONSTRAINT formulaire_clef PRIMARY KEY (id_formulaire);
 D   ALTER TABLE ONLY public.formulaire DROP CONSTRAINT formulaire_clef;
       public         postgres    false    200            �
           2606    16553    projet projet_clef 
   CONSTRAINT     P   ALTER TABLE ONLY public.projet
    ADD CONSTRAINT projet_clef PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.projet DROP CONSTRAINT projet_clef;
       public         postgres    false    197            �
           2606    16555    techno techno_clef 
   CONSTRAINT     W   ALTER TABLE ONLY public.techno
    ADD CONSTRAINT techno_clef PRIMARY KEY (id_techno);
 <   ALTER TABLE ONLY public.techno DROP CONSTRAINT techno_clef;
       public         postgres    false    198            �
           1259    16776    fki_formulaire_too_contact    INDEX     P   CREATE INDEX fki_formulaire_too_contact ON public.contact USING btree (prenom);
 .   DROP INDEX public.fki_formulaire_too_contact;
       public         postgres    false    199            �
           1259    16561    fki_techno_too_projet    INDEX     M   CREATE INDEX fki_techno_too_projet ON public.projet USING btree (techno_id);
 )   DROP INDEX public.fki_techno_too_projet;
       public         postgres    false    197            �
           2606    16556    projet techno_too_projet    FK CONSTRAINT     �   ALTER TABLE ONLY public.projet
    ADD CONSTRAINT techno_too_projet FOREIGN KEY (techno_id) REFERENCES public.techno(id_techno);
 B   ALTER TABLE ONLY public.projet DROP CONSTRAINT techno_too_projet;
       public       postgres    false    198    2773    197            ]   �  x�]S1��0��W,�Ic�p��1\������1���]��7���w�'yIv%;�υH�˙ٙu������]6�t��o��zS��;�Wz�۶�-����+P'�ޙ@k0�����f'��3v�>fx��G���<rGF���Y�r�d�ĥ�M����̹�*K��:�R�,JF�x�#koB`߬��z��#&����;����P��g�.|�Sp��P!x�^�dY���M�E+|y�^�~�>�T�R��+�܆�'���0�Kō%�����h��UR����s$� 
@�<���>,ͭyV��4�0�x�l��e��ERܹ���G�S�͹p �&=�`񿛃�z>㫂+��4���J�|���Q�1Lp�S��A��V��k� "H5���:uJ�^Ӝ��F���+�����;�૨�\�p8x�4�"�i�\'��2Pd�Y5��o�����w�%y�vN^�qi�0t����OYJ��<4˘o��v�6����dbq      ^   \   x�SP��;LS�E�����2Jl�����v�

�%�y��$�'��*8V��룠��LH��~�''g�W� F�.�      _   ]   x�+I-.�,�,�K����K,IuH�M���K���� .N377��r�����sl����	䔟��_Z������ t�Bi�B	1����� ��H�      `   "  x�]��J�@���S|�*�T=��@�
��B��˚L�J:�O@�ƣ>G_�I��v�3���c�l0��K�(|���M�|�|�.3���"���j�0�&��<-Α��c��۸�͸���9�'/v������<YƊ�aH��p��Ԫ��C�b�&�Q��KBh����&���a�<�bV܁	��n�s�5Bk�CcBK� ne�v�z/!��Ȅ5�+��o�(�-�	[�ŧ~�C��V��>��P�����*��:����MhCS���+��w�Vҽ��H����M:��8��_4���      a   :  x�}��N1���Sܝ�@ą�!$u�q�B��M.P�i���ƥ>/�e����i�{{z��t:�z�T���Քڞ�5��P.Ë�ke���ط���5: }�RI����LV����N��b�}�6��>����3�t�./��Pȕ�H�������{���B��'E9Au�����(���,�'Q?
�D�g2�R�K�D�#h��,Z2B*�JС]9[\�bR�O����z��.�֩w-�D�)���;��Q����Dm�E��'I���>i�Z�Ox�w���v*��k�u�m1m?�y�X��      e   o   x�SP� �;L�V��wxybf��UL�Ob^zi�BnbIjQ^jNN��MR���@�蘗��S�`��V)$e���ѡ�4171/d@�P��~�''g�W� W3/      b      x������ � �      c   t  x����N1�u�GlB%B
ݴh���Tj�
)g� ��؞@߆m^��b=��(����?J���右brܫ{=                  x����$埢�3*����VtM��Ӣe��/���1}
���{�=R1�Ϥǽʅ�1g����&�tj݌U�X��M�iFc�������ˤ��@f��S���T1Պ�\�U�Βj(��T���%�W!�R{���K)��҆�R;�jr�wM���v>c��m���=��t�S��Et]��6�ѐV�:)�����_�Q�����wo����X�o��A�	�G]�$���c��o-�V���Յo���E.��B��V����f��);�{�[��G����M��F��<!-2(�N��ߋ���bh���<�jn�75�<�r���cz�a�)%���~��K��v.=s�(k�-Ym��r��ŏ[ڥe>OǷJ��^��Խ�����Ό��iu��G������~w�6�U���&��d(+��Ɲ�H6])�K�C�I*�~R.?��3��;��7������.�C^#U����ܲ�1�&�m�*唗w\.ऻ� Y�̸������                 �y�Ov���O�ǉ|      d   �   x����,I-.�����).)��K�Sp�Q�I*�Sp�K/�I,�p�JS����)�I�
.��>T#�T���������b�;��f��C8A��I�EE��Ob^zbz��3�PY���a#������ �iE�      [      x������ � �      Y      x������ � �      U      x������ � �      \      x������ � �      Z      x������ � �      X      x������ � �      V      x������ � �      W      x������ � �      S      x������ � �      T      x������ � �     