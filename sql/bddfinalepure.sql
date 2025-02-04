PGDMP                          {           ptc    15.2    15.2     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32890    ptc    DATABASE     v   CREATE DATABASE ptc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE ptc;
                postgres    false            �            1259    32891    image    TABLE     �   CREATE TABLE public.image (
    id_image integer NOT NULL,
    image_name character varying(255) NOT NULL,
    image_url character varying(255)
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    32894    image_id_image_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_image_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.image_id_image_seq;
       public          postgres    false    214                       0    0    image_id_image_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.image_id_image_seq OWNED BY public.image.id_image;
          public          postgres    false    215            �            1259    32895    list_of_step    TABLE     �  CREATE TABLE public.list_of_step (
    id_list_of_step integer NOT NULL,
    id_image smallint NOT NULL,
    distance_step double precision NOT NULL,
    angle_step double precision NOT NULL,
    index_step smallint NOT NULL,
    name_step character varying(255) NOT NULL,
    url_step character varying(255),
    CONSTRAINT list_of_step_angle_step_check CHECK ((angle_step < (3.14)::double precision)),
    CONSTRAINT list_of_step_distance_step_check CHECK ((distance_step >= (0)::double precision))
);
     DROP TABLE public.list_of_step;
       public         heap    postgres    false            �            1259    32902     list_of_step_id_list_of_step_seq    SEQUENCE     �   CREATE SEQUENCE public.list_of_step_id_list_of_step_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.list_of_step_id_list_of_step_seq;
       public          postgres    false    216                       0    0     list_of_step_id_list_of_step_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.list_of_step_id_list_of_step_seq OWNED BY public.list_of_step.id_list_of_step;
          public          postgres    false    217            j           2604    32903    image id_image    DEFAULT     p   ALTER TABLE ONLY public.image ALTER COLUMN id_image SET DEFAULT nextval('public.image_id_image_seq'::regclass);
 =   ALTER TABLE public.image ALTER COLUMN id_image DROP DEFAULT;
       public          postgres    false    215    214            k           2604    32904    list_of_step id_list_of_step    DEFAULT     �   ALTER TABLE ONLY public.list_of_step ALTER COLUMN id_list_of_step SET DEFAULT nextval('public.list_of_step_id_list_of_step_seq'::regclass);
 K   ALTER TABLE public.list_of_step ALTER COLUMN id_list_of_step DROP DEFAULT;
       public          postgres    false    217    216                      0    32891    image 
   TABLE DATA           @   COPY public.image (id_image, image_name, image_url) FROM stdin;
    public          postgres    false    214   h                 0    32895    list_of_step 
   TABLE DATA           }   COPY public.list_of_step (id_list_of_step, id_image, distance_step, angle_step, index_step, name_step, url_step) FROM stdin;
    public          postgres    false    216                     0    0    image_id_image_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.image_id_image_seq', 33, true);
          public          postgres    false    215                       0    0     list_of_step_id_list_of_step_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.list_of_step_id_list_of_step_seq', 93, true);
          public          postgres    false    217            o           2606    32906    image image_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id_image);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    214            q           2606    32908    list_of_step list_of_step_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.list_of_step
    ADD CONSTRAINT list_of_step_pkey PRIMARY KEY (id_list_of_step);
 H   ALTER TABLE ONLY public.list_of_step DROP CONSTRAINT list_of_step_pkey;
       public            postgres    false    216            s           2606    32910    list_of_step uc_list_of_step 
   CONSTRAINT     g   ALTER TABLE ONLY public.list_of_step
    ADD CONSTRAINT uc_list_of_step UNIQUE (index_step, id_image);
 F   ALTER TABLE ONLY public.list_of_step DROP CONSTRAINT uc_list_of_step;
       public            postgres    false    216    216            t           2606    32911     list_of_step fk_list_of_step_mgr    FK CONSTRAINT     �   ALTER TABLE ONLY public.list_of_step
    ADD CONSTRAINT fk_list_of_step_mgr FOREIGN KEY (id_image) REFERENCES public.image(id_image);
 J   ALTER TABLE ONLY public.list_of_step DROP CONSTRAINT fk_list_of_step_mgr;
       public          postgres    false    3183    216    214               �   x�����0F������f�\�$2���2f(�`1����@�%���ůY���;WAqzqta�O�i@#�㞻����jAO$+N*a_ý��(B-��+ Fo�o���V�!��q�T�L$����&H���ܮt�'I�<���~�&��K�NܹVJ=Y���         �   x�u�A!���0F@p�DO0�ޡ�O�!v�0;�D����Һ	[�`|p���P�UC���aO���=b~G�a�/�E�z��Pߪh�@����c����ދ{�|���řb�^��i�;�C�d"���Rc��5�P�i�~�F���Fs_��]����=r��Ke�     