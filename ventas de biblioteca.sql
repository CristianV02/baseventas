PGDMP         0                {            libros    15.2    15.2 5    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    24591    libros    DATABASE     y   CREATE DATABASE libros WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE libros;
                postgres    false                        2615    24593    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            -           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    7            �            1259    24595    books    TABLE     i  CREATE TABLE public.books (
    idbook integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250),
    descripcion text,
    price double precision NOT NULL,
    cover_path character varying(250),
    file_path character varying(250),
    created_ad timestamp with time zone NOT NULL,
    uptade_at timestamp with time zone
);
    DROP TABLE public.books;
       public         heap    postgres    false    7            �            1259    24594    books_idbook_seq    SEQUENCE     �   CREATE SEQUENCE public.books_idbook_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.books_idbook_seq;
       public          postgres    false    217    7            .           0    0    books_idbook_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.books_idbook_seq OWNED BY public.books.idbook;
          public          postgres    false    216            �            1259    24726 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer NOT NULL,
    orden_id integer NOT NULL,
    price double precision NOT NULL,
    downs_ava integer NOT NULL
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false    7            �            1259    24723    sales_item_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sales_item_book_id_seq;
       public          postgres    false    7    227            /           0    0    sales_item_book_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sales_item_book_id_seq OWNED BY public.sales_item.book_id;
          public          postgres    false    224            �            1259    24725    sales_item_downs_ava_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_downs_ava_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.sales_item_downs_ava_seq;
       public          postgres    false    7    227            0           0    0    sales_item_downs_ava_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.sales_item_downs_ava_seq OWNED BY public.sales_item.downs_ava;
          public          postgres    false    226            �            1259    24722    sales_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sales_item_id_seq;
       public          postgres    false    7    227            1           0    0    sales_item_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sales_item_id_seq OWNED BY public.sales_item.id;
          public          postgres    false    223            �            1259    24724    sales_item_orden_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_orden_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sales_item_orden_id_seq;
       public          postgres    false    7    227            2           0    0    sales_item_orden_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.sales_item_orden_id_seq OWNED BY public.sales_item.orden_id;
          public          postgres    false    225            �            1259    24674    sales_orden    TABLE     �   CREATE TABLE public.sales_orden (
    idorden integer NOT NULL,
    customer_id integer NOT NULL,
    total double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    payment_status character varying NOT NULL
);
    DROP TABLE public.sales_orden;
       public         heap    postgres    false    7            �            1259    24673    sales_orden_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_orden_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.sales_orden_customer_id_seq;
       public          postgres    false    7    222            3           0    0    sales_orden_customer_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.sales_orden_customer_id_seq OWNED BY public.sales_orden.customer_id;
          public          postgres    false    221            �            1259    24672    sales_orden_idorden_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_orden_idorden_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sales_orden_idorden_seq;
       public          postgres    false    222    7            4           0    0    sales_orden_idorden_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.sales_orden_idorden_seq OWNED BY public.sales_orden.idorden;
          public          postgres    false    220            �            1259    24604    usuario    TABLE     �  CREATE TABLE public.usuario (
    id_user integer NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    fullname character varying(100) NOT NULL,
    email character varying(45) NOT NULL,
    "contraseña" character varying(250) NOT NULL,
    created_at timestamp with time zone,
    uptaded_at timestamp with time zone,
    rol character varying(100) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    7            �            1259    24603    usuario_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuario_id_user_seq;
       public          postgres    false    219    7            5           0    0    usuario_id_user_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuario_id_user_seq OWNED BY public.usuario.id_user;
          public          postgres    false    218            z           2604    24598    books idbook    DEFAULT     l   ALTER TABLE ONLY public.books ALTER COLUMN idbook SET DEFAULT nextval('public.books_idbook_seq'::regclass);
 ;   ALTER TABLE public.books ALTER COLUMN idbook DROP DEFAULT;
       public          postgres    false    217    216    217            ~           2604    24729    sales_item id    DEFAULT     n   ALTER TABLE ONLY public.sales_item ALTER COLUMN id SET DEFAULT nextval('public.sales_item_id_seq'::regclass);
 <   ALTER TABLE public.sales_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    227    227                       2604    24730    sales_item book_id    DEFAULT     x   ALTER TABLE ONLY public.sales_item ALTER COLUMN book_id SET DEFAULT nextval('public.sales_item_book_id_seq'::regclass);
 A   ALTER TABLE public.sales_item ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    224    227    227            �           2604    24731    sales_item orden_id    DEFAULT     z   ALTER TABLE ONLY public.sales_item ALTER COLUMN orden_id SET DEFAULT nextval('public.sales_item_orden_id_seq'::regclass);
 B   ALTER TABLE public.sales_item ALTER COLUMN orden_id DROP DEFAULT;
       public          postgres    false    225    227    227            �           2604    24732    sales_item downs_ava    DEFAULT     |   ALTER TABLE ONLY public.sales_item ALTER COLUMN downs_ava SET DEFAULT nextval('public.sales_item_downs_ava_seq'::regclass);
 C   ALTER TABLE public.sales_item ALTER COLUMN downs_ava DROP DEFAULT;
       public          postgres    false    226    227    227            |           2604    24677    sales_orden idorden    DEFAULT     z   ALTER TABLE ONLY public.sales_orden ALTER COLUMN idorden SET DEFAULT nextval('public.sales_orden_idorden_seq'::regclass);
 B   ALTER TABLE public.sales_orden ALTER COLUMN idorden DROP DEFAULT;
       public          postgres    false    220    222    222            }           2604    24678    sales_orden customer_id    DEFAULT     �   ALTER TABLE ONLY public.sales_orden ALTER COLUMN customer_id SET DEFAULT nextval('public.sales_orden_customer_id_seq'::regclass);
 F   ALTER TABLE public.sales_orden ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    222    221    222            {           2604    24607    usuario id_user    DEFAULT     r   ALTER TABLE ONLY public.usuario ALTER COLUMN id_user SET DEFAULT nextval('public.usuario_id_user_seq'::regclass);
 >   ALTER TABLE public.usuario ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    219    218    219                      0    24595    books 
   TABLE DATA           v   COPY public.books (idbook, title, slug, descripcion, price, cover_path, file_path, created_ad, uptade_at) FROM stdin;
    public          postgres    false    217   9=       &          0    24726 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, orden_id, price, downs_ava) FROM stdin;
    public          postgres    false    227   >       !          0    24674    sales_orden 
   TABLE DATA           ^   COPY public.sales_orden (idorden, customer_id, total, created_at, payment_status) FROM stdin;
    public          postgres    false    222   f>                 0    24604    usuario 
   TABLE DATA           |   COPY public.usuario (id_user, firstname, lastname, fullname, email, "contraseña", created_at, uptaded_at, rol) FROM stdin;
    public          postgres    false    219   �>       6           0    0    books_idbook_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.books_idbook_seq', 3, true);
          public          postgres    false    216            7           0    0    sales_item_book_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sales_item_book_id_seq', 1, false);
          public          postgres    false    224            8           0    0    sales_item_downs_ava_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sales_item_downs_ava_seq', 1, true);
          public          postgres    false    226            9           0    0    sales_item_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sales_item_id_seq', 5, true);
          public          postgres    false    223            :           0    0    sales_item_orden_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sales_item_orden_id_seq', 1, false);
          public          postgres    false    225            ;           0    0    sales_orden_customer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.sales_orden_customer_id_seq', 6, true);
          public          postgres    false    221            <           0    0    sales_orden_idorden_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sales_orden_idorden_seq', 6, true);
          public          postgres    false    220            =           0    0    usuario_id_user_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuario_id_user_seq', 2, true);
          public          postgres    false    218            �           2606    24602    books books_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (idbook);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    217            �           2606    24734    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    227            �           2606    24680    sales_orden sales_orden_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.sales_orden
    ADD CONSTRAINT sales_orden_pkey PRIMARY KEY (idorden);
 F   ALTER TABLE ONLY public.sales_orden DROP CONSTRAINT sales_orden_pkey;
       public            postgres    false    222            �           2606    24609    usuario usuario_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_user);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    219            �           2606    24735 "   sales_item sales_item_book_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(idbook);
 L   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_book_id_fkey;
       public          postgres    false    217    227    3203            �           2606    24740 #   sales_item sales_item_orden_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_orden_id_fkey FOREIGN KEY (orden_id) REFERENCES public.sales_orden(idorden);
 M   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_orden_id_fkey;
       public          postgres    false    3207    227    222            �           2606    24681 (   sales_orden sales_orden_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_orden
    ADD CONSTRAINT sales_orden_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.usuario(id_user);
 R   ALTER TABLE ONLY public.sales_orden DROP CONSTRAINT sales_orden_customer_id_fkey;
       public          postgres    false    219    222    3205               �   x�u�mj�0�+�����<��'�9���X����dZH�`�+=z�O8r�{vpJ���Ǳ��?ֽ���8�?4�zMDp�O�%j7�7��tGԑ*ϒT-8���$�ޫc\��@?�c��+^��X�=vN�����Ng���N��Y��&�k�į�K ���K�C�^/��$o8�AҊ��4}��S��g��Wr�"~���z 3ۅ      &   ;   x�%���@B�3�Q�T��ױ�p{��D#�!��P���_�?�]:�)�^V�<$/ɩA      !   x   x�}�A� E����p6�#�q-�P�HC�4)C��M��:(�0T;ҍ���q�^���;V?��H!�������{�!�,&�ͳ�?��X�'/�鹣?��E�0�e��k5��&"'��0�         	  x�]��r� ������5FN}��s�*��A�h3�>}�	�8��w؏�Ul�؅�}�ʹvb׽���ԅ�IUV5�mH��@�z����;�21pIEtdM4�k#���Y&6�TT.Z�V�hÉm�#��T9��#_j�չ�S �B҈V@�U��;�2K�cx��`��戳��R�!�&�����#��Y��^"6�����%�p����C��K�®@|��U���tY�$u	���nXeg�;�@'V����s��%�>     