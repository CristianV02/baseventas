PGDMP         +                {            ZOO    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    ZOO    DATABASE     {   CREATE DATABASE "ZOO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "ZOO";
                postgres    false            �            1259    16399    zoologico_mascotas    TABLE     8  CREATE TABLE public.zoologico_mascotas (
    "ID" integer NOT NULL,
    "Nombre" character varying(20) NOT NULL,
    "Propietario" character varying(60) NOT NULL,
    "Especie" character varying(20) NOT NULL,
    "Sexo" character(1) NOT NULL,
    "Nacimiento" date NOT NULL,
    "Fallecimiento" date NOT NULL
);
 &   DROP TABLE public.zoologico_mascotas;
       public         heap    postgres    false            �          0    16399    zoologico_mascotas 
   TABLE DATA           }   COPY public.zoologico_mascotas ("ID", "Nombre", "Propietario", "Especie", "Sexo", "Nacimiento", "Fallecimiento") FROM stdin;
    public          postgres    false    214   �       d           2606    16403     zoologico_mascotas Mascotas_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.zoologico_mascotas
    ADD CONSTRAINT "Mascotas_pkey" PRIMARY KEY ("ID");
 L   ALTER TABLE ONLY public.zoologico_mascotas DROP CONSTRAINT "Mascotas_pkey";
       public            postgres    false    214            �   �  x�5R�n�0</����u4�A#�}��b�
W����w�T����yP�+.�L���﫟<C������aW���l�7��ۻ��8arpf
��e�3
5����9�q���ez�Hz�@�&g(8�8�B�/?!|���aWҴ-��e���E���Iw7�����ʖ�$]U����VK�����l∙��Tmq��N�J�p���	��mf^L0EM/yA��JrM�w$��>�5"C�a����R�E{�s�gFz�@^��3&�y�Ι��g�#�Z�qI�F��fA��}�𿇶�3ۡ���+~��!�Wg��V�h�n��"%p��0���ܢwt#N&m�:f�*ʫ&KB�\R�n1hq��b^�g�m1B��F膊�U��n�~������e��N��^r�70Q��5ZVv�d�\-�*���|H��     