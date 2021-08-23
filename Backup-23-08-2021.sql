PGDMP     #    /                y            djangoPrueba    13.4    13.4 �    l           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            m           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            n           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            o           1262    16571    djangoPrueba    DATABASE     l   CREATE DATABASE "djangoPrueba" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE "djangoPrueba";
                postgres    false                        2615    16775 	   seguridad    SCHEMA        CREATE SCHEMA seguridad;
    DROP SCHEMA seguridad;
                postgres    false            �            1259    16985    departamento    TABLE     �   CREATE TABLE public.departamento (
    id integer NOT NULL,
    tipo character varying(50) NOT NULL,
    dependencia character varying(100),
    nombre character varying(150) NOT NULL,
    piso character varying(50) NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    16983    Departamento_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Departamento_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Departamento_id_seq";
       public          postgres    false    223            p           0    0    Departamento_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departamento_id_seq" OWNED BY public.departamento.id;
          public          postgres    false    222            �            1259    17012    equipo    TABLE     �   CREATE TABLE public.equipo (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    cod_cmei character varying(100) NOT NULL,
    enlace character varying(500) NOT NULL
);
    DROP TABLE public.equipo;
       public         heap    postgres    false            �            1259    17008    equipo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.equipo_id_seq;
       public          postgres    false    228            q           0    0    equipo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.equipo_id_seq OWNED BY public.equipo.id;
          public          postgres    false    226            �            1259    17010    equipo_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipo_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.equipo_usuario_id_seq;
       public          postgres    false    228            r           0    0    equipo_usuario_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.equipo_usuario_id_seq OWNED BY public.equipo.usuario_id;
          public          postgres    false    227            �            1259    16993    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    departamento_id integer NOT NULL,
    nombre character varying NOT NULL,
    apellidos character varying NOT NULL,
    correo character varying NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16991    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    225            s           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    224            �            1259    16930    admin_interface_theme    TABLE     �	  CREATE TABLE seguridad.admin_interface_theme (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    active boolean NOT NULL,
    title character varying(50) NOT NULL,
    title_visible boolean NOT NULL,
    logo character varying(100) NOT NULL,
    logo_visible boolean NOT NULL,
    css_header_background_color character varying(10) NOT NULL,
    title_color character varying(10) NOT NULL,
    css_header_text_color character varying(10) NOT NULL,
    css_header_link_color character varying(10) NOT NULL,
    css_header_link_hover_color character varying(10) NOT NULL,
    css_module_background_color character varying(10) NOT NULL,
    css_module_text_color character varying(10) NOT NULL,
    css_module_link_color character varying(10) NOT NULL,
    css_module_link_hover_color character varying(10) NOT NULL,
    css_module_rounded_corners boolean NOT NULL,
    css_generic_link_color character varying(10) NOT NULL,
    css_generic_link_hover_color character varying(10) NOT NULL,
    css_save_button_background_color character varying(10) NOT NULL,
    css_save_button_background_hover_color character varying(10) NOT NULL,
    css_save_button_text_color character varying(10) NOT NULL,
    css_delete_button_background_color character varying(10) NOT NULL,
    css_delete_button_background_hover_color character varying(10) NOT NULL,
    css_delete_button_text_color character varying(10) NOT NULL,
    css text NOT NULL,
    list_filter_dropdown boolean NOT NULL,
    related_modal_active boolean NOT NULL,
    related_modal_background_color character varying(10) NOT NULL,
    related_modal_rounded_corners boolean NOT NULL,
    logo_color character varying(10) NOT NULL,
    recent_actions_visible boolean NOT NULL,
    favicon character varying(100) NOT NULL,
    related_modal_background_opacity character varying(5) NOT NULL,
    env_name character varying(50) NOT NULL,
    env_visible_in_header boolean NOT NULL,
    env_color character varying(10) NOT NULL,
    env_visible_in_favicon boolean NOT NULL,
    related_modal_close_button_visible boolean NOT NULL,
    language_chooser_active boolean NOT NULL,
    language_chooser_display character varying(10) NOT NULL,
    list_filter_sticky boolean NOT NULL,
    form_pagination_sticky boolean NOT NULL,
    form_submit_sticky boolean NOT NULL,
    css_module_background_selected_color character varying(10) NOT NULL,
    css_module_link_selected_color character varying(10) NOT NULL
);
 ,   DROP TABLE seguridad.admin_interface_theme;
    	   seguridad         heap    postgres    false    4            �            1259    16928    admin_interface_theme_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.admin_interface_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE seguridad.admin_interface_theme_id_seq;
    	   seguridad          postgres    false    4    220            t           0    0    admin_interface_theme_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE seguridad.admin_interface_theme_id_seq OWNED BY seguridad.admin_interface_theme.id;
       	   seguridad          postgres    false    219            �            1259    16810 
   auth_group    TABLE     i   CREATE TABLE seguridad.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
 !   DROP TABLE seguridad.auth_group;
    	   seguridad         heap    postgres    false    4            �            1259    16808    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE seguridad.auth_group_id_seq;
    	   seguridad          postgres    false    4    208            u           0    0    auth_group_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE seguridad.auth_group_id_seq OWNED BY seguridad.auth_group.id;
       	   seguridad          postgres    false    207            �            1259    16820    auth_group_permissions    TABLE     �   CREATE TABLE seguridad.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 -   DROP TABLE seguridad.auth_group_permissions;
    	   seguridad         heap    postgres    false    4            �            1259    16818    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE seguridad.auth_group_permissions_id_seq;
    	   seguridad          postgres    false    4    210            v           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE seguridad.auth_group_permissions_id_seq OWNED BY seguridad.auth_group_permissions.id;
       	   seguridad          postgres    false    209            �            1259    16802    auth_permission    TABLE     �   CREATE TABLE seguridad.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 &   DROP TABLE seguridad.auth_permission;
    	   seguridad         heap    postgres    false    4            �            1259    16800    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE seguridad.auth_permission_id_seq;
    	   seguridad          postgres    false    4    206            w           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE seguridad.auth_permission_id_seq OWNED BY seguridad.auth_permission.id;
       	   seguridad          postgres    false    205            �            1259    16828 	   auth_user    TABLE     �  CREATE TABLE seguridad.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
     DROP TABLE seguridad.auth_user;
    	   seguridad         heap    postgres    false    4            �            1259    16838    auth_user_groups    TABLE     �   CREATE TABLE seguridad.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 '   DROP TABLE seguridad.auth_user_groups;
    	   seguridad         heap    postgres    false    4            �            1259    16836    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE seguridad.auth_user_groups_id_seq;
    	   seguridad          postgres    false    4    214            x           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE seguridad.auth_user_groups_id_seq OWNED BY seguridad.auth_user_groups.id;
       	   seguridad          postgres    false    213            �            1259    16826    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE seguridad.auth_user_id_seq;
    	   seguridad          postgres    false    4    212            y           0    0    auth_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE seguridad.auth_user_id_seq OWNED BY seguridad.auth_user.id;
       	   seguridad          postgres    false    211            �            1259    16846    auth_user_user_permissions    TABLE     �   CREATE TABLE seguridad.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 1   DROP TABLE seguridad.auth_user_user_permissions;
    	   seguridad         heap    postgres    false    4            �            1259    16844 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE seguridad.auth_user_user_permissions_id_seq;
    	   seguridad          postgres    false    216    4            z           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE seguridad.auth_user_user_permissions_id_seq OWNED BY seguridad.auth_user_user_permissions.id;
       	   seguridad          postgres    false    215            �            1259    16906    django_admin_log    TABLE     �  CREATE TABLE seguridad.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 '   DROP TABLE seguridad.django_admin_log;
    	   seguridad         heap    postgres    false    4            �            1259    16904    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE seguridad.django_admin_log_id_seq;
    	   seguridad          postgres    false    218    4            {           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE seguridad.django_admin_log_id_seq OWNED BY seguridad.django_admin_log.id;
       	   seguridad          postgres    false    217            �            1259    16792    django_content_type    TABLE     �   CREATE TABLE seguridad.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 *   DROP TABLE seguridad.django_content_type;
    	   seguridad         heap    postgres    false    4            �            1259    16790    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE seguridad.django_content_type_id_seq;
    	   seguridad          postgres    false    4    204            |           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE seguridad.django_content_type_id_seq OWNED BY seguridad.django_content_type.id;
       	   seguridad          postgres    false    203            �            1259    16781    django_migrations    TABLE     �   CREATE TABLE seguridad.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 (   DROP TABLE seguridad.django_migrations;
    	   seguridad         heap    postgres    false    4            �            1259    16779    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE seguridad.django_migrations_id_seq;
    	   seguridad          postgres    false    4    202            }           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE seguridad.django_migrations_id_seq OWNED BY seguridad.django_migrations.id;
       	   seguridad          postgres    false    201            �            1259    16971    django_session    TABLE     �   CREATE TABLE seguridad.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 %   DROP TABLE seguridad.django_session;
    	   seguridad         heap    postgres    false    4            �           2604    16988    departamento id    DEFAULT     t   ALTER TABLE ONLY public.departamento ALTER COLUMN id SET DEFAULT nextval('public."Departamento_id_seq"'::regclass);
 >   ALTER TABLE public.departamento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    17015 	   equipo id    DEFAULT     f   ALTER TABLE ONLY public.equipo ALTER COLUMN id SET DEFAULT nextval('public.equipo_id_seq'::regclass);
 8   ALTER TABLE public.equipo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    226    228            �           2604    17016    equipo usuario_id    DEFAULT     v   ALTER TABLE ONLY public.equipo ALTER COLUMN usuario_id SET DEFAULT nextval('public.equipo_usuario_id_seq'::regclass);
 @   ALTER TABLE public.equipo ALTER COLUMN usuario_id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16996 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16933    admin_interface_theme id    DEFAULT     �   ALTER TABLE ONLY seguridad.admin_interface_theme ALTER COLUMN id SET DEFAULT nextval('seguridad.admin_interface_theme_id_seq'::regclass);
 J   ALTER TABLE seguridad.admin_interface_theme ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    219    220    220            {           2604    16813    auth_group id    DEFAULT     t   ALTER TABLE ONLY seguridad.auth_group ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_group_id_seq'::regclass);
 ?   ALTER TABLE seguridad.auth_group ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    207    208    208            |           2604    16823    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY seguridad.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_group_permissions_id_seq'::regclass);
 K   ALTER TABLE seguridad.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    210    209    210            z           2604    16805    auth_permission id    DEFAULT     ~   ALTER TABLE ONLY seguridad.auth_permission ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_permission_id_seq'::regclass);
 D   ALTER TABLE seguridad.auth_permission ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    205    206    206            }           2604    16831    auth_user id    DEFAULT     r   ALTER TABLE ONLY seguridad.auth_user ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_user_id_seq'::regclass);
 >   ALTER TABLE seguridad.auth_user ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    211    212    212            ~           2604    16841    auth_user_groups id    DEFAULT     �   ALTER TABLE ONLY seguridad.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_user_groups_id_seq'::regclass);
 E   ALTER TABLE seguridad.auth_user_groups ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    213    214    214                       2604    16849    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY seguridad.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_user_user_permissions_id_seq'::regclass);
 O   ALTER TABLE seguridad.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    215    216    216            �           2604    16909    django_admin_log id    DEFAULT     �   ALTER TABLE ONLY seguridad.django_admin_log ALTER COLUMN id SET DEFAULT nextval('seguridad.django_admin_log_id_seq'::regclass);
 E   ALTER TABLE seguridad.django_admin_log ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    217    218    218            y           2604    16795    django_content_type id    DEFAULT     �   ALTER TABLE ONLY seguridad.django_content_type ALTER COLUMN id SET DEFAULT nextval('seguridad.django_content_type_id_seq'::regclass);
 H   ALTER TABLE seguridad.django_content_type ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    204    203    204            x           2604    16784    django_migrations id    DEFAULT     �   ALTER TABLE ONLY seguridad.django_migrations ALTER COLUMN id SET DEFAULT nextval('seguridad.django_migrations_id_seq'::regclass);
 F   ALTER TABLE seguridad.django_migrations ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    201    202    202            d          0    16985    departamento 
   TABLE DATA           K   COPY public.departamento (id, tipo, dependencia, nombre, piso) FROM stdin;
    public          postgres    false    223   �       i          0    17012    equipo 
   TABLE DATA           B   COPY public.equipo (id, usuario_id, cod_cmei, enlace) FROM stdin;
    public          postgres    false    228   5�       f          0    16993    usuario 
   TABLE DATA           Q   COPY public.usuario (id, departamento_id, nombre, apellidos, correo) FROM stdin;
    public          postgres    false    225   R�       a          0    16930    admin_interface_theme 
   TABLE DATA           O  COPY seguridad.admin_interface_theme (id, name, active, title, title_visible, logo, logo_visible, css_header_background_color, title_color, css_header_text_color, css_header_link_color, css_header_link_hover_color, css_module_background_color, css_module_text_color, css_module_link_color, css_module_link_hover_color, css_module_rounded_corners, css_generic_link_color, css_generic_link_hover_color, css_save_button_background_color, css_save_button_background_hover_color, css_save_button_text_color, css_delete_button_background_color, css_delete_button_background_hover_color, css_delete_button_text_color, css, list_filter_dropdown, related_modal_active, related_modal_background_color, related_modal_rounded_corners, logo_color, recent_actions_visible, favicon, related_modal_background_opacity, env_name, env_visible_in_header, env_color, env_visible_in_favicon, related_modal_close_button_visible, language_chooser_active, language_chooser_display, list_filter_sticky, form_pagination_sticky, form_submit_sticky, css_module_background_selected_color, css_module_link_selected_color) FROM stdin;
 	   seguridad          postgres    false    220   o�       U          0    16810 
   auth_group 
   TABLE DATA           1   COPY seguridad.auth_group (id, name) FROM stdin;
 	   seguridad          postgres    false    208   @�       W          0    16820    auth_group_permissions 
   TABLE DATA           P   COPY seguridad.auth_group_permissions (id, group_id, permission_id) FROM stdin;
 	   seguridad          postgres    false    210   ]�       S          0    16802    auth_permission 
   TABLE DATA           Q   COPY seguridad.auth_permission (id, name, content_type_id, codename) FROM stdin;
 	   seguridad          postgres    false    206   z�       Y          0    16828 	   auth_user 
   TABLE DATA           �   COPY seguridad.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
 	   seguridad          postgres    false    212   ��       [          0    16838    auth_user_groups 
   TABLE DATA           D   COPY seguridad.auth_user_groups (id, user_id, group_id) FROM stdin;
 	   seguridad          postgres    false    214   ��       ]          0    16846    auth_user_user_permissions 
   TABLE DATA           S   COPY seguridad.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
 	   seguridad          postgres    false    216   ��       _          0    16906    django_admin_log 
   TABLE DATA           �   COPY seguridad.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
 	   seguridad          postgres    false    218   ��       Q          0    16792    django_content_type 
   TABLE DATA           F   COPY seguridad.django_content_type (id, app_label, model) FROM stdin;
 	   seguridad          postgres    false    204   �       O          0    16781    django_migrations 
   TABLE DATA           F   COPY seguridad.django_migrations (id, app, name, applied) FROM stdin;
 	   seguridad          postgres    false    202   ��       b          0    16971    django_session 
   TABLE DATA           S   COPY seguridad.django_session (session_key, session_data, expire_date) FROM stdin;
 	   seguridad          postgres    false    221   ��       ~           0    0    Departamento_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Departamento_id_seq"', 1, false);
          public          postgres    false    222                       0    0    equipo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.equipo_id_seq', 1, false);
          public          postgres    false    226            �           0    0    equipo_usuario_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.equipo_usuario_id_seq', 1, false);
          public          postgres    false    227            �           0    0    usuario_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuario_id_seq', 1, false);
          public          postgres    false    224            �           0    0    admin_interface_theme_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('seguridad.admin_interface_theme_id_seq', 2, true);
       	   seguridad          postgres    false    219            �           0    0    auth_group_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('seguridad.auth_group_id_seq', 1, false);
       	   seguridad          postgres    false    207            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('seguridad.auth_group_permissions_id_seq', 1, false);
       	   seguridad          postgres    false    209            �           0    0    auth_permission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('seguridad.auth_permission_id_seq', 28, true);
       	   seguridad          postgres    false    205            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('seguridad.auth_user_groups_id_seq', 1, false);
       	   seguridad          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('seguridad.auth_user_id_seq', 2, true);
       	   seguridad          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('seguridad.auth_user_user_permissions_id_seq', 1, false);
       	   seguridad          postgres    false    215            �           0    0    django_admin_log_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('seguridad.django_admin_log_id_seq', 9, true);
       	   seguridad          postgres    false    217            �           0    0    django_content_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('seguridad.django_content_type_id_seq', 7, true);
       	   seguridad          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('seguridad.django_migrations_id_seq', 39, true);
       	   seguridad          postgres    false    201            �           2606    16990    departamento Departamento_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT "Departamento_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.departamento DROP CONSTRAINT "Departamento_pkey";
       public            postgres    false    223            �           2606    17021    equipo equipo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_pkey;
       public            postgres    false    228            �           2606    17001    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    225            �           2606    16953 >   admin_interface_theme admin_interface_theme_name_30bda70f_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY seguridad.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_name_30bda70f_uniq UNIQUE (name);
 k   ALTER TABLE ONLY seguridad.admin_interface_theme DROP CONSTRAINT admin_interface_theme_name_30bda70f_uniq;
    	   seguridad            postgres    false    220            �           2606    16938 0   admin_interface_theme admin_interface_theme_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY seguridad.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY seguridad.admin_interface_theme DROP CONSTRAINT admin_interface_theme_pkey;
    	   seguridad            postgres    false    220            �           2606    16969    auth_group auth_group_name_key 
   CONSTRAINT     \   ALTER TABLE ONLY seguridad.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 K   ALTER TABLE ONLY seguridad.auth_group DROP CONSTRAINT auth_group_name_key;
    	   seguridad            postgres    false    208            �           2606    16862 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
    ALTER TABLE ONLY seguridad.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
    	   seguridad            postgres    false    210    210            �           2606    16825 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY seguridad.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY seguridad.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
    	   seguridad            postgres    false    210            �           2606    16815    auth_group auth_group_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY seguridad.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY seguridad.auth_group DROP CONSTRAINT auth_group_pkey;
    	   seguridad            postgres    false    208            �           2606    16853 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 s   ALTER TABLE ONLY seguridad.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
    	   seguridad            postgres    false    206    206            �           2606    16807 $   auth_permission auth_permission_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY seguridad.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY seguridad.auth_permission DROP CONSTRAINT auth_permission_pkey;
    	   seguridad            postgres    false    206            �           2606    16843 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY seguridad.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY seguridad.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
    	   seguridad            postgres    false    214            �           2606    16877 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 m   ALTER TABLE ONLY seguridad.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
    	   seguridad            postgres    false    214    214            �           2606    16833    auth_user auth_user_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY seguridad.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY seguridad.auth_user DROP CONSTRAINT auth_user_pkey;
    	   seguridad            postgres    false    212            �           2606    16851 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY seguridad.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 g   ALTER TABLE ONLY seguridad.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
    	   seguridad            postgres    false    216            �           2606    16891 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY seguridad.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
    	   seguridad            postgres    false    216    216            �           2606    16963     auth_user auth_user_username_key 
   CONSTRAINT     b   ALTER TABLE ONLY seguridad.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 M   ALTER TABLE ONLY seguridad.auth_user DROP CONSTRAINT auth_user_username_key;
    	   seguridad            postgres    false    212            �           2606    16915 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY seguridad.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY seguridad.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
    	   seguridad            postgres    false    218            �           2606    16799 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY seguridad.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 r   ALTER TABLE ONLY seguridad.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
    	   seguridad            postgres    false    204    204            �           2606    16797 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY seguridad.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY seguridad.django_content_type DROP CONSTRAINT django_content_type_pkey;
    	   seguridad            postgres    false    204            �           2606    16789 (   django_migrations django_migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY seguridad.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY seguridad.django_migrations DROP CONSTRAINT django_migrations_pkey;
    	   seguridad            postgres    false    202            �           2606    16978 "   django_session django_session_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY seguridad.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 O   ALTER TABLE ONLY seguridad.django_session DROP CONSTRAINT django_session_pkey;
    	   seguridad            postgres    false    221            �           1259    16954 (   admin_interface_theme_name_30bda70f_like    INDEX     �   CREATE INDEX admin_interface_theme_name_30bda70f_like ON seguridad.admin_interface_theme USING btree (name varchar_pattern_ops);
 ?   DROP INDEX seguridad.admin_interface_theme_name_30bda70f_like;
    	   seguridad            postgres    false    220            �           1259    16970    auth_group_name_a6ea08ec_like    INDEX     k   CREATE INDEX auth_group_name_a6ea08ec_like ON seguridad.auth_group USING btree (name varchar_pattern_ops);
 4   DROP INDEX seguridad.auth_group_name_a6ea08ec_like;
    	   seguridad            postgres    false    208            �           1259    16873 (   auth_group_permissions_group_id_b120cbf9    INDEX     r   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON seguridad.auth_group_permissions USING btree (group_id);
 ?   DROP INDEX seguridad.auth_group_permissions_group_id_b120cbf9;
    	   seguridad            postgres    false    210            �           1259    16874 -   auth_group_permissions_permission_id_84c5c92e    INDEX     |   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON seguridad.auth_group_permissions USING btree (permission_id);
 D   DROP INDEX seguridad.auth_group_permissions_permission_id_84c5c92e;
    	   seguridad            postgres    false    210            �           1259    16859 (   auth_permission_content_type_id_2f476e4b    INDEX     r   CREATE INDEX auth_permission_content_type_id_2f476e4b ON seguridad.auth_permission USING btree (content_type_id);
 ?   DROP INDEX seguridad.auth_permission_content_type_id_2f476e4b;
    	   seguridad            postgres    false    206            �           1259    16889 "   auth_user_groups_group_id_97559544    INDEX     f   CREATE INDEX auth_user_groups_group_id_97559544 ON seguridad.auth_user_groups USING btree (group_id);
 9   DROP INDEX seguridad.auth_user_groups_group_id_97559544;
    	   seguridad            postgres    false    214            �           1259    16888 !   auth_user_groups_user_id_6a12ed8b    INDEX     d   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON seguridad.auth_user_groups USING btree (user_id);
 8   DROP INDEX seguridad.auth_user_groups_user_id_6a12ed8b;
    	   seguridad            postgres    false    214            �           1259    16903 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON seguridad.auth_user_user_permissions USING btree (permission_id);
 H   DROP INDEX seguridad.auth_user_user_permissions_permission_id_1fbb5f2c;
    	   seguridad            postgres    false    216            �           1259    16902 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     x   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON seguridad.auth_user_user_permissions USING btree (user_id);
 B   DROP INDEX seguridad.auth_user_user_permissions_user_id_a95ead1b;
    	   seguridad            postgres    false    216            �           1259    16964     auth_user_username_6821ab7c_like    INDEX     q   CREATE INDEX auth_user_username_6821ab7c_like ON seguridad.auth_user USING btree (username varchar_pattern_ops);
 7   DROP INDEX seguridad.auth_user_username_6821ab7c_like;
    	   seguridad            postgres    false    212            �           1259    16926 )   django_admin_log_content_type_id_c4bce8eb    INDEX     t   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON seguridad.django_admin_log USING btree (content_type_id);
 @   DROP INDEX seguridad.django_admin_log_content_type_id_c4bce8eb;
    	   seguridad            postgres    false    218            �           1259    16927 !   django_admin_log_user_id_c564eba6    INDEX     d   CREATE INDEX django_admin_log_user_id_c564eba6 ON seguridad.django_admin_log USING btree (user_id);
 8   DROP INDEX seguridad.django_admin_log_user_id_c564eba6;
    	   seguridad            postgres    false    218            �           1259    16980 #   django_session_expire_date_a5c62663    INDEX     h   CREATE INDEX django_session_expire_date_a5c62663 ON seguridad.django_session USING btree (expire_date);
 :   DROP INDEX seguridad.django_session_expire_date_a5c62663;
    	   seguridad            postgres    false    221            �           1259    16979 (   django_session_session_key_c0390e0f_like    INDEX     �   CREATE INDEX django_session_session_key_c0390e0f_like ON seguridad.django_session USING btree (session_key varchar_pattern_ops);
 ?   DROP INDEX seguridad.django_session_session_key_c0390e0f_like;
    	   seguridad            postgres    false    221            �           2606    17022    equipo equipo_usurio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_usurio_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id) NOT VALID;
 C   ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_usurio_fkey;
       public          postgres    false    228    225    3006            �           2606    17003 !   usuario usuario_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_departamento_fkey FOREIGN KEY (departamento_id) REFERENCES public.departamento(id) NOT VALID;
 K   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_departamento_fkey;
       public          postgres    false    223    3004    225            �           2606    16868 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES seguridad.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY seguridad.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
    	   seguridad          postgres    false    206    2961    210            �           2606    16863 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES seguridad.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY seguridad.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
    	   seguridad          postgres    false    208    2966    210            �           2606    16854 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES seguridad.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY seguridad.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
    	   seguridad          postgres    false    206    2956    204            �           2606    16883 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES seguridad.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY seguridad.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
    	   seguridad          postgres    false    208    214    2966            �           2606    16878 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES seguridad.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY seguridad.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
    	   seguridad          postgres    false    212    214    2974            �           2606    16897 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES seguridad.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY seguridad.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
    	   seguridad          postgres    false    216    206    2961            �           2606    16892 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES seguridad.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY seguridad.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
    	   seguridad          postgres    false    2974    216    212            �           2606    16916 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES seguridad.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY seguridad.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
    	   seguridad          postgres    false    2956    218    204            �           2606    16921 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY seguridad.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES seguridad.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY seguridad.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
    	   seguridad          postgres    false    212    2974    218            d      x������ � �      i      x������ � �      f      x������ � �      a   �   x�]�K� ���S���-�V�������(���y/&���b�o�����Ɓ�f��v^�������s��.p�~�~\&ݏ��W������aM� �	fP˕�
c�>�9 ylK9�ZQo�oL��5���hU�Y2Ai�T�j��j��xPDI���`P�4nѩfA�rz7��Mᥨ�ߓ�gY�dIEK      U      x������ � �      W      x������ � �      S   -  x�]�M��0���)8��	�z�0ˑ*T,��:�޾`�������I�3�U�Tu����Iƙe���l=g�{�5$�H���As �D��_K����\�}�P7�o��`�y����D,���#�9(i�����@㳝���L�j������H�i�i����}��P��`*��ؿ��$��e�oϡ$�V;! Ep��@\��k���,��֝u?R�o�E�@9��s�:i��ݼ�\2�2�i}�>�����.���/�՝h֍�p�m�Z�06룛<�.>`�L�{��jG~���"[�      Y   �   x�m��n�@���p]�3 �� �C�N�`DRcc�@~E�m���Z߳=��sR�9|]O1XTj��Û�-/3K�sG�`ƲB�~�Q�UY-d����*���nMX������7G` �[�-���NP`�a��i-4֏{8c[gĴǫύ���݆�mo�yt��.OM�N����+��r��5��ކp���;_D��i�7������wG����!����8芢��P,      [      x������ � �      ]      x������ � �      _     x����j�0���S��Wc�v��n�Aw��!�Y�5ĐucP��S[X�#d#}�oI�P ,D�@��v�ι��^5��^�M`ȶ���S\�̥�쭭;�A�6[�ա�g��*ta�v��J!�/ G#����M�}��r
��%Z�,�5_M��"�F�K>�1�M-�I��<7F���I��ڙO%��J���$�n��(z���W=Ģ&�Gk��S�YDH���
��!W/OϔJ����RL�MlT��P��
1�Φ=v���'I���Ǉ      Q   g   x�M��
1��#���g	k�0�039��+�[WA�$�Q�޳�Jl,�qxyՕ��$��&�V�{���0���pН�Y���ӈ���Wq~k�� �eg.5      O     x����r�(��ӧ�h�l�y��a�MR�`��q�٧_�S'�*u�&7�>�_����c�cJ���vUU�v�K����V��@���_L�U�Ȫ}���3szߎhX��|g����!�׬�"n!L�p�D�EG;����~Ц�iF])U��o~c`�6]ra�o��{�C~f5�O6Lg�(���V9XR��d�7��z��b�-�+����>ğ-���h��K�����9PQ��ZQ�B_%���Mn��(`���d'�ݞ҃�Z�+Y�BȒ���ڝ$����	8EP�3��V��~c��^���\��<I[Oꉶ$iǳ�a@�hcR,���@uuBg���d�0���rs2X^�$M�7�290=�zTM�m܇��l����M�5�������g�~N�Q�7(�}%!=���L�N�e���=����ޣCf�&�m�)�b��&�r=44�w�ɛ������nJ��|��N}��N�u/D�+FM(����8%��~��GM ,pqx�B� ��-f�a����6)ˌ�����A`�˲�~����8�`�����'��V�y��_�UQ�G��y�*��c����|�qpSɨxw0���"YR��3�ů�9�����)�Z)➒?J:�-�݊�rX�=��^2l�8{��Cn�B����n�]g�H :�_!����iك1��qeM8�t]w8���͆� �jo^����D��|��(�|�N�ajY5K�劁ϝ~���r���H֨�g����Wup�ٲn�v7�����k�R��o///��(&A      b     x���n�0  �g���@-���)U�
j�,Bp�܊v"|�vϋ�N����RBW�#��G��ޮ��4߱�?�^��Y�-�Uc��5j���JC6���윳�_�6�����&8@*{�1ꄜ?ܴ�YG�Bu�n�9�I��W�ӕcu����,���=�;�.Q���ѳ��Â�OS��P��������H}Z�:y�fK�y��B�P;񥼶 ﻠ+BN�C"�x�vI�[3����&���3��ДP��_S�0� �]�     