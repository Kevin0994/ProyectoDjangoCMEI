PGDMP                         y           djangoPrueba    13.3    13.3 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    49695    djangoPrueba    DATABASE     l   CREATE DATABASE "djangoPrueba" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE "djangoPrueba";
                postgres    false                        2615    49696 	   seguridad    SCHEMA        CREATE SCHEMA seguridad;
    DROP SCHEMA seguridad;
                postgres    false            ?            1259    49697    departamento    TABLE     ?   CREATE TABLE public.departamento (
    id bigint NOT NULL,
    tipo character varying(50) NOT NULL,
    nombre character varying(150) NOT NULL,
    piso character varying(50) NOT NULL,
    dependencia integer
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            ?            1259    49700    Departamento_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Departamento_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Departamento_id_seq";
       public          postgres    false    201            ?           0    0    Departamento_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departamento_id_seq" OWNED BY public.departamento.id;
          public          postgres    false    202            ?            1259    50123    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    50121    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    228            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    227            ?            1259    49702    equipo    TABLE     ?   CREATE TABLE public.equipo (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    cod_cmei character varying(100) NOT NULL,
    enlace character varying(500) NOT NULL
);
    DROP TABLE public.equipo;
       public         heap    postgres    false            ?            1259    49708    equipo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.equipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.equipo_id_seq;
       public          postgres    false    203            ?           0    0    equipo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.equipo_id_seq OWNED BY public.equipo.id;
          public          postgres    false    204            ?            1259    49710    equipo_usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.equipo_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.equipo_usuario_id_seq;
       public          postgres    false    203            ?           0    0    equipo_usuario_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.equipo_usuario_id_seq OWNED BY public.equipo.usuario_id;
          public          postgres    false    205            ?            1259    50146    register_tipo    TABLE     ?   CREATE TABLE public.register_tipo (
    id bigint NOT NULL,
    nombre character varying(70),
    descripcion character varying(100)
);
 !   DROP TABLE public.register_tipo;
       public         heap    postgres    false            ?            1259    50144    register_tipo_id_seq    SEQUENCE     }   CREATE SEQUENCE public.register_tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.register_tipo_id_seq;
       public          postgres    false    230            ?           0    0    register_tipo_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.register_tipo_id_seq OWNED BY public.register_tipo.id;
          public          postgres    false    229            ?            1259    50188    usuario    TABLE     ?   CREATE TABLE public.usuario (
    id integer NOT NULL,
    departamento_id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    apellidos character varying(500) NOT NULL,
    correo character varying(100)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            ?            1259    50186    usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    232            ?           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    231            ?            1259    49720    admin_interface_theme    TABLE     ?	  CREATE TABLE seguridad.admin_interface_theme (
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
    	   seguridad         heap    postgres    false    6            ?            1259    49726    admin_interface_theme_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.admin_interface_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE seguridad.admin_interface_theme_id_seq;
    	   seguridad          postgres    false    6    206            ?           0    0    admin_interface_theme_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE seguridad.admin_interface_theme_id_seq OWNED BY seguridad.admin_interface_theme.id;
       	   seguridad          postgres    false    207            ?            1259    49728 
   auth_group    TABLE     i   CREATE TABLE seguridad.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
 !   DROP TABLE seguridad.auth_group;
    	   seguridad         heap    postgres    false    6            ?            1259    49731    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE seguridad.auth_group_id_seq;
    	   seguridad          postgres    false    208    6            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE seguridad.auth_group_id_seq OWNED BY seguridad.auth_group.id;
       	   seguridad          postgres    false    209            ?            1259    49733    auth_group_permissions    TABLE     ?   CREATE TABLE seguridad.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 -   DROP TABLE seguridad.auth_group_permissions;
    	   seguridad         heap    postgres    false    6            ?            1259    49736    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE seguridad.auth_group_permissions_id_seq;
    	   seguridad          postgres    false    210    6            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE seguridad.auth_group_permissions_id_seq OWNED BY seguridad.auth_group_permissions.id;
       	   seguridad          postgres    false    211            ?            1259    49738    auth_permission    TABLE     ?   CREATE TABLE seguridad.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 &   DROP TABLE seguridad.auth_permission;
    	   seguridad         heap    postgres    false    6            ?            1259    49741    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE seguridad.auth_permission_id_seq;
    	   seguridad          postgres    false    6    212            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE seguridad.auth_permission_id_seq OWNED BY seguridad.auth_permission.id;
       	   seguridad          postgres    false    213            ?            1259    49743 	   auth_user    TABLE     ?  CREATE TABLE seguridad.auth_user (
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
    	   seguridad         heap    postgres    false    6            ?            1259    49749    auth_user_groups    TABLE     ?   CREATE TABLE seguridad.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 '   DROP TABLE seguridad.auth_user_groups;
    	   seguridad         heap    postgres    false    6            ?            1259    49752    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE seguridad.auth_user_groups_id_seq;
    	   seguridad          postgres    false    215    6            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE seguridad.auth_user_groups_id_seq OWNED BY seguridad.auth_user_groups.id;
       	   seguridad          postgres    false    216            ?            1259    49754    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE seguridad.auth_user_id_seq;
    	   seguridad          postgres    false    214    6            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE seguridad.auth_user_id_seq OWNED BY seguridad.auth_user.id;
       	   seguridad          postgres    false    217            ?            1259    49756    auth_user_user_permissions    TABLE     ?   CREATE TABLE seguridad.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 1   DROP TABLE seguridad.auth_user_user_permissions;
    	   seguridad         heap    postgres    false    6            ?            1259    49759 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE seguridad.auth_user_user_permissions_id_seq;
    	   seguridad          postgres    false    218    6            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE seguridad.auth_user_user_permissions_id_seq OWNED BY seguridad.auth_user_user_permissions.id;
       	   seguridad          postgres    false    219            ?            1259    49761    django_admin_log    TABLE     ?  CREATE TABLE seguridad.django_admin_log (
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
    	   seguridad         heap    postgres    false    6            ?            1259    49768    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE seguridad.django_admin_log_id_seq;
    	   seguridad          postgres    false    220    6            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE seguridad.django_admin_log_id_seq OWNED BY seguridad.django_admin_log.id;
       	   seguridad          postgres    false    221            ?            1259    49770    django_content_type    TABLE     ?   CREATE TABLE seguridad.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 *   DROP TABLE seguridad.django_content_type;
    	   seguridad         heap    postgres    false    6            ?            1259    49773    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE seguridad.django_content_type_id_seq;
    	   seguridad          postgres    false    222    6            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE seguridad.django_content_type_id_seq OWNED BY seguridad.django_content_type.id;
       	   seguridad          postgres    false    223            ?            1259    49775    django_migrations    TABLE     ?   CREATE TABLE seguridad.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 (   DROP TABLE seguridad.django_migrations;
    	   seguridad         heap    postgres    false    6            ?            1259    49781    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE seguridad.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE seguridad.django_migrations_id_seq;
    	   seguridad          postgres    false    224    6            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE seguridad.django_migrations_id_seq OWNED BY seguridad.django_migrations.id;
       	   seguridad          postgres    false    225            ?            1259    49783    django_session    TABLE     ?   CREATE TABLE seguridad.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 %   DROP TABLE seguridad.django_session;
    	   seguridad         heap    postgres    false    6            ?           2604    50132    departamento id    DEFAULT     t   ALTER TABLE ONLY public.departamento ALTER COLUMN id SET DEFAULT nextval('public."Departamento_id_seq"'::regclass);
 >   ALTER TABLE public.departamento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201            ?           2604    50126    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            ?           2604    49790 	   equipo id    DEFAULT     f   ALTER TABLE ONLY public.equipo ALTER COLUMN id SET DEFAULT nextval('public.equipo_id_seq'::regclass);
 8   ALTER TABLE public.equipo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            ?           2604    49791    equipo usuario_id    DEFAULT     v   ALTER TABLE ONLY public.equipo ALTER COLUMN usuario_id SET DEFAULT nextval('public.equipo_usuario_id_seq'::regclass);
 @   ALTER TABLE public.equipo ALTER COLUMN usuario_id DROP DEFAULT;
       public          postgres    false    205    203            ?           2604    50149    register_tipo id    DEFAULT     t   ALTER TABLE ONLY public.register_tipo ALTER COLUMN id SET DEFAULT nextval('public.register_tipo_id_seq'::regclass);
 ?   ALTER TABLE public.register_tipo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            ?           2604    50191 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    49793    admin_interface_theme id    DEFAULT     ?   ALTER TABLE ONLY seguridad.admin_interface_theme ALTER COLUMN id SET DEFAULT nextval('seguridad.admin_interface_theme_id_seq'::regclass);
 J   ALTER TABLE seguridad.admin_interface_theme ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    207    206            ?           2604    49794    auth_group id    DEFAULT     t   ALTER TABLE ONLY seguridad.auth_group ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_group_id_seq'::regclass);
 ?   ALTER TABLE seguridad.auth_group ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    209    208            ?           2604    49795    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY seguridad.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_group_permissions_id_seq'::regclass);
 K   ALTER TABLE seguridad.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    211    210            ?           2604    49796    auth_permission id    DEFAULT     ~   ALTER TABLE ONLY seguridad.auth_permission ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_permission_id_seq'::regclass);
 D   ALTER TABLE seguridad.auth_permission ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    213    212            ?           2604    49797    auth_user id    DEFAULT     r   ALTER TABLE ONLY seguridad.auth_user ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_user_id_seq'::regclass);
 >   ALTER TABLE seguridad.auth_user ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    217    214            ?           2604    49798    auth_user_groups id    DEFAULT     ?   ALTER TABLE ONLY seguridad.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_user_groups_id_seq'::regclass);
 E   ALTER TABLE seguridad.auth_user_groups ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    216    215            ?           2604    49799    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY seguridad.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('seguridad.auth_user_user_permissions_id_seq'::regclass);
 O   ALTER TABLE seguridad.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    219    218            ?           2604    49800    django_admin_log id    DEFAULT     ?   ALTER TABLE ONLY seguridad.django_admin_log ALTER COLUMN id SET DEFAULT nextval('seguridad.django_admin_log_id_seq'::regclass);
 E   ALTER TABLE seguridad.django_admin_log ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    221    220            ?           2604    49801    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY seguridad.django_content_type ALTER COLUMN id SET DEFAULT nextval('seguridad.django_content_type_id_seq'::regclass);
 H   ALTER TABLE seguridad.django_content_type ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    223    222            ?           2604    49802    django_migrations id    DEFAULT     ?   ALTER TABLE ONLY seguridad.django_migrations ALTER COLUMN id SET DEFAULT nextval('seguridad.django_migrations_id_seq'::regclass);
 F   ALTER TABLE seguridad.django_migrations ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    225    224            `          0    49697    departamento 
   TABLE DATA           K   COPY public.departamento (id, tipo, nombre, piso, dependencia) FROM stdin;
    public          postgres    false    201   ?       {          0    50123    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    228   7?       b          0    49702    equipo 
   TABLE DATA           B   COPY public.equipo (id, usuario_id, cod_cmei, enlace) FROM stdin;
    public          postgres    false    203   ??       }          0    50146    register_tipo 
   TABLE DATA           @   COPY public.register_tipo (id, nombre, descripcion) FROM stdin;
    public          postgres    false    230   ??                 0    50188    usuario 
   TABLE DATA           Q   COPY public.usuario (id, departamento_id, nombre, apellidos, correo) FROM stdin;
    public          postgres    false    232   4?       e          0    49720    admin_interface_theme 
   TABLE DATA           O  COPY seguridad.admin_interface_theme (id, name, active, title, title_visible, logo, logo_visible, css_header_background_color, title_color, css_header_text_color, css_header_link_color, css_header_link_hover_color, css_module_background_color, css_module_text_color, css_module_link_color, css_module_link_hover_color, css_module_rounded_corners, css_generic_link_color, css_generic_link_hover_color, css_save_button_background_color, css_save_button_background_hover_color, css_save_button_text_color, css_delete_button_background_color, css_delete_button_background_hover_color, css_delete_button_text_color, css, list_filter_dropdown, related_modal_active, related_modal_background_color, related_modal_rounded_corners, logo_color, recent_actions_visible, favicon, related_modal_background_opacity, env_name, env_visible_in_header, env_color, env_visible_in_favicon, related_modal_close_button_visible, language_chooser_active, language_chooser_display, list_filter_sticky, form_pagination_sticky, form_submit_sticky, css_module_background_selected_color, css_module_link_selected_color) FROM stdin;
 	   seguridad          postgres    false    206   Q?       g          0    49728 
   auth_group 
   TABLE DATA           1   COPY seguridad.auth_group (id, name) FROM stdin;
 	   seguridad          postgres    false    208   "?       i          0    49733    auth_group_permissions 
   TABLE DATA           P   COPY seguridad.auth_group_permissions (id, group_id, permission_id) FROM stdin;
 	   seguridad          postgres    false    210   ??       k          0    49738    auth_permission 
   TABLE DATA           Q   COPY seguridad.auth_permission (id, name, content_type_id, codename) FROM stdin;
 	   seguridad          postgres    false    212   \?       m          0    49743 	   auth_user 
   TABLE DATA           ?   COPY seguridad.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
 	   seguridad          postgres    false    214   ??       n          0    49749    auth_user_groups 
   TABLE DATA           D   COPY seguridad.auth_user_groups (id, user_id, group_id) FROM stdin;
 	   seguridad          postgres    false    215   ??       q          0    49756    auth_user_user_permissions 
   TABLE DATA           S   COPY seguridad.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
 	   seguridad          postgres    false    218   ??       s          0    49761    django_admin_log 
   TABLE DATA           ?   COPY seguridad.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
 	   seguridad          postgres    false    220   ??       u          0    49770    django_content_type 
   TABLE DATA           F   COPY seguridad.django_content_type (id, app_label, model) FROM stdin;
 	   seguridad          postgres    false    222   F?       w          0    49775    django_migrations 
   TABLE DATA           F   COPY seguridad.django_migrations (id, app, name, applied) FROM stdin;
 	   seguridad          postgres    false    224   ??       y          0    49783    django_session 
   TABLE DATA           S   COPY seguridad.django_session (session_key, session_data, expire_date) FROM stdin;
 	   seguridad          postgres    false    226    ?       ?           0    0    Departamento_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Departamento_id_seq"', 121, true);
          public          postgres    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_migrations_id_seq', 4, true);
          public          postgres    false    227            ?           0    0    equipo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.equipo_id_seq', 1, true);
          public          postgres    false    204            ?           0    0    equipo_usuario_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.equipo_usuario_id_seq', 1, false);
          public          postgres    false    205            ?           0    0    register_tipo_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.register_tipo_id_seq', 3, true);
          public          postgres    false    229            ?           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 6, true);
          public          postgres    false    231            ?           0    0    admin_interface_theme_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('seguridad.admin_interface_theme_id_seq', 2, true);
       	   seguridad          postgres    false    207            ?           0    0    auth_group_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('seguridad.auth_group_id_seq', 1, false);
       	   seguridad          postgres    false    209            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('seguridad.auth_group_permissions_id_seq', 1, false);
       	   seguridad          postgres    false    211            ?           0    0    auth_permission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('seguridad.auth_permission_id_seq', 28, true);
       	   seguridad          postgres    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('seguridad.auth_user_groups_id_seq', 1, false);
       	   seguridad          postgres    false    216            ?           0    0    auth_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('seguridad.auth_user_id_seq', 2, true);
       	   seguridad          postgres    false    217            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('seguridad.auth_user_user_permissions_id_seq', 1, false);
       	   seguridad          postgres    false    219            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('seguridad.django_admin_log_id_seq', 12, true);
       	   seguridad          postgres    false    221            ?           0    0    django_content_type_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('seguridad.django_content_type_id_seq', 10, true);
       	   seguridad          postgres    false    223            ?           0    0    django_migrations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('seguridad.django_migrations_id_seq', 39, true);
       	   seguridad          postgres    false    225            ?           2606    50134    departamento Departamento_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT "Departamento_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.departamento DROP CONSTRAINT "Departamento_pkey";
       public            postgres    false    201            ?           2606    50131 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    228            ?           2606    49806    equipo equipo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_pkey;
       public            postgres    false    203            ?           2606    50151     register_tipo register_tipo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.register_tipo
    ADD CONSTRAINT register_tipo_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.register_tipo DROP CONSTRAINT register_tipo_pkey;
       public            postgres    false    230            ?           2606    50196    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    232            ?           2606    49810 >   admin_interface_theme admin_interface_theme_name_30bda70f_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY seguridad.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_name_30bda70f_uniq UNIQUE (name);
 k   ALTER TABLE ONLY seguridad.admin_interface_theme DROP CONSTRAINT admin_interface_theme_name_30bda70f_uniq;
    	   seguridad            postgres    false    206            ?           2606    49812 0   admin_interface_theme admin_interface_theme_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY seguridad.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY seguridad.admin_interface_theme DROP CONSTRAINT admin_interface_theme_pkey;
    	   seguridad            postgres    false    206            ?           2606    49814    auth_group auth_group_name_key 
   CONSTRAINT     \   ALTER TABLE ONLY seguridad.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 K   ALTER TABLE ONLY seguridad.auth_group DROP CONSTRAINT auth_group_name_key;
    	   seguridad            postgres    false    208            ?           2606    49816 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
    ALTER TABLE ONLY seguridad.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
    	   seguridad            postgres    false    210    210            ?           2606    49818 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY seguridad.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY seguridad.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
    	   seguridad            postgres    false    210            ?           2606    49820    auth_group auth_group_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY seguridad.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY seguridad.auth_group DROP CONSTRAINT auth_group_pkey;
    	   seguridad            postgres    false    208            ?           2606    49822 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 s   ALTER TABLE ONLY seguridad.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
    	   seguridad            postgres    false    212    212            ?           2606    49824 $   auth_permission auth_permission_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY seguridad.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY seguridad.auth_permission DROP CONSTRAINT auth_permission_pkey;
    	   seguridad            postgres    false    212            ?           2606    49826 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY seguridad.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY seguridad.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
    	   seguridad            postgres    false    215            ?           2606    49828 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 m   ALTER TABLE ONLY seguridad.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
    	   seguridad            postgres    false    215    215            ?           2606    49830    auth_user auth_user_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY seguridad.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY seguridad.auth_user DROP CONSTRAINT auth_user_pkey;
    	   seguridad            postgres    false    214            ?           2606    49832 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY seguridad.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 g   ALTER TABLE ONLY seguridad.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
    	   seguridad            postgres    false    218            ?           2606    49834 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY seguridad.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
    	   seguridad            postgres    false    218    218            ?           2606    49836     auth_user auth_user_username_key 
   CONSTRAINT     b   ALTER TABLE ONLY seguridad.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 M   ALTER TABLE ONLY seguridad.auth_user DROP CONSTRAINT auth_user_username_key;
    	   seguridad            postgres    false    214            ?           2606    49838 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY seguridad.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY seguridad.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
    	   seguridad            postgres    false    220            ?           2606    49840 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY seguridad.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 r   ALTER TABLE ONLY seguridad.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
    	   seguridad            postgres    false    222    222            ?           2606    49842 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY seguridad.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY seguridad.django_content_type DROP CONSTRAINT django_content_type_pkey;
    	   seguridad            postgres    false    222            ?           2606    49844 (   django_migrations django_migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY seguridad.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY seguridad.django_migrations DROP CONSTRAINT django_migrations_pkey;
    	   seguridad            postgres    false    224            ?           2606    49846 "   django_session django_session_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY seguridad.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 O   ALTER TABLE ONLY seguridad.django_session DROP CONSTRAINT django_session_pkey;
    	   seguridad            postgres    false    226            ?           1259    49847 (   admin_interface_theme_name_30bda70f_like    INDEX     ?   CREATE INDEX admin_interface_theme_name_30bda70f_like ON seguridad.admin_interface_theme USING btree (name varchar_pattern_ops);
 ?   DROP INDEX seguridad.admin_interface_theme_name_30bda70f_like;
    	   seguridad            postgres    false    206            ?           1259    49848    auth_group_name_a6ea08ec_like    INDEX     k   CREATE INDEX auth_group_name_a6ea08ec_like ON seguridad.auth_group USING btree (name varchar_pattern_ops);
 4   DROP INDEX seguridad.auth_group_name_a6ea08ec_like;
    	   seguridad            postgres    false    208            ?           1259    49849 (   auth_group_permissions_group_id_b120cbf9    INDEX     r   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON seguridad.auth_group_permissions USING btree (group_id);
 ?   DROP INDEX seguridad.auth_group_permissions_group_id_b120cbf9;
    	   seguridad            postgres    false    210            ?           1259    49850 -   auth_group_permissions_permission_id_84c5c92e    INDEX     |   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON seguridad.auth_group_permissions USING btree (permission_id);
 D   DROP INDEX seguridad.auth_group_permissions_permission_id_84c5c92e;
    	   seguridad            postgres    false    210            ?           1259    49851 (   auth_permission_content_type_id_2f476e4b    INDEX     r   CREATE INDEX auth_permission_content_type_id_2f476e4b ON seguridad.auth_permission USING btree (content_type_id);
 ?   DROP INDEX seguridad.auth_permission_content_type_id_2f476e4b;
    	   seguridad            postgres    false    212            ?           1259    49852 "   auth_user_groups_group_id_97559544    INDEX     f   CREATE INDEX auth_user_groups_group_id_97559544 ON seguridad.auth_user_groups USING btree (group_id);
 9   DROP INDEX seguridad.auth_user_groups_group_id_97559544;
    	   seguridad            postgres    false    215            ?           1259    49853 !   auth_user_groups_user_id_6a12ed8b    INDEX     d   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON seguridad.auth_user_groups USING btree (user_id);
 8   DROP INDEX seguridad.auth_user_groups_user_id_6a12ed8b;
    	   seguridad            postgres    false    215            ?           1259    49854 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON seguridad.auth_user_user_permissions USING btree (permission_id);
 H   DROP INDEX seguridad.auth_user_user_permissions_permission_id_1fbb5f2c;
    	   seguridad            postgres    false    218            ?           1259    49855 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     x   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON seguridad.auth_user_user_permissions USING btree (user_id);
 B   DROP INDEX seguridad.auth_user_user_permissions_user_id_a95ead1b;
    	   seguridad            postgres    false    218            ?           1259    49856     auth_user_username_6821ab7c_like    INDEX     q   CREATE INDEX auth_user_username_6821ab7c_like ON seguridad.auth_user USING btree (username varchar_pattern_ops);
 7   DROP INDEX seguridad.auth_user_username_6821ab7c_like;
    	   seguridad            postgres    false    214            ?           1259    49857 )   django_admin_log_content_type_id_c4bce8eb    INDEX     t   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON seguridad.django_admin_log USING btree (content_type_id);
 @   DROP INDEX seguridad.django_admin_log_content_type_id_c4bce8eb;
    	   seguridad            postgres    false    220            ?           1259    49858 !   django_admin_log_user_id_c564eba6    INDEX     d   CREATE INDEX django_admin_log_user_id_c564eba6 ON seguridad.django_admin_log USING btree (user_id);
 8   DROP INDEX seguridad.django_admin_log_user_id_c564eba6;
    	   seguridad            postgres    false    220            ?           1259    49859 #   django_session_expire_date_a5c62663    INDEX     h   CREATE INDEX django_session_expire_date_a5c62663 ON seguridad.django_session USING btree (expire_date);
 :   DROP INDEX seguridad.django_session_expire_date_a5c62663;
    	   seguridad            postgres    false    226            ?           1259    49860 (   django_session_session_key_c0390e0f_like    INDEX     ?   CREATE INDEX django_session_session_key_c0390e0f_like ON seguridad.django_session USING btree (session_key varchar_pattern_ops);
 ?   DROP INDEX seguridad.django_session_session_key_c0390e0f_like;
    	   seguridad            postgres    false    226            ?           2606    50197 !   usuario usuario_departamento_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_departamento_fkey FOREIGN KEY (departamento_id) REFERENCES public.departamento(id);
 K   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_departamento_fkey;
       public          postgres    false    201    232    2967            ?           2606    49871 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES seguridad.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY seguridad.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
    	   seguridad          postgres    false    2990    210    212            ?           2606    49876 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES seguridad.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY seguridad.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
    	   seguridad          postgres    false    208    210    2979            ?           2606    49881 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES seguridad.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY seguridad.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
    	   seguridad          postgres    false    222    3015    212            ?           2606    49886 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES seguridad.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY seguridad.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
    	   seguridad          postgres    false    2979    215    208            ?           2606    49891 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES seguridad.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY seguridad.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
    	   seguridad          postgres    false    214    215    2992            ?           2606    49896 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES seguridad.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY seguridad.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
    	   seguridad          postgres    false    2990    212    218            ?           2606    49901 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES seguridad.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY seguridad.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
    	   seguridad          postgres    false    214    218    2992            ?           2606    49906 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES seguridad.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY seguridad.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
    	   seguridad          postgres    false    220    3015    222            ?           2606    49911 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY seguridad.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES seguridad.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY seguridad.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
    	   seguridad          postgres    false    2992    220    214            `      x?????? ? ?      {   ?   x?U?A? ?ᵜ?Hf?AG?҄XK+???n*????69??^Bn  }\c???v q??Cq?`$<_????OGI?J@H<2??فq?????L?-??%nɿ?>???1?2:ΰ???wdM?g??Й?$?hI???VJ}?B?      b      x?????? ? ?      }   %   x?3?L?,JMN?????2?,.MB?sØ1z\\\ E?!            x?????? ? ?      e   ?   x?]?K? ???S???-?V????????(???y/&???b?o?????Ɓ?f??v^???????s??.p?~?~\&ݏ??W??????aM? ?	fP˕?
c?>?9 ylK9?ZQo?oL??5???hU?Y2Ai?T?j??j???xPDI???`P?4nѩfA?rz7??Mᥨ?ߓ??gY?dIEK      g      x?????? ? ?      i      x?????? ? ?      k   -  x?]?M??0???)8??	?z?0ˑ*T,??:?޾`???????I?3?U?Tu????Iƙe???l=g?{?5$???H???As ?D??_K????\?}?P7?o??`?y????D,???#?9(i?????@㳝???L?j??????H?i?i????}??P??`*??ؿ??$??e?oϡ$?V;! Ep??@\??k???,??֝u?R?o?E?@9??s?:i??ݼ?\2?2?i}?>?????.???/?՝h֍?p?m?Z?06룛<?.>`?L?{??jG~???"[?      m   ?   x?m??n?@@???.?p柁H\????HI??I??(???/??h???%???n?SO?????B잼?Ԥ}?2??????Lj????+?[?o?????)??*??4.?[?c?r?H?CS9` ?1lBm*tnR?aC!?;^?G???ZV?????ųR?~?9.?2??FY9??盐T_?M4?ݷ?*?????߭5#???M?n ????+N?????FLl2)w?QW???P:      n      x?????? ? ?      q      x?????? ? ?      s   `  x???AO?0???)??4????]?U&x?r?[??8?1!|w;##١[?????B?a@?????EB$??? ?_d??Lvq>wkS?:?ů?Y??ķY???v[QnW?????ԵB?>?4 AI9????|6>̺0C?P?_0???[/???B??? #;???'ݣH?H?Uo??u7??ۙt#?"?"??/\̨??m??mn?L??J?Ti??????2?Hp??Eݽ?y?8|p?̊???????kF?Hݕ???8??Y?v???#H4??I?%??Nf??M?f??F?ea?&????fL ? 8??TR)O??f?????0?1Ԝ)A??5|ߖ?3?r?3	???? ?      u   ?   x?M?K?0Dמ? ʟ? ??5?%?Y??TTv3O??(Y?]J?=R?g?n??ԑK،=?U?,???????⸚?l8Q??\??+??????m?
\?x_?i??,R^Ҋ????IUt?jޒ??????D)      w     x????r?(??ӧ?h?l?y??a?MR?`??q?٧_?S'?*u?&7?>?_????c?cJ???vUU?v?K????V????@???_L?U?Ȫ}???3szߎhX??|g????!?׬?"n!L?p?D?EG;????~Ц?iF])U??o~c`?6]ra?o??{?C~f5?O6Lg?(???V9XR??d?7??z??b?-?+????>ğ-???h??K?????9PQ??ZQ?B_%???Mn??(`???d'?ݞ҃?Z?+Y?BȒ???ڝ$????	8EP?3??V???~c??^???\??<I[Oꉶ$iǳ?a@?hcR,???@uuBg???d??0???rs2X^?$M??7?290=?zTM?m܇??l????M?5???????g?~N?Q?7(?}%!=???L?N?e???=????ޣCf?&?m?)?b??&?r=44?w?ɛ??????nJ??|??N}??N?u/D?+FM(????8%??~??GM ,pqx?B? ??-f?a????6)ˌ?????A`?˲?~?????8?`?????'??V?y??_?UQ?G??y?*??c????|?qpSɨxw0?????"YR??3?ů?9?????)?Z)➒?J:?-?݊?rX?=??^2l?8{??Cn?B?????n?]g?H :?_!?????iك1??qeM8?t]w8???͆? ?jo^????D??|???(?|?N?ajY5K?劁ϝ~???r???H֨?g????Wup?ٲn?v7??????k?R??o///??(&A      y     x????r?@??u??? =??Q	 G?:U)i16C3:??'ٜS???7o???w?`?gkV??d?l???!??Z)??y?2???.7?Gb-G??t2?o????~3y?H?G??}?f??4?????k)?a)?e??d2??(?;,X	??|_?j????ߤ?H4c??????K???{X??Tھ?b??'Զ-#?6ʀ???????*???ư?T??-??0?{?^?v??XhaY??????έ?ˮp??Iu??u4??t?
??pHB?/d@X2qbz]]???$"Ϩ>Q?	??%F?w??K??Z??v?8oz????l??'?
`5?????,???e??r9AC@e䧪?<??gD;,X??a?w?7N?3=??]?e??"Pq|N?yĞ@R?`n?NY?????s???;bJ??D ??	???iBl?u?:??K.F:??&θ??????W???o????=,7???Ix??6_.?ٺY]?s?klP
w???(?Gx??D??3_88?     