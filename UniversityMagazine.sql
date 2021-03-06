PGDMP     +            
    	    x            University Magazine Database    12.3    12.2 �    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    17143    University Magazine Database    DATABASE     |   CREATE DATABASE "University Magazine Database" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
 .   DROP DATABASE "University Magazine Database";
             "   University Magazine Database Admin    false            �            1259    50719    Admin    TABLE     B   CREATE TABLE public."Admin" (
    user_ptr_id integer NOT NULL
);
    DROP TABLE public."Admin";
       public         heap "   University Magazine Database Admin    false            �            1259    17407    Comments    TABLE     �   CREATE TABLE public."Comments" (
    id integer NOT NULL,
    comment text,
    date_posted date,
    time_posted time without time zone,
    commenter_id integer NOT NULL,
    post_id integer NOT NULL
);
    DROP TABLE public."Comments";
       public         heap "   University Magazine Database Admin    false            �            1259    17405    Comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Comments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Comments_id_seq";
       public       "   University Magazine Database Admin    false    225            3           0    0    Comments_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Comments_id_seq" OWNED BY public."Comments".id;
          public       "   University Magazine Database Admin    false    224            �            1259    17396    Contributions    TABLE     �  CREATE TABLE public."Contributions" (
    id integer NOT NULL,
    date_posted timestamp with time zone,
    images character varying(100),
    author_id integer NOT NULL,
    is_selected boolean NOT NULL,
    faculty_id integer,
    images2 character varying(100),
    images3 character varying(100),
    word_docu character varying(100),
    title character varying(100),
    paragraphs text
);
 #   DROP TABLE public."Contributions";
       public         heap "   University Magazine Database Admin    false            �            1259    17394    Contributions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Contributions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Contributions_id_seq";
       public       "   University Magazine Database Admin    false    223            4           0    0    Contributions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Contributions_id_seq" OWNED BY public."Contributions".id;
          public       "   University Magazine Database Admin    false    222            �            1259    17359    Faculty    TABLE     �   CREATE TABLE public."Faculty" (
    id integer NOT NULL,
    name character varying(50),
    final_closure_date date,
    new_closure_date date
);
    DROP TABLE public."Faculty";
       public         heap "   University Magazine Database Admin    false            �            1259    50364    Guest    TABLE     �   CREATE TABLE public."Guest" (
    user_ptr_id integer NOT NULL,
    name character varying(20),
    phone_number character varying(20),
    address text,
    faculty_id integer
);
    DROP TABLE public."Guest";
       public         heap "   University Magazine Database Admin    false            �            1259    17328    Marketing Coordinator    TABLE     (  CREATE TABLE public."Marketing Coordinator" (
    user_ptr_id integer NOT NULL,
    image character varying(100) NOT NULL,
    gender character varying(20) NOT NULL,
    dob date,
    faculty_id integer,
    phone_number character varying(20),
    address text,
    name character varying(20)
);
 +   DROP TABLE public."Marketing Coordinator";
       public         heap "   University Magazine Database Admin    false            �            1259    17333    Marketing Manager    TABLE       CREATE TABLE public."Marketing Manager" (
    user_ptr_id integer NOT NULL,
    image character varying(100) NOT NULL,
    gender character varying(20) NOT NULL,
    dob date,
    phone_number character varying(20),
    address text,
    name character varying(20)
);
 '   DROP TABLE public."Marketing Manager";
       public         heap "   University Magazine Database Admin    false            �            1259    17165    Student    TABLE     6  CREATE TABLE public."Student" (
    user_ptr_id integer NOT NULL,
    image character varying(100) NOT NULL,
    gender character varying(20) NOT NULL,
    phone_number character varying(20),
    address text,
    faculty_id integer,
    name character varying(20),
    student_number character varying(20)
);
    DROP TABLE public."Student";
       public         heap "   University Magazine Database Admin    false            �            1259    17220 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap "   University Magazine Database Admin    false            �            1259    17218    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       "   University Magazine Database Admin    false    214            5           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       "   University Magazine Database Admin    false    213            �            1259    17230    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap "   University Magazine Database Admin    false            �            1259    17228    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       "   University Magazine Database Admin    false    216            6           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       "   University Magazine Database Admin    false    215            �            1259    17212    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap "   University Magazine Database Admin    false            �            1259    17210    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       "   University Magazine Database Admin    false    212            7           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       "   University Magazine Database Admin    false    211            �            1259    17188    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap "   University Magazine Database Admin    false            �            1259    17186    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       "   University Magazine Database Admin    false    210            8           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       "   University Magazine Database Admin    false    209            �            1259    17178    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap "   University Magazine Database Admin    false            �            1259    17176    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       "   University Magazine Database Admin    false    208            9           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       "   University Magazine Database Admin    false    207            �            1259    17146    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap "   University Magazine Database Admin    false            �            1259    17144    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       "   University Magazine Database Admin    false    203            :           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       "   University Magazine Database Admin    false    202            �            1259    17262    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap "   University Magazine Database Admin    false            �            1259    17357    users_faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_faculty_id_seq;
       public       "   University Magazine Database Admin    false    221            ;           0    0    users_faculty_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_faculty_id_seq OWNED BY public."Faculty".id;
          public       "   University Magazine Database Admin    false    220            �            1259    17157 
   users_user    TABLE     �  CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    email character varying(255) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    first_name character varying(150) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_name character varying(150) NOT NULL,
    role character varying(30)
);
    DROP TABLE public.users_user;
       public         heap "   University Magazine Database Admin    false            �            1259    42028    users_user_groups    TABLE     �   CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap "   University Magazine Database Admin    false            �            1259    42026    users_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public       "   University Magazine Database Admin    false    227            <           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public       "   University Magazine Database Admin    false    226            �            1259    17155    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       "   University Magazine Database Admin    false    205            =           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
          public       "   University Magazine Database Admin    false    204            �            1259    42040    users_user_user_permissions    TABLE     �   CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap "   University Magazine Database Admin    false            �            1259    42038 "   users_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public       "   University Magazine Database Admin    false    229            >           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public       "   University Magazine Database Admin    false    228            ,           2604    50411    Comments id    DEFAULT     n   ALTER TABLE ONLY public."Comments" ALTER COLUMN id SET DEFAULT nextval('public."Comments_id_seq"'::regclass);
 <   ALTER TABLE public."Comments" ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    224    225    225            +           2604    50412    Contributions id    DEFAULT     x   ALTER TABLE ONLY public."Contributions" ALTER COLUMN id SET DEFAULT nextval('public."Contributions_id_seq"'::regclass);
 A   ALTER TABLE public."Contributions" ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    222    223    223            *           2604    50413 
   Faculty id    DEFAULT     p   ALTER TABLE ONLY public."Faculty" ALTER COLUMN id SET DEFAULT nextval('public.users_faculty_id_seq'::regclass);
 ;   ALTER TABLE public."Faculty" ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    221    220    221            (           2604    50414    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    214    213    214            )           2604    50415    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    215    216    216            '           2604    50416    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    212    211    212            %           2604    50417    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    210    209    210            $           2604    50418    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    207    208    208            "           2604    50419    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    202    203    203            #           2604    50420    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    204    205    205            -           2604    50421    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    227    226    227            .           2604    50422    users_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    229    228    229            ,          0    50719    Admin 
   TABLE DATA           .   COPY public."Admin" (user_ptr_id) FROM stdin;
    public       "   University Magazine Database Admin    false    231   ��       &          0    17407    Comments 
   TABLE DATA           b   COPY public."Comments" (id, comment, date_posted, time_posted, commenter_id, post_id) FROM stdin;
    public       "   University Magazine Database Admin    false    225   �       $          0    17396    Contributions 
   TABLE DATA           �   COPY public."Contributions" (id, date_posted, images, author_id, is_selected, faculty_id, images2, images3, word_docu, title, paragraphs) FROM stdin;
    public       "   University Magazine Database Admin    false    223   3�       "          0    17359    Faculty 
   TABLE DATA           S   COPY public."Faculty" (id, name, final_closure_date, new_closure_date) FROM stdin;
    public       "   University Magazine Database Admin    false    221   �       +          0    50364    Guest 
   TABLE DATA           W   COPY public."Guest" (user_ptr_id, name, phone_number, address, faculty_id) FROM stdin;
    public       "   University Magazine Database Admin    false    230   O�                 0    17328    Marketing Coordinator 
   TABLE DATA           {   COPY public."Marketing Coordinator" (user_ptr_id, image, gender, dob, faculty_id, phone_number, address, name) FROM stdin;
    public       "   University Magazine Database Admin    false    218   ��                  0    17333    Marketing Manager 
   TABLE DATA           k   COPY public."Marketing Manager" (user_ptr_id, image, gender, dob, phone_number, address, name) FROM stdin;
    public       "   University Magazine Database Admin    false    219   (�                 0    17165    Student 
   TABLE DATA           x   COPY public."Student" (user_ptr_id, image, gender, phone_number, address, faculty_id, name, student_number) FROM stdin;
    public       "   University Magazine Database Admin    false    206   ��                 0    17220 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       "   University Magazine Database Admin    false    214   ,�                 0    17230    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       "   University Magazine Database Admin    false    216   I�                 0    17212    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       "   University Magazine Database Admin    false    212   f�                 0    17188    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       "   University Magazine Database Admin    false    210   ��                 0    17178    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       "   University Magazine Database Admin    false    208   ��                 0    17146    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       "   University Magazine Database Admin    false    203   ��                 0    17262    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       "   University Magazine Database Admin    false    217   6�                 0    17157 
   users_user 
   TABLE DATA           �   COPY public.users_user (id, password, last_login, email, date_joined, first_name, is_active, is_staff, is_superuser, last_name, role) FROM stdin;
    public       "   University Magazine Database Admin    false    205   u�       (          0    42028    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public       "   University Magazine Database Admin    false    227   ��       *          0    42040    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       "   University Magazine Database Admin    false    229   �       ?           0    0    Comments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Comments_id_seq"', 20, true);
          public       "   University Magazine Database Admin    false    224            @           0    0    Contributions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Contributions_id_seq"', 171, true);
          public       "   University Magazine Database Admin    false    222            A           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       "   University Magazine Database Admin    false    213            B           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       "   University Magazine Database Admin    false    215            C           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public       "   University Magazine Database Admin    false    211            D           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 156, true);
          public       "   University Magazine Database Admin    false    209            E           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public       "   University Magazine Database Admin    false    207            F           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 57, true);
          public       "   University Magazine Database Admin    false    202            G           0    0    users_faculty_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_faculty_id_seq', 4, true);
          public       "   University Magazine Database Admin    false    220            H           0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
          public       "   University Magazine Database Admin    false    226            I           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 55, true);
          public       "   University Magazine Database Admin    false    204            J           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public       "   University Magazine Database Admin    false    228            {           2606    50723    Admin Admin_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "Admin_pkey" PRIMARY KEY (user_ptr_id);
 >   ALTER TABLE ONLY public."Admin" DROP CONSTRAINT "Admin_pkey";
       public         "   University Magazine Database Admin    false    231            g           2606    17415    Comments Comments_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_pkey";
       public         "   University Magazine Database Admin    false    225            i           2606    42108 '   Comments Comments_post_id_bfbee05d_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_post_id_bfbee05d_uniq" UNIQUE (post_id);
 U   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_post_id_bfbee05d_uniq";
       public         "   University Magazine Database Admin    false    225            d           2606    17404     Contributions Contributions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Contributions"
    ADD CONSTRAINT "Contributions_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Contributions" DROP CONSTRAINT "Contributions_pkey";
       public         "   University Magazine Database Admin    false    223            ]           2606    42075 "   Faculty Faculty_name_8df53e6a_uniq 
   CONSTRAINT     a   ALTER TABLE ONLY public."Faculty"
    ADD CONSTRAINT "Faculty_name_8df53e6a_uniq" UNIQUE (name);
 P   ALTER TABLE ONLY public."Faculty" DROP CONSTRAINT "Faculty_name_8df53e6a_uniq";
       public         "   University Magazine Database Admin    false    221            w           2606    50378    Guest Guest_faculty_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_faculty_id_key" UNIQUE (faculty_id);
 H   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_faculty_id_key";
       public         "   University Magazine Database Admin    false    230            y           2606    50371    Guest Guest_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_pkey" PRIMARY KEY (user_ptr_id);
 >   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_pkey";
       public         "   University Magazine Database Admin    false    230            V           2606    17373 D   Marketing Coordinator Marketing Coordinator_faculty_id_413e7dff_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Marketing Coordinator"
    ADD CONSTRAINT "Marketing Coordinator_faculty_id_413e7dff_uniq" UNIQUE (faculty_id);
 r   ALTER TABLE ONLY public."Marketing Coordinator" DROP CONSTRAINT "Marketing Coordinator_faculty_id_413e7dff_uniq";
       public         "   University Magazine Database Admin    false    218            8           2606    17169    Student Student_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "Student_pkey" PRIMARY KEY (user_ptr_id);
 B   ALTER TABLE ONLY public."Student" DROP CONSTRAINT "Student_pkey";
       public         "   University Magazine Database Admin    false    206            H           2606    17260    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         "   University Magazine Database Admin    false    214            M           2606    17246 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         "   University Magazine Database Admin    false    216    216            P           2606    17235 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         "   University Magazine Database Admin    false    216            J           2606    17225    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         "   University Magazine Database Admin    false    214            C           2606    17237 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         "   University Magazine Database Admin    false    212    212            E           2606    17217 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         "   University Magazine Database Admin    false    212            ?           2606    17197 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         "   University Magazine Database Admin    false    210            :           2606    17185 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         "   University Magazine Database Admin    false    208    208            <           2606    17183 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         "   University Magazine Database Admin    false    208            0           2606    17154 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         "   University Magazine Database Admin    false    203            S           2606    17269 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         "   University Magazine Database Admin    false    217            _           2606    17364    Faculty users_faculty_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Faculty"
    ADD CONSTRAINT users_faculty_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Faculty" DROP CONSTRAINT users_faculty_pkey;
       public         "   University Magazine Database Admin    false    221            X           2606    17332 6   Marketing Coordinator users_marketing_coordinator_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."Marketing Coordinator"
    ADD CONSTRAINT users_marketing_coordinator_pkey PRIMARY KEY (user_ptr_id);
 b   ALTER TABLE ONLY public."Marketing Coordinator" DROP CONSTRAINT users_marketing_coordinator_pkey;
       public         "   University Magazine Database Admin    false    218            Z           2606    17337 .   Marketing Manager users_marketing_manager_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."Marketing Manager"
    ADD CONSTRAINT users_marketing_manager_pkey PRIMARY KEY (user_ptr_id);
 Z   ALTER TABLE ONLY public."Marketing Manager" DROP CONSTRAINT users_marketing_manager_pkey;
       public         "   University Magazine Database Admin    false    219            3           2606    17164    users_user users_user_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_key;
       public         "   University Magazine Database Admin    false    205            l           2606    42033 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public         "   University Magazine Database Admin    false    227            o           2606    42047 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public         "   University Magazine Database Admin    false    227    227            5           2606    17162    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public         "   University Magazine Database Admin    false    205            r           2606    42045 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public         "   University Magazine Database Admin    false    229            u           2606    42061 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public         "   University Magazine Database Admin    false    229    229            e           1259    17432    Comments_commenter_id_fccee0cc    INDEX     _   CREATE INDEX "Comments_commenter_id_fccee0cc" ON public."Comments" USING btree (commenter_id);
 4   DROP INDEX public."Comments_commenter_id_fccee0cc";
       public         "   University Magazine Database Admin    false    225            `           1259    17421     Contributions_author_id_c477906d    INDEX     c   CREATE INDEX "Contributions_author_id_c477906d" ON public."Contributions" USING btree (author_id);
 6   DROP INDEX public."Contributions_author_id_c477906d";
       public         "   University Magazine Database Admin    false    223            a           1259    42082 !   Contributions_faculty_id_50a7ea7f    INDEX     e   CREATE INDEX "Contributions_faculty_id_50a7ea7f" ON public."Contributions" USING btree (faculty_id);
 7   DROP INDEX public."Contributions_faculty_id_50a7ea7f";
       public         "   University Magazine Database Admin    false    223            b           1259    25628 "   Contributions_image1_d6e8a2ab_like    INDEX     v   CREATE INDEX "Contributions_image1_d6e8a2ab_like" ON public."Contributions" USING btree (images varchar_pattern_ops);
 8   DROP INDEX public."Contributions_image1_d6e8a2ab_like";
       public         "   University Magazine Database Admin    false    223            [           1259    42076    Faculty_name_8df53e6a_like    INDEX     f   CREATE INDEX "Faculty_name_8df53e6a_like" ON public."Faculty" USING btree (name varchar_pattern_ops);
 0   DROP INDEX public."Faculty_name_8df53e6a_like";
       public         "   University Magazine Database Admin    false    221            6           1259    17434    Student_faculty_id_62921c6b    INDEX     Y   CREATE INDEX "Student_faculty_id_62921c6b" ON public."Student" USING btree (faculty_id);
 1   DROP INDEX public."Student_faculty_id_62921c6b";
       public         "   University Magazine Database Admin    false    206            F           1259    17261    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         "   University Magazine Database Admin    false    214            K           1259    17257 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         "   University Magazine Database Admin    false    216            N           1259    17258 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         "   University Magazine Database Admin    false    216            A           1259    17243 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         "   University Magazine Database Admin    false    212            =           1259    17208 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         "   University Magazine Database Admin    false    210            @           1259    17209 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         "   University Magazine Database Admin    false    210            Q           1259    17271 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         "   University Magazine Database Admin    false    217            T           1259    17270 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         "   University Magazine Database Admin    false    217            1           1259    17170    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public         "   University Magazine Database Admin    false    205            j           1259    42059 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public         "   University Magazine Database Admin    false    227            m           1259    42058 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public         "   University Magazine Database Admin    false    227            p           1259    42073 2   users_user_user_permissions_permission_id_0b93982e    INDEX     �   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public         "   University Magazine Database Admin    false    229            s           1259    42072 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public         "   University Magazine Database Admin    false    229            �           2606    50724 1   Admin Admin_user_ptr_id_b7d0d2b9_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "Admin_user_ptr_id_b7d0d2b9_fk_users_user_id" FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public."Admin" DROP CONSTRAINT "Admin_user_ptr_id_b7d0d2b9_fk_users_user_id";
       public       "   University Magazine Database Admin    false    3125    231    205            �           2606    17422 4   Comments Comments_commenter_id_fccee0cc_fk_Marketing    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_commenter_id_fccee0cc_fk_Marketing" FOREIGN KEY (commenter_id) REFERENCES public."Marketing Coordinator"(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_commenter_id_fccee0cc_fk_Marketing";
       public       "   University Magazine Database Admin    false    3160    218    225            �           2606    42109 6   Comments Comments_post_id_bfbee05d_fk_Contributions_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_post_id_bfbee05d_fk_Contributions_id" FOREIGN KEY (post_id) REFERENCES public."Contributions"(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_post_id_bfbee05d_fk_Contributions_id";
       public       "   University Magazine Database Admin    false    223    225    3172            �           2606    17416 E   Contributions Contributions_author_id_c477906d_fk_Student_user_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contributions"
    ADD CONSTRAINT "Contributions_author_id_c477906d_fk_Student_user_ptr_id" FOREIGN KEY (author_id) REFERENCES public."Student"(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."Contributions" DROP CONSTRAINT "Contributions_author_id_c477906d_fk_Student_user_ptr_id";
       public       "   University Magazine Database Admin    false    3128    206    223            �           2606    42077 =   Contributions Contributions_faculty_id_50a7ea7f_fk_Faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contributions"
    ADD CONSTRAINT "Contributions_faculty_id_50a7ea7f_fk_Faculty_id" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."Contributions" DROP CONSTRAINT "Contributions_faculty_id_50a7ea7f_fk_Faculty_id";
       public       "   University Magazine Database Admin    false    3167    221    223            �           2606    50379 -   Guest Guest_faculty_id_979d3335_fk_Faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_faculty_id_979d3335_fk_Faculty_id" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_faculty_id_979d3335_fk_Faculty_id";
       public       "   University Magazine Database Admin    false    230    3167    221            �           2606    50372 1   Guest Guest_user_ptr_id_faff72bc_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_user_ptr_id_faff72bc_fk_users_user_id" FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_user_ptr_id_faff72bc_fk_users_user_id";
       public       "   University Magazine Database Admin    false    3125    205    230            �           2606    17374 S   Marketing Coordinator Marketing Coordinator_faculty_id_413e7dff_fk_users_faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Marketing Coordinator"
    ADD CONSTRAINT "Marketing Coordinator_faculty_id_413e7dff_fk_users_faculty_id" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Marketing Coordinator" DROP CONSTRAINT "Marketing Coordinator_faculty_id_413e7dff_fk_users_faculty_id";
       public       "   University Magazine Database Admin    false    218    221    3167            }           2606    17435 1   Student Student_faculty_id_62921c6b_fk_Faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "Student_faculty_id_62921c6b_fk_Faculty_id" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public."Student" DROP CONSTRAINT "Student_faculty_id_62921c6b_fk_Faculty_id";
       public       "   University Magazine Database Admin    false    3167    221    206            |           2606    17171 5   Student Student_user_ptr_id_d04238db_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "Student_user_ptr_id_d04238db_fk_users_user_id" FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public."Student" DROP CONSTRAINT "Student_user_ptr_id_d04238db_fk_users_user_id";
       public       "   University Magazine Database Admin    false    205    3125    206            �           2606    17252 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       "   University Magazine Database Admin    false    212    3141    216            �           2606    17247 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       "   University Magazine Database Admin    false    216    3146    214            �           2606    17238 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       "   University Magazine Database Admin    false    212    208    3132            ~           2606    17198 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       "   University Magazine Database Admin    false    208    3132    210                       2606    17203 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public       "   University Magazine Database Admin    false    210    3125    205            �           2606    17338 L   Marketing Coordinator users_marketing_coor_user_ptr_id_94dd9e8f_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public."Marketing Coordinator"
    ADD CONSTRAINT users_marketing_coor_user_ptr_id_94dd9e8f_fk_users_use FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."Marketing Coordinator" DROP CONSTRAINT users_marketing_coor_user_ptr_id_94dd9e8f_fk_users_use;
       public       "   University Magazine Database Admin    false    3125    205    218            �           2606    17343 O   Marketing Manager users_marketing_manager_user_ptr_id_051258ee_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Marketing Manager"
    ADD CONSTRAINT users_marketing_manager_user_ptr_id_051258ee_fk_users_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."Marketing Manager" DROP CONSTRAINT users_marketing_manager_user_ptr_id_051258ee_fk_users_user_id;
       public       "   University Magazine Database Admin    false    205    3125    219            �           2606    42053 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public       "   University Magazine Database Admin    false    227    214    3146            �           2606    42048 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public       "   University Magazine Database Admin    false    205    227    3125            �           2606    42067 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public       "   University Magazine Database Admin    false    212    229    3141            �           2606    42062 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public       "   University Magazine Database Admin    false    229    3125    205            ,      x�35�����       &      x������ � �      $   �   x�Վ�
�0���)ncS�EСP�M�MJ����.*888�������1'�	���& x�E,�T��{lɭ��N�����<��r���O��S�����
i�S���騍�N<��=]Ⱥ�|�A�tr{P�4
rtꁶ-Ҋ�7r���?��%�۫��������aU	��=�C      "   ;   x�3���4202�54�50�0,u���8�|�RƆU�\&���p�F�)�=... �z�      +   )   x�35�N�U��)���421"c��ļt�+F��� �$	4         �   x����
�0 ����K����@�,�!�whs�AoD��w��̽���J��i�-y��F�Q�*��,m6-� P`�28�\�?��y<�:?�Kj2������.����o���W1��{yh����Rd׌1�ۇ6H          j   x�5�K
�  ��x�^ �|�Q��� ��Hi�i	��]���a���m�;1JV�R�4�FԄ��ԌM	ER�b)Z�����ȸ.h@����㰝��o[s�g���Ow         z   x�-˱
�0 ���� �����F�\:7!Z�V����7?x��8�Ϸ4O�zk��B�"Ƌ5�Y�s���׆��gb����g@��k)���W�1��P^��]h�.0���u�R�� �            x������ � �            x������ � �         I  x�u�Ɏ�0���S��a������4�H#�q�Z,����r-Lsî��+w�����WU�<���f��X/m����>�*�s�W��'��U�P�����^�ZIO}���w����cXك|6#��H�S(�{0*�8�͛>��tur���j:7��������+�l�*U��Q|���c�8��-2r�0�N{���\���w+6ӷaߦ��ɹ����Z>��[�LK��g�r�fJj;҄��u�MS�\��ʦ'938agi��F,{eK������n}�,���aബai3�A���*��D3&E.%rLqB�~h�ql��A�7l���H4��ʫ�QR�"�
O	rz롟���pms��XG5DT�"�B��tE 4����ݴ`2=�ޜA�����l`�R��ɆGEŋplh�U,'b��p�w�����*���ȩL.���+D(^ő�T\١�5O��t�q�*[\'w��l;ār�H˖�#e��m�~j��ai��v&�t�;jS�H���#
Ր����� �V�[��3�bbH#BBDHI�sJ�Um��`���uaK���b�� "�"��Xk��k	�           x���mo�6�_���ȫ[��7[�nk���lŰ�,1�Y
$�YW��$[��H�������;��;�V�qv��)w �<F�ᖫ��D�*�,�uT�EN.|�ʋ�X~ ���I�$>9	�����+P�0O���T�Z�E�C�1B�8�gw��4�2r�>���?f�!j�3Lv��r_}�\GiF�b=-̎a&�@�s�z�6yJ��2�7�=��u���	-̍a6d�:R��z�Y��j_��`�tl��!s!ʅ����� ���'�`�ٰ�2͡c�u�<���42F��N�yk;\L7�$�M�,o��$t���虨1̈́LR�C��&���J]�J�(C�k7�Y?13=�6���G��h2M����1UA��h��,��<">n��!pj����Y_ћ4)n����q�&�:-�9��n��`̱�0T`>���t�>��L��&�R���3^E�rK=���$>���m����b Fvod,� ��l�u�������w?Z͌�N����Ikr��n���rޞbF�p1���*c&�0h��ؠ%�m4~������1�qc�j
]��_
�,n�2!�uT^M�x˂�Q!W��bRv,ł���=-�d��#<��vC��T[́'�H����Du��9�(7����UMBr���U^�2o�=�k���R|Z��+��0�iC��4:C�1�CToH<�!9c5�e�Ð�1d�v���c�ӆ�R��?�=�!3c�p��.8+}T{R#��ʗd]$>#�(�P܇8;�a�B�(WH늇���UT��ǿ:�3_}sg��!�7Y�a�&v����j6���5���-='g+_eiU�1eU�^�kO~.i�.\_��S��ڗ՝~\�5&����/Q-��z�W|�J��l�/�T؅jj����;6c7D�i:ƥ�e�O�"o7�8�]�e�Ϯ��Ŧ$��?59+�4_��O~)��}\��<���&�}UM�;����=JNbc��!Ί���5)-�)<kU�M�|�X8o��[�Y��o�Z�
�kC���2�ٞeE�Am�@�oc��V�'(�桨£R��-~̊Z-1�Q����=�>-7IR|c����o�^��{v���^a���*z���F�S��c��$ �*R��)+��xUY�5�����������4�|��I|u�b*��W�y{;��t�g�ϝ�OS��L��)��<i�:]�(�WpA|}\��L��Ar�'#Í��@����$�y�Y/|��<UuS���s�^~��n ������cQTk<���i��^��w������VmzE�M�� ]�����ː���x����Ia0�.�#�5v�j`��J�����϶���a���Ղ�/?��\�	��㡍��B@�\-��j{0�
!��������Ğ.�<��C�[�@u{�4��Е���wV4�-6��[_��|v�(	=������%�Xb�23,��Y|��,;���,�c���fX�Q�bs,vȒl��}U���4��	fHN�I�q�&qmT瓝!�!IL�6Ef_��I-H9M�`�s��	�F|Z�\
���a�8'3 �h]J-ľ��&�i�t��P����%ܭ��÷�H��hh�`�+�/���;�ns��x��!�������=c��%TvFSB� d�ь��6Bt���Uu�-��>B���0wS�,cGp��t��#�5��Z����4˶�1��P�E�w�dPEkz�fU���g�>�5�l��	.��W�M�����=T;���X�z��4��?��ݿ�L�y[�ѱ�#������)z��>y����#         �   x�e�K�0D��a)�� �К�$�?�ܞZ�R7���y�QF�V���EL����JH���LCHN2�q�F���>�Yy�^G)p6n�!�1�jK.Ʃ�̈́s�	������L���U)���c;�k�
��J��ۨ1���%�W�K��+�w ��Hd         �  x����n�8E�������B�Է@�c�[�my$9���):"�-A��Q-��(8܇�J)�����|@��r?_+���@������H��᭻��u?n�3��Yc�`:��K{�>�@���9
��;����7����}�|}<�bXY���C#��~������ݵoR�.�!7�̦s�����/�>��q�D+R�����q:�Ӧ ��ylzk�K;���\���ss=���X��)�D����Kݞ�Y�8�@%�I��#��6�7Xk�&* a�s��1̯���/�d�X`�?��O3zχ~���v%N9%�^��c=v��R��]�/�0ԧ/4�m����點;��j�	�6�z�f���f"�D;����INI�#)	��oҫ������L���2FkH�%������O�W*�*)��fz��G����d*�&~�O�Q�WH�Kp�!�!h ���:�1xC �C�B�ks�	zA �J�W�J��@�L0z�_��Q�3�\����b.,8H��&��U�������RPqYG���������}�1��R[�S6g�650�	$A��~R��&>���n�٦ӯ�V�*v2�T�"M�w�ǰ��- �b[)S8��8B`��R���ɤ�Uz2m�1y�g��	<I �yP�����o/[���fR�>e���C[�q�SV+��A�M\�T��e��^-	�"��+�s��B;Z]�b=X�	d_�V�Wˮ�erw�[��ݭ��S_�f���4�UD4�\.oi.4��	V�"f�3і�Ad���Ъ2�������p��m`XjRыx&��9�` :�$�@�Uġ�.�@C"ж��Y�,�ҥ�.oI嚤�Z�t�U�!���%�4��%�Ap�9	�aX�����]�1�\��v����*�W3�{?�h׭Ar]�t��rO�yR[��&#�i����e-���:���B��v����{�q8��d�����n��4\�e�S�p�	���E��������$�bS��&��Ҹ%�d��N$֜�L�a"m�=��H�5��	���f����!�u� �'B��M"eCFX$�EU(2]CxK�uz&j��{3����iV�����2�x�1�c��|m!*��.�w����ح�         /  x�]�Ɏ�HEו_����`��0VK)0f��__���*UKo���t�Y�6V�CإS5�k�>�>Ia���k��)�md�e9��t���?F�h���?/j�c�����}呛E�p�8�̟��>\��f�\��V5�[�1pb��z���;�z��.��oS��m]�֕V�e�n{8��>dc(/{�Wskr��Z��j�ʓ�	h�Gq'��%�QQN��
��U�9���j��	W��h@�σ���h$���3"�@^�,��E����y6DS��{���{� �)����Z�%��9ͭf���F��\��u����8ҁ,Vmg���/.�XV��7$��o�#�I͋�7�X�m
�t�|\��Y6�o0B���'�*��}W��vK2pm��s>�e�T>�����L���9��8$���7�!�&Q��4sa���C�>�N����L���ڑ�vw4�~�a�^<�a5�a�Z�K�Z;&�~#����i��[�N[� ����%��K��0���kB6J73-�����Bgd<�#��v�,��:;j+���6i��Y�v
�H��s����16�B�c�~ZrP�I��$����|��%����M6�f�ć�������V���;B(Ѵ�`xF��7���"lTw�!�)y,�
rߖ���c*�:�.;l����6����N��Q�_�F%�X1=�s�@���cOV�q� g<X��]?��Xpql�LA�d���ӱS��f�P��c�r·���e%��v�ș���f�8�p��g�2�X���ϩRL	������=�2�Y�����g��9�;߸B�D�W(J���g���-jc�A�0���	+>�dBҶHx��c�ܭTP���P�77����.g�J+��S���T�ۼ��F1q�ؐ <Na>rq3�a�˺ғ]��6��eD�Fi�=�.x�lu���,��� {Ϻ����G8�~��g?e����U�w���Cx�򧨣b&�g8vFɫ?�2VOŁYY�d�JBp��Գv
��y���� ���[Կo///?����         v  x�u�]o�0���Wp�]Tc��N����R>�.�@��$N�2��J��h�o��y��7R�	���Υ\����i����]������oL�W/���ϩ\K����(d�p�'̱�e����F|ߠ��;,�lf���aanl\���ͷm�Z'�U�&��	��y#�nc�orZ�ۛ�Ͼ�YX��f�c�Ā__�����a��k�vp\ZV4-��:�řTF��P����e��G����][��D��Ʌ�)�D�\[O��[/)������V�Ҏ'��9����ؓŒz�2����,�ܝ���p�5%Hf`����P�B�h����@����i����"�0��<,T�bw떡򑻉CEj���1�t���wr��!}�Ѽ��)�q�������`�/ׇC^����i8Z�b�F���pE�ؤ1��/��SU?ǪI &ב\�Wƣ&��joV��������+�~��͒�9u®ՁR'�d�O�����,ur��Ř��#���f���8�l�a�_��V53Y/���R��?d�q�v�S�vp�˅���F5�!��v���b�U�G{�ijb�00�|�fQ�v��K��s�>	t~U�K�j6�� ��6x      (      x������ � �      *      x������ � �     