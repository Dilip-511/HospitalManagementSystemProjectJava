PGDMP                         y            hospital    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24592    hospital    DATABASE     d   CREATE DATABASE hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE hospital;
                postgres    false            �            1259    24683    bill    TABLE       CREATE TABLE public.bill (
    rno integer NOT NULL,
    medical_charge integer NOT NULL,
    ward_charge integer NOT NULL,
    testing_charge integer NOT NULL,
    other_charge integer NOT NULL,
    total integer NOT NULL,
    pid integer NOT NULL,
    date text
);
    DROP TABLE public.bill;
       public         heap    postgres    false            �            1259    24667 
   diagonosis    TABLE     �   CREATE TABLE public.diagonosis (
    pid integer NOT NULL,
    symptoms text NOT NULL,
    doctor text NOT NULL,
    date text NOT NULL,
    ward text,
    type text
);
    DROP TABLE public.diagonosis;
       public         heap    postgres    false            �            1259    24607    patient    TABLE       CREATE TABLE public.patient (
    pid integer NOT NULL,
    name character varying(30) NOT NULL,
    mob numeric(10,0) NOT NULL,
    age numeric(3,0) NOT NULL,
    gender character varying(7) NOT NULL,
    blood text NOT NULL,
    address text NOT NULL,
    des text NOT NULL
);
    DROP TABLE public.patient;
       public         heap    postgres    false            �          0    24683    bill 
   TABLE DATA           p   COPY public.bill (rno, medical_charge, ward_charge, testing_charge, other_charge, total, pid, date) FROM stdin;
    public          postgres    false    202   G       �          0    24667 
   diagonosis 
   TABLE DATA           M   COPY public.diagonosis (pid, symptoms, doctor, date, ward, type) FROM stdin;
    public          postgres    false    201          �          0    24607    patient 
   TABLE DATA           S   COPY public.patient (pid, name, mob, age, gender, blood, address, des) FROM stdin;
    public          postgres    false    200   P       .           2606    24690    bill bill_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_pkey PRIMARY KEY (rno);
 8   ALTER TABLE ONLY public.bill DROP CONSTRAINT bill_pkey;
       public            postgres    false    202            ,           2606    24614    patient patient_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (pid);
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_pkey;
       public            postgres    false    200            /           2606    24673    diagonosis diagonosis_pid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.diagonosis
    ADD CONSTRAINT diagonosis_pid_fkey FOREIGN KEY (pid) REFERENCES public.patient(pid);
 H   ALTER TABLE ONLY public.diagonosis DROP CONSTRAINT diagonosis_pid_fkey;
       public          postgres    false    201    2860    200            �   �   x�e�;�0 �99EN��M��s�X�X��?N�ڔ�b�Ov�NvAh)����|��B�`��=9k��$d��R�Mr��I��Ef��D���9iNz��Y���9{�P\���E-���J�M��ku��Hj����4@*�v,-��;%�A7}^ͤ�T4��y;y��K�      �   <  x�m�QO�0��˯�0�-됾-ΩY�F���\�J�PL�%�{d�!Iy������b=>�1y@��c�������TE�����(���Ĺ�
�V��#�iJH�:����`�Z���a��0�{�F��S��O��C%B0��`�_rᙣ��K��[LDS�9s�߂_xB�y�]�r�w&���	g�f��֯] }EDj�Rr}�s�&��i-d��`�K�/.��,�ȵ��uбc�f��S�6��R7�1c��l>p�2׈TB.F�h����-�f�Cʅ���pf�ǘ1��1��
�����<�Y���      �   �   x�����0F�ۧ`71��q01Q\]�B�`)B��[T�`�:�{��r8R�W��8."�(��/$��m�L�nАf�R���iIz90���+꫺��e>е���{�B�12�7��j���0��D9���p\r�c��W�W��ڐ�2�@D1���7f|���ehĲ�9�l�^	���t�8IӠ�[E#�����˖1�H�j     