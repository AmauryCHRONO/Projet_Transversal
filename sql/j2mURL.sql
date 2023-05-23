PGDMP                         {           ptc    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24931    ptc    DATABASE     v   CREATE DATABASE ptc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE ptc;
                postgres    false            �            1259    24932    image    TABLE     �   CREATE TABLE public.image (
    id_image integer NOT NULL,
    image_name character varying(20) NOT NULL,
    image_url character varying(255)
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    24935    image_id_image_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_image_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.image_id_image_seq;
       public          postgres    false    214                       0    0    image_id_image_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.image_id_image_seq OWNED BY public.image.id_image;
          public          postgres    false    215            �            1259    24936    list_of_step    TABLE     �  CREATE TABLE public.list_of_step (
    id_list_of_step integer NOT NULL,
    id_image smallint NOT NULL,
    distance_step double precision NOT NULL,
    angle_step double precision NOT NULL,
    index_step smallint NOT NULL,
    name_step character varying(20) NOT NULL,
    CONSTRAINT list_of_step_angle_step_check CHECK ((angle_step < (3.14)::double precision)),
    CONSTRAINT list_of_step_angle_step_check1 CHECK ((angle_step >= (0)::double precision)),
    CONSTRAINT list_of_step_distance_step_check CHECK ((distance_step >= (0)::double precision)),
    CONSTRAINT list_of_step_distance_step_check1 CHECK ((distance_step <= (99)::double precision))
);
     DROP TABLE public.list_of_step;
       public         heap    postgres    false            �            1259    24943     list_of_step_id_list_of_step_seq    SEQUENCE     �   CREATE SEQUENCE public.list_of_step_id_list_of_step_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.list_of_step_id_list_of_step_seq;
       public          postgres    false    216                       0    0     list_of_step_id_list_of_step_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.list_of_step_id_list_of_step_seq OWNED BY public.list_of_step.id_list_of_step;
          public          postgres    false    217            j           2604    24944    image id_image    DEFAULT     p   ALTER TABLE ONLY public.image ALTER COLUMN id_image SET DEFAULT nextval('public.image_id_image_seq'::regclass);
 =   ALTER TABLE public.image ALTER COLUMN id_image DROP DEFAULT;
       public          postgres    false    215    214            k           2604    24945    list_of_step id_list_of_step    DEFAULT     �   ALTER TABLE ONLY public.list_of_step ALTER COLUMN id_list_of_step SET DEFAULT nextval('public.list_of_step_id_list_of_step_seq'::regclass);
 K   ALTER TABLE public.list_of_step ALTER COLUMN id_list_of_step DROP DEFAULT;
       public          postgres    false    217    216                      0    24932    image 
   TABLE DATA           @   COPY public.image (id_image, image_name, image_url) FROM stdin;
    public          postgres    false    214   �                 0    24936    list_of_step 
   TABLE DATA           s   COPY public.list_of_step (id_list_of_step, id_image, distance_step, angle_step, index_step, name_step) FROM stdin;
    public          postgres    false    216   I                  0    0    image_id_image_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.image_id_image_seq', 12, true);
          public          postgres    false    215                       0    0     list_of_step_id_list_of_step_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.list_of_step_id_list_of_step_seq', 39, true);
          public          postgres    false    217            q           2606    24947    image image_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id_image);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    214            s           2606    24949    list_of_step list_of_step_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.list_of_step
    ADD CONSTRAINT list_of_step_pkey PRIMARY KEY (id_list_of_step);
 H   ALTER TABLE ONLY public.list_of_step DROP CONSTRAINT list_of_step_pkey;
       public            postgres    false    216            u           2606    24951    list_of_step uc_list_of_step 
   CONSTRAINT     g   ALTER TABLE ONLY public.list_of_step
    ADD CONSTRAINT uc_list_of_step UNIQUE (index_step, id_image);
 F   ALTER TABLE ONLY public.list_of_step DROP CONSTRAINT uc_list_of_step;
       public            postgres    false    216    216            v           2606    24952     list_of_step fk_list_of_step_mgr    FK CONSTRAINT     �   ALTER TABLE ONLY public.list_of_step
    ADD CONSTRAINT fk_list_of_step_mgr FOREIGN KEY (id_image) REFERENCES public.image(id_image);
 J   ALTER TABLE ONLY public.list_of_step DROP CONSTRAINT fk_list_of_step_mgr;
       public          postgres    false    216    214    3185               A  x���An�0E��)ذ�'N�@��A��g�pl�8͙���XBl�`3�Ȟ��Y�d�/��o� :o��yOj�&�]�0t~�@��q���^��X���H��Zj�A�~�L�,���j�ע�x����jZ.��d��jDLaP�s%��i��2�)Nb����Q<*�r[�穉h�A���(��U��ϭ����Y�n|`:H[�z��h')2��4�t��}�I��-�&P#5�5����J�k�N Â�_��h�&[-��?�u�d��{�� ���1:�6��0_�D���e�'����Adu��=���,�~ w�         �   x�E�K!е9̈$|&w�w���	0�
�K �V�8�E���R��yi߁��ec�3蘻2O�]y�	ߕ7�!�������JZRȖ����ovL6Ғ�l�Qvg�ؽ��t���~�R��
1l     