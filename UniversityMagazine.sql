PGDMP     !                	    x            University Magazine Database    12.3    12.2 �    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            *           1262    17143    University Magazine Database    DATABASE     |   CREATE DATABASE "University Magazine Database" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
 .   DROP DATABASE "University Magazine Database";
             "   University Magazine Database Admin    false            �            1259    17407    Comments    TABLE     �   CREATE TABLE public."Comments" (
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
       public       "   University Magazine Database Admin    false    225            +           0    0    Comments_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Comments_id_seq" OWNED BY public."Comments".id;
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
       public       "   University Magazine Database Admin    false    223            ,           0    0    Contributions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Contributions_id_seq" OWNED BY public."Contributions".id;
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
       public       "   University Magazine Database Admin    false    214            -           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
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
       public       "   University Magazine Database Admin    false    216            .           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
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
       public       "   University Magazine Database Admin    false    212            /           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public       "   University Magazine Database Admin    false    210            0           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
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
       public       "   University Magazine Database Admin    false    208            1           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
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
       public       "   University Magazine Database Admin    false    203            2           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
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
       public       "   University Magazine Database Admin    false    221            3           0    0    users_faculty_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_faculty_id_seq OWNED BY public."Faculty".id;
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
       public       "   University Magazine Database Admin    false    227            4           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public       "   University Magazine Database Admin    false    226            �            1259    17155    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       "   University Magazine Database Admin    false    205            5           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
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
       public       "   University Magazine Database Admin    false    229            6           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public       "   University Magazine Database Admin    false    228            (           2604    17410    Comments id    DEFAULT     n   ALTER TABLE ONLY public."Comments" ALTER COLUMN id SET DEFAULT nextval('public."Comments_id_seq"'::regclass);
 <   ALTER TABLE public."Comments" ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    224    225    225            '           2604    17399    Contributions id    DEFAULT     x   ALTER TABLE ONLY public."Contributions" ALTER COLUMN id SET DEFAULT nextval('public."Contributions_id_seq"'::regclass);
 A   ALTER TABLE public."Contributions" ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    222    223    223            &           2604    17362 
   Faculty id    DEFAULT     p   ALTER TABLE ONLY public."Faculty" ALTER COLUMN id SET DEFAULT nextval('public.users_faculty_id_seq'::regclass);
 ;   ALTER TABLE public."Faculty" ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    220    221    221            $           2604    17223    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    213    214    214            %           2604    17233    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    215    216    216            #           2604    17215    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    212    211    212            !           2604    17191    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    209    210    210                        2604    17181    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    208    207    208                       2604    17149    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    203    202    203                       2604    17160    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    204    205    205            )           2604    42031    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    227    226    227            *           2604    42043    users_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       "   University Magazine Database Admin    false    229    228    229                      0    17407    Comments 
   TABLE DATA           b   COPY public."Comments" (id, comment, date_posted, time_posted, commenter_id, post_id) FROM stdin;
    public       "   University Magazine Database Admin    false    225   ��                 0    17396    Contributions 
   TABLE DATA           �   COPY public."Contributions" (id, date_posted, images, author_id, is_selected, faculty_id, images2, images3, word_docu, title, paragraphs) FROM stdin;
    public       "   University Magazine Database Admin    false    223   )�                 0    17359    Faculty 
   TABLE DATA           S   COPY public."Faculty" (id, name, final_closure_date, new_closure_date) FROM stdin;
    public       "   University Magazine Database Admin    false    221   '      $          0    50364    Guest 
   TABLE DATA           W   COPY public."Guest" (user_ptr_id, name, phone_number, address, faculty_id) FROM stdin;
    public       "   University Magazine Database Admin    false    230   r                0    17328    Marketing Coordinator 
   TABLE DATA           {   COPY public."Marketing Coordinator" (user_ptr_id, image, gender, dob, faculty_id, phone_number, address, name) FROM stdin;
    public       "   University Magazine Database Admin    false    218   �                0    17333    Marketing Manager 
   TABLE DATA           k   COPY public."Marketing Manager" (user_ptr_id, image, gender, dob, phone_number, address, name) FROM stdin;
    public       "   University Magazine Database Admin    false    219   K                0    17165    Student 
   TABLE DATA           x   COPY public."Student" (user_ptr_id, image, gender, phone_number, address, faculty_id, name, student_number) FROM stdin;
    public       "   University Magazine Database Admin    false    206   �                0    17220 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       "   University Magazine Database Admin    false    214   O                0    17230    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       "   University Magazine Database Admin    false    216   l                0    17212    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       "   University Magazine Database Admin    false    212   �                0    17188    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       "   University Magazine Database Admin    false    210   �                0    17178    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       "   University Magazine Database Admin    false    208   �      	          0    17146    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       "   University Magazine Database Admin    false    203   l                0    17262    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       "   University Magazine Database Admin    false    217   �                0    17157 
   users_user 
   TABLE DATA           �   COPY public.users_user (id, password, last_login, email, date_joined, first_name, is_active, is_staff, is_superuser, last_name, role) FROM stdin;
    public       "   University Magazine Database Admin    false    205   ,      !          0    42028    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public       "   University Magazine Database Admin    false    227   �      #          0    42040    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       "   University Magazine Database Admin    false    229   �      7           0    0    Comments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Comments_id_seq"', 20, true);
          public       "   University Magazine Database Admin    false    224            8           0    0    Contributions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Contributions_id_seq"', 171, true);
          public       "   University Magazine Database Admin    false    222            9           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       "   University Magazine Database Admin    false    213            :           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       "   University Magazine Database Admin    false    215            ;           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public       "   University Magazine Database Admin    false    211            <           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 154, true);
          public       "   University Magazine Database Admin    false    209            =           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public       "   University Magazine Database Admin    false    207            >           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 56, true);
          public       "   University Magazine Database Admin    false    202            ?           0    0    users_faculty_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_faculty_id_seq', 4, true);
          public       "   University Magazine Database Admin    false    220            @           0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
          public       "   University Magazine Database Admin    false    226            A           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 54, true);
          public       "   University Magazine Database Admin    false    204            B           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public       "   University Magazine Database Admin    false    228            c           2606    17415    Comments Comments_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_pkey";
       public         "   University Magazine Database Admin    false    225            e           2606    42108 '   Comments Comments_post_id_bfbee05d_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_post_id_bfbee05d_uniq" UNIQUE (post_id);
 U   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_post_id_bfbee05d_uniq";
       public         "   University Magazine Database Admin    false    225            `           2606    17404     Contributions Contributions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Contributions"
    ADD CONSTRAINT "Contributions_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Contributions" DROP CONSTRAINT "Contributions_pkey";
       public         "   University Magazine Database Admin    false    223            Y           2606    42075 "   Faculty Faculty_name_8df53e6a_uniq 
   CONSTRAINT     a   ALTER TABLE ONLY public."Faculty"
    ADD CONSTRAINT "Faculty_name_8df53e6a_uniq" UNIQUE (name);
 P   ALTER TABLE ONLY public."Faculty" DROP CONSTRAINT "Faculty_name_8df53e6a_uniq";
       public         "   University Magazine Database Admin    false    221            s           2606    50378    Guest Guest_faculty_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_faculty_id_key" UNIQUE (faculty_id);
 H   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_faculty_id_key";
       public         "   University Magazine Database Admin    false    230            u           2606    50371    Guest Guest_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_pkey" PRIMARY KEY (user_ptr_id);
 >   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_pkey";
       public         "   University Magazine Database Admin    false    230            R           2606    17373 D   Marketing Coordinator Marketing Coordinator_faculty_id_413e7dff_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Marketing Coordinator"
    ADD CONSTRAINT "Marketing Coordinator_faculty_id_413e7dff_uniq" UNIQUE (faculty_id);
 r   ALTER TABLE ONLY public."Marketing Coordinator" DROP CONSTRAINT "Marketing Coordinator_faculty_id_413e7dff_uniq";
       public         "   University Magazine Database Admin    false    218            4           2606    17169    Student Student_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "Student_pkey" PRIMARY KEY (user_ptr_id);
 B   ALTER TABLE ONLY public."Student" DROP CONSTRAINT "Student_pkey";
       public         "   University Magazine Database Admin    false    206            D           2606    17260    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         "   University Magazine Database Admin    false    214            I           2606    17246 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         "   University Magazine Database Admin    false    216    216            L           2606    17235 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         "   University Magazine Database Admin    false    216            F           2606    17225    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         "   University Magazine Database Admin    false    214            ?           2606    17237 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         "   University Magazine Database Admin    false    212    212            A           2606    17217 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         "   University Magazine Database Admin    false    212            ;           2606    17197 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         "   University Magazine Database Admin    false    210            6           2606    17185 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         "   University Magazine Database Admin    false    208    208            8           2606    17183 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         "   University Magazine Database Admin    false    208            ,           2606    17154 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         "   University Magazine Database Admin    false    203            O           2606    17269 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         "   University Magazine Database Admin    false    217            [           2606    17364    Faculty users_faculty_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Faculty"
    ADD CONSTRAINT users_faculty_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Faculty" DROP CONSTRAINT users_faculty_pkey;
       public         "   University Magazine Database Admin    false    221            T           2606    17332 6   Marketing Coordinator users_marketing_coordinator_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."Marketing Coordinator"
    ADD CONSTRAINT users_marketing_coordinator_pkey PRIMARY KEY (user_ptr_id);
 b   ALTER TABLE ONLY public."Marketing Coordinator" DROP CONSTRAINT users_marketing_coordinator_pkey;
       public         "   University Magazine Database Admin    false    218            V           2606    17337 .   Marketing Manager users_marketing_manager_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."Marketing Manager"
    ADD CONSTRAINT users_marketing_manager_pkey PRIMARY KEY (user_ptr_id);
 Z   ALTER TABLE ONLY public."Marketing Manager" DROP CONSTRAINT users_marketing_manager_pkey;
       public         "   University Magazine Database Admin    false    219            /           2606    17164    users_user users_user_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_key;
       public         "   University Magazine Database Admin    false    205            h           2606    42033 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public         "   University Magazine Database Admin    false    227            k           2606    42047 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public         "   University Magazine Database Admin    false    227    227            1           2606    17162    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public         "   University Magazine Database Admin    false    205            n           2606    42045 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public         "   University Magazine Database Admin    false    229            q           2606    42061 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public         "   University Magazine Database Admin    false    229    229            a           1259    17432    Comments_commenter_id_fccee0cc    INDEX     _   CREATE INDEX "Comments_commenter_id_fccee0cc" ON public."Comments" USING btree (commenter_id);
 4   DROP INDEX public."Comments_commenter_id_fccee0cc";
       public         "   University Magazine Database Admin    false    225            \           1259    17421     Contributions_author_id_c477906d    INDEX     c   CREATE INDEX "Contributions_author_id_c477906d" ON public."Contributions" USING btree (author_id);
 6   DROP INDEX public."Contributions_author_id_c477906d";
       public         "   University Magazine Database Admin    false    223            ]           1259    42082 !   Contributions_faculty_id_50a7ea7f    INDEX     e   CREATE INDEX "Contributions_faculty_id_50a7ea7f" ON public."Contributions" USING btree (faculty_id);
 7   DROP INDEX public."Contributions_faculty_id_50a7ea7f";
       public         "   University Magazine Database Admin    false    223            ^           1259    25628 "   Contributions_image1_d6e8a2ab_like    INDEX     v   CREATE INDEX "Contributions_image1_d6e8a2ab_like" ON public."Contributions" USING btree (images varchar_pattern_ops);
 8   DROP INDEX public."Contributions_image1_d6e8a2ab_like";
       public         "   University Magazine Database Admin    false    223            W           1259    42076    Faculty_name_8df53e6a_like    INDEX     f   CREATE INDEX "Faculty_name_8df53e6a_like" ON public."Faculty" USING btree (name varchar_pattern_ops);
 0   DROP INDEX public."Faculty_name_8df53e6a_like";
       public         "   University Magazine Database Admin    false    221            2           1259    17434    Student_faculty_id_62921c6b    INDEX     Y   CREATE INDEX "Student_faculty_id_62921c6b" ON public."Student" USING btree (faculty_id);
 1   DROP INDEX public."Student_faculty_id_62921c6b";
       public         "   University Magazine Database Admin    false    206            B           1259    17261    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         "   University Magazine Database Admin    false    214            G           1259    17257 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         "   University Magazine Database Admin    false    216            J           1259    17258 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         "   University Magazine Database Admin    false    216            =           1259    17243 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         "   University Magazine Database Admin    false    212            9           1259    17208 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         "   University Magazine Database Admin    false    210            <           1259    17209 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         "   University Magazine Database Admin    false    210            M           1259    17271 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         "   University Magazine Database Admin    false    217            P           1259    17270 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         "   University Magazine Database Admin    false    217            -           1259    17170    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public         "   University Magazine Database Admin    false    205            f           1259    42059 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public         "   University Magazine Database Admin    false    227            i           1259    42058 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public         "   University Magazine Database Admin    false    227            l           1259    42073 2   users_user_user_permissions_permission_id_0b93982e    INDEX     �   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public         "   University Magazine Database Admin    false    229            o           1259    42072 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public         "   University Magazine Database Admin    false    229            �           2606    17422 4   Comments Comments_commenter_id_fccee0cc_fk_Marketing    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_commenter_id_fccee0cc_fk_Marketing" FOREIGN KEY (commenter_id) REFERENCES public."Marketing Coordinator"(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_commenter_id_fccee0cc_fk_Marketing";
       public       "   University Magazine Database Admin    false    3156    225    218            �           2606    42109 6   Comments Comments_post_id_bfbee05d_fk_Contributions_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_post_id_bfbee05d_fk_Contributions_id" FOREIGN KEY (post_id) REFERENCES public."Contributions"(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_post_id_bfbee05d_fk_Contributions_id";
       public       "   University Magazine Database Admin    false    3168    223    225            �           2606    17416 E   Contributions Contributions_author_id_c477906d_fk_Student_user_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contributions"
    ADD CONSTRAINT "Contributions_author_id_c477906d_fk_Student_user_ptr_id" FOREIGN KEY (author_id) REFERENCES public."Student"(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."Contributions" DROP CONSTRAINT "Contributions_author_id_c477906d_fk_Student_user_ptr_id";
       public       "   University Magazine Database Admin    false    223    3124    206            �           2606    42077 =   Contributions Contributions_faculty_id_50a7ea7f_fk_Faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contributions"
    ADD CONSTRAINT "Contributions_faculty_id_50a7ea7f_fk_Faculty_id" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."Contributions" DROP CONSTRAINT "Contributions_faculty_id_50a7ea7f_fk_Faculty_id";
       public       "   University Magazine Database Admin    false    221    3163    223            �           2606    50379 -   Guest Guest_faculty_id_979d3335_fk_Faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_faculty_id_979d3335_fk_Faculty_id" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_faculty_id_979d3335_fk_Faculty_id";
       public       "   University Magazine Database Admin    false    3163    221    230            �           2606    50372 1   Guest Guest_user_ptr_id_faff72bc_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_user_ptr_id_faff72bc_fk_users_user_id" FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_user_ptr_id_faff72bc_fk_users_user_id";
       public       "   University Magazine Database Admin    false    205    230    3121            ~           2606    17374 S   Marketing Coordinator Marketing Coordinator_faculty_id_413e7dff_fk_users_faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Marketing Coordinator"
    ADD CONSTRAINT "Marketing Coordinator_faculty_id_413e7dff_fk_users_faculty_id" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Marketing Coordinator" DROP CONSTRAINT "Marketing Coordinator_faculty_id_413e7dff_fk_users_faculty_id";
       public       "   University Magazine Database Admin    false    3163    221    218            w           2606    17435 1   Student Student_faculty_id_62921c6b_fk_Faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "Student_faculty_id_62921c6b_fk_Faculty_id" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public."Student" DROP CONSTRAINT "Student_faculty_id_62921c6b_fk_Faculty_id";
       public       "   University Magazine Database Admin    false    3163    206    221            v           2606    17171 5   Student Student_user_ptr_id_d04238db_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "Student_user_ptr_id_d04238db_fk_users_user_id" FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public."Student" DROP CONSTRAINT "Student_user_ptr_id_d04238db_fk_users_user_id";
       public       "   University Magazine Database Admin    false    206    205    3121            |           2606    17252 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       "   University Magazine Database Admin    false    3137    212    216            {           2606    17247 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       "   University Magazine Database Admin    false    216    214    3142            z           2606    17238 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       "   University Magazine Database Admin    false    208    3128    212            x           2606    17198 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       "   University Magazine Database Admin    false    208    210    3128            y           2606    17203 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public       "   University Magazine Database Admin    false    3121    210    205            }           2606    17338 L   Marketing Coordinator users_marketing_coor_user_ptr_id_94dd9e8f_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public."Marketing Coordinator"
    ADD CONSTRAINT users_marketing_coor_user_ptr_id_94dd9e8f_fk_users_use FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."Marketing Coordinator" DROP CONSTRAINT users_marketing_coor_user_ptr_id_94dd9e8f_fk_users_use;
       public       "   University Magazine Database Admin    false    218    3121    205                       2606    17343 O   Marketing Manager users_marketing_manager_user_ptr_id_051258ee_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Marketing Manager"
    ADD CONSTRAINT users_marketing_manager_user_ptr_id_051258ee_fk_users_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."Marketing Manager" DROP CONSTRAINT users_marketing_manager_user_ptr_id_051258ee_fk_users_user_id;
       public       "   University Magazine Database Admin    false    3121    205    219            �           2606    42053 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public       "   University Magazine Database Admin    false    3142    214    227            �           2606    42048 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public       "   University Magazine Database Admin    false    205    227    3121            �           2606    42067 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public       "   University Magazine Database Admin    false    3137    229    212            �           2606    42062 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public       "   University Magazine Database Admin    false    205    229    3121               8   x�32��H���Wp���M�+���42�24�24ճ41224�45�447������ 4y
�            x��=�r�ƙg�)pI�T;3!)ʲ}�D*�K����2S��g�M���NN~�=�j���$��v70C�s�a��E���n�>zvrtr4=>�}��w��w��g�_�:>:�ϣ��{y�,���u�su��x2��Y>;��Y��t��^=��m�sQ���V��W|�*S���5�����w3�����g�.n���_�+�;{��"��.{��������}�t�I6�.��n>�z{w��:×'��� ��>���aw�ne�ƴݴsk��R�}6�y?7uӗ��\�]�L����Vٺn-|f�lїe�+zx^ӌnݴ����zA���w�����n����:��������N�qU�{z7�VugK�����o��ij����8}i`>�� ^��Ya�0j�ݭ��,m��|4h^�kW-i�~�5�]��:�ݸF�V����0�~�리w��,{��l�4K�������R����0?B�WKP��C��]�5�Y����A%H�GBǔ|�pf�mg@��W1�5O�S�p�M��خ\��� �]"��r��!����j�N��hv��!yŮ���VYկ��`�sL��]�����![�K��s�9�S/��',���
;�>RCMs����,w������$~�A �RA�X�Z_�ۀ&fa[D���i�X����0;`K��k�j�����ζ���Xh�M$,�IQ�2"���Uv��s�:+4C�s،w��2�� ( �sW2�@ɦ�����,Y�o[å�������0��1�ϖt�p[��C�y�ٺ�J�,��.w�M��!G?�[�:��@A0�(Zh��h����ʋ�{bS��k��~�����:��[�B��+#	� X!�O��[�Q�Q�θ�d�B��x�W�>o]�r2
j��`Hd8������Յ��DC�W$�¨��2�P
��S}_]ם[�����?l`M��[�%2�dB37��`��� â��Q���:�{�r��7������	�Z�w�Ȣ,e'GG���E��;���L2��zh�ϳ��ȁ�����}��5,��XFa$�$�4P�,+��5�Rɰtbs�p���l��xM-r�_�&KkAX��A��U}�{P�����X��*MUek��pS���첏.�3[��
�cJxƺʴ,�� -����Y�����Y��o[�!8H�dk����$()�`?��S��z/{I�/�{�܎?8��T*HI�q��kA���GO�'�	2���O�u����#���I�2K� ���,P?���׮�/<�{���H������9��Ĳϲ��dF��O*Y��2���--*�Z�Ƅ��7���a-���xV_d��)MH1g&ܓIFu
@u#z	���=0���`��ïARN` �S!Y��U�5�ƴ
$�x� �+:���e�7:�n#f�:a sn��e3w�7G�}"�j�n@i���Uu' ��s�K��z��/�? A�2O���M&�8�/�K����
+�L?S�q
�խy��S9�1Hk�s�h������O�,|������$��V�*䁼�d�Q�n�d��	r�S�{�X/��e� ��K�y��zV��7���[�)]��P�BX

A�9�g� zɉ�(���Y'Q�Z�/~Ȗ���5G�m���"�w�8�z����k~5F���x��f�8� �!�L⒒�C+P*�rD�($�U�����/����.TH�4�O�a+��sP%�} Se�J��f�2����Aܐ�Ǽ�D@�c̃Ӄd��o�5�}��a#~���XoM_�t:{����
�}�����m���#3_��!敂$za:K�r�ys�sd.��W��ъ�I��&��&��xv�Aͩ�o��{�b�s���(E�l������iS8�f���ߞ��!s1��_8�{;ַ2w����b�V�Ǳdn�Q癳~:�]�6�9�2��Y�5<�
"M@[6��		n�/"�toK�؀�@�=y; [|"��~��߾ �&�z�C������ jY�An�:eX��s�ϳ̅��p�۸%�x���� u�l	+ ���� Z~��s�*u�߸%=�gۋ���Ѣ��� W�DLq��T��_Ђƻ�9��]�r�9w��E~�a7V\X�E�Ȁ��F�?M�	[/g'ٙ�`p|��"��l�ĤwnX��Cd���;;�6���4`� �cأ��)h*6�W����s�����_�ޔ��<�S0�I��r�а��5��q"�7�+��o� 	f	� ���؇5��H2"�9|����[�m:�8LAl�A0(�{�V3�����z�d+w�^wH3���`��n��E�}j�S?æ�y�
�-��!��\ob���?��9�#���!���1�v�������J=)T������Lb���1\Oc�Gp#%*�+k	;�X2T9��y�۠����q��dfX��)���f@<����ռ6����0��8���U��U �%uO�=1�&fm��k(����]<�.�/&�'�k�l�*��)�����_�~�IRI�Օ��}�y	#����
 gC�'C0h��%O�;\-Ah���t��?#:�2�'>$=��!�NFæ �
��Ex���_J0ض�ʊ��Y�񏇆+�qG����)��N���*T�#�rۯ�È���1!���D�*_���dc�����*))R�&۳� F�d��aFh2h�#D����_�`�zFe�i����I�`��mq#e�(c���lp�e��T�z	?��}���n.�ry�{<��+ZA��:�PQ�CTI��\�;���M� dq�I5��.9��ֶ.륣
B͙D�"1�&�������U]��P���j ��U]�ܻ����cRc�\>�Ee�4d�M���������=į���$�0��4�G�	HL��0A�Jo7]�SF�{ymV�ykP��ԁ�Z,,�އT�*�6`H��x+9k	 ?N��)0��1��`���0qLo��:�{s[���0�Fc��J�,��
9��7W�1��GwA�c�)�o��^�`׋d�N�j�P)��ggk"��^5�_WX�r9��}�2ZX=���-���䱬k���т�豨ꖫN����	��ܸd�3Ijb=ݤ��d�D�/1��p<�#�?���oϯҗ"��4̾VDR�����_"߽� �����qS`�}��ۦƷ:˧�r}T[��������Q��`.[�A۔;q|� ����(MН`L@"�R�^Q��.�4�@{z�_�]HK�<E�LByג�6��B�l7#B�y���`���4�4�ӈ���lQ�J*�jw�x$X�hZԔG�y`��1c0L��r�/J�o��� �������� p�f���c��H�5��b���P�e-�o݈ ���u�bE��y���ĥ���L�H*��ZrU��� ����Aah2(kN���]�doȂ��DTI� ����VM�5(-��߼~���� /�~;��;��g����h<vA��s�R{����!9�Ǥ8�z[�z�;h��WC��5�)�K����^R��l�4�C*��a4U"G�k����ɘ	U�K���|����áܬ1�fe�e��G�dƫge�US�,ef��v�L�v�Ɔ��$�T��oX��+Ä:��#���=�n�G���N�u��]01����lP��2�������1"pu���w�!�vj�"Xx*Y��0�f;��L+&/8�R�{lL����Z�D�Ͼ� ���ŗ��r����[��ARq�P�K�c��XbliٳG��\�ł�[�ȴPF:Za�utw���E=����	�h%A�Qb>���[Ӹ"U��1��l�8����ī��7��+r����S�XپS��J��$|�ԍx9�>���.x|D��j�o����c ����%�@[¦%J�m��A���l����߃e�8�"	��w����0�FLKQ��HE��B��3WjP�F+Sh�3tII�]    [LQ�8G1o?���с��c��Z�T(���6�K��2	D(���&\ T-ܲ/Y|�����.�.����Qq/�J٠�
D��`bZ���	�	�g��w}��2L1dH�!��I��{�z�DB(���pG` �i*��$���+"�\uZPE�q�E4v���}	d� ᆻj�I�4�%�Ĩ����=v�񸼵�[H2�ìIv�G��;�Doh��]�@����Pjo��/����?EP�jJ;J(�B$'����gi�,β�*Y����.U���
GQ�$�T<�������m8����h�X}N�W4�b�[���g� �Y���@�7��W	\���yH�։�%��T���C���DM���w�1e ���֖F2�A!�z�.����/�v�
�xl��sGއ֠_�V�?�5:�X
�d�'L���I�'�"ǮCڴE���8I��!=�P���%z/οf���l�*�W.P�R�ȁ�E��0z��&�dա��^�0_caAL�LR�1ń����o�ᰚ�����t���[�á��`Ql�hٰ���h*lL�[��ʚF�T���d�#�3��'�G���0�(-�Y�v�<T+�a��' %�,?���7W/�����D}.���٨�R=��v?�4���F�����H�s�A��yf4��>g���T��+�^!*�I��� �,K����>�c�}�:vj�R��<  �>�	H�V�h��aAl�H�R�+_Վ��s�6��6�=�aό�I��1�@ɏ\��)˱z��D��+���$�ߧ��c�R����GX�c�K�ȗw0o�`;��wFG%������@ ���	+ǭ@���N�G�����<iD{�"'~G��3`@#],A�Hc�TWK����B��49f��<szÔX*��m�m�K`�&�W��A>4v�NbnI�E�>�IzUP�����!�O+��	����;;by�p�QlϥLS8M�n�B������4��TT��J �\٤��"Sc������MpL��4I��d|B���K�M�щǬ2XwG�Abΰp�@��[P�Q%�E����9�< �|)�1ob�t|b�mf�W�L�b��(v{yu���&������*;�>{���孔���5Y;,p�^S�C=�����+2�h������$�}*[�����"�Xz�dZHn'��?]�2�����XF`"�y�ggd�Y��$}4�A�L�c.<����xi��>��,�Z���ȗa9�'F.h���޹������p�n���H���e-�Ȝ�킒+�W��32;�W�~��Ԋ3�����\t���9��U�~�ҡ�ש���ۆ;������ [����S<�e˥�,Ǭ.����[l#lټ~���sl[5�\��6�����F�-E!��u3�}��e�$Qq'��iRM��ƥ���%
�H/|���g�����$0�B	H2��di�Q�E���K��\��}j�&2,�gE�Pd.($�H"-��z�V�z\Ԇ[	 ;9�D-��f �#k+��p�Jqg E�`&��@��r"rɄ�2��*9&$�1u�Io�t*�!i�Āa�Hi�]%u����B�ǀ�=>!��
��3a�P�65L�iO�K3��JG2%���e�����v!���0��$	�t4�<Ls>@͹��*S��Bh�S���A� ��Ҍԅ�XWr���!���pi��~��3p]o���y�jr��/�����Ez�F�����>_���BY<�1�>R��er�c�ϯ� O_$��"�#�_'$�<�!Pc	�5[M�7c��QIm�r��"����z��ި���lKD������[�2�v��.xjXO:^<LLg����d*�^��t�/T��(�A���Zp���RyƂL6���_`Q&7��/R�)��Ze�ge�--��v�ࠃ	�X��0�яn�����Fe�h��cY�0fK���v�VL��ʭ�u!=���D��c_U�д;�І�� ��j������>�(/��|>��<`	���y�㤬c��;b뙢4Q�e�������f�P�m��Q��*(:�9yRj@�R��|���&�V �s�3�>d�"�� 5�0I�H�M�G�=����\ݭ�?g�"u�!��5T�� 5B�9��Y�8��D]<�L���`�b�W���3����������ܵy�i��؜��9o��x��.���V$�N&�Q� :�lKA��2~��k:��^R��b0 �o�v'Ԩ]Q�%�s*vŤ]t�_�K�~#�wFML�=�GҬ�o^<)7�3JQ�o�M,���dYjH�Q"hW02���N�����}�4�Ó#��j�J�W�;7�G��eϾ5� ��#U��B�|���d&��pLMx����(�tN�2P���-1�1���� ���ƴ��_^aC����K�pe��c6�kn���g8.��������݀�8��� �r[$�Q�J9�_�-nPe�L����|R.@���ʍ�}=X���#��=p��d���z,H����BG�d�����v������nԝ�\ڗ*��^���������6vv�x%�my��|7��4o��k8,�2䄃k�6���ż/����mH���R�3�x"���f��S�����	c��͎�>	��0'�a	ǼO�o���:!���{g�9�!�lIhG
�.��בv3$�����J[SW�J���tkܷ�Nt�0_�}D���dK�ѵ��}���.
�7^:�m恃�L	>l�r��{�ϩ#@ݻ��a�:�W��r��j0:P�Y��RK�4ii2[Ԝ��T�������p�l� ��ሿ�T�y����u�43�O� c��)�u�yk�W�7��5���[�P����kmzV8jr�ޛ�גIǔ 6����z�B�H�����N�	�D�"t�w¼5��ݨ4&2�p��ӳ)�ټ.v�ߴ`o!x|�g�Q�m�{1{Ze��&hY�|�9NKFks�Ӂ���:��d�n.���������n�Æ�ǳ���
f����	��>s�z>x�~A<��p�vd��^���ى*͈��ўd#S��>�I#ǈq+7�?��c##<�!\��C@ �R��c�����e�rS�=O�)�\�;w��;W��<?��<gz ��\\���|e�$H`���<LH93%�Obr�`�2$���D��'�l�g\��n<#���;g�3����|u�=���zC�(���p%f�<2SM����ȉ����y��'O㱚����-�
/�T95g͉�*=�%ՕQ�n����A���JX�Q�H�j���dx���W?��Mj\��p�/��ni'�3��d�
l��2,z���yݵ�ZKN~������\c&̤��Ńf'��b�]{����#�>��l�Z�&ܱB��2��yuTV���K �IL�4zr��&~��aԦ�(��G��E��J:�#qi)��	<��g6��0OL�M�S[m��� �$=����D�4I>b�X����D��~Ōpr*62����4�@9��1wض웤���g�K��+sA��NLEr��4|�����iu���}��T�4q0X8�p��.Q�Of�`�:^?�
��Q� ��Ev�
������ Q�߅��qs�N ��MR��'ͩNb����Յ_�s+g�醵)����8q����I[&4��֨��Q?T �Ts���N:��РM�rЁuO�$��� ^}�CFa�hwru�=�#��*�G�4��BP8�*k賐��FL��{�7R��$%����Ǆ_�+~(���(�"�̠_<Yt���cT�抒�6MHɹڐ���S+�,n�%/�
[�30B�F��7��p6y���ZYb[�6�``���?kt�э�4n���Gī�4�mr��܍g(]�$hzY�|E��F�;sπh�::�ap�6ɣF�ۇ�������0�4�fe��)�h�g� �:��V��*92�i)�l7|�u�lm��[t�[�� �  ��+��r��R�k���>��7v?�\耣P��&QR�|&*�,�.��qn�"/v�W']��}�h��[�/�3"��5��Etu�f��f��I�ֲ�2�9_%��In%�����T�:V-{�d[�]FI�Vⶻ�eۻ��������=K"ۣ����JOm����!x��(<
G,�P{��|-+j�Lr����D��񀞜�YP)^r���G�Z���~����0fVS.RaW-�79_j,Jm���,@�.���,@4=.2??�C�K���p/{r��4�}�E���$y,��D���3��<��J�$��k��R�����يND���5�!eP.��r�7��Iŵ���T���@�4!2�mL�'�����.l�b�(�+V��Vx����x7 =���e�����K��
66�R����u�>̿8��O��)�7�c��4�mO�񾉉�o(vq���닋���?eg����_?��ps.��O��I��q��p��E|,9�H����{;3�g���7/�7����4{[�&F�ȶ�{:z�p��lU��������z�U��j��yx���`��軟CK�=�M�����^�K��/�:~}<�7!�O�;y9;}�����$�ϛw���_�/��?�����q�'���t<�����	��ETnY̞x����������_|߂�wM�����;�oh���K�"_5���g_}���^B�         ;   x�3���4202�54�50�0,u���8�|�RƆU�\&���p�F�)�=... �z�      $   )   x�35�N�U��)���421"c��ļt�+F��� �$	4         �   x����
�0 ����K����@�,�!�whs�AoD��w��̽���J��i�-y��F�Q�*��,m6-� P`�28�\�?��y<�:?�Kj2������.����o���W1��{yh����Rd׌1�ۇ6H         j   x�5�K
�  ��x�^ �|�Q��� ��Hi�i	��]���a���m�;1JV�R�4�FԄ��ԌM	ER�b)Z�����ȸ.h@����㰝��o[s�g���Ow         z   x�-˱
�0 ���� �����F�\:7!Z�V����7?x��8�Ϸ4O�zk��B�"Ƌ5�Y�s���׆��gb����g@��k)���W�1��P^��]h�.0���u�R�� �            x������ � �            x������ � �         (  x�u��n�0E��W����Ǻ��UV�)"�ài�f���@�\����rrݩ�T}R�u2On4�Y��G�A�����a�9�kws��a�����3V��P+髿�\�ޛ><��=�o3����Q0��:�3��3ټV�?�۾I.�0�m_�a49�u��v�M_��^?��"�s���yE�C� F�iϟ��k�W��w+6�waߦ��ɹ����Z>��[�MK��g�r�fJj;҄?��|�S�\aeӓ������4g}#���%C�FHJF��I����aബai3�A���*��D3&E.%rLqB�n��ij��A�7l���H4��ʫ�QR�"�
O	rz�q�����ls��XG5DT�"�B��tE 4����_0�3g��u��*2��r��QQ�"|ˉ�\8��.�K8,m�"!�xGNeBp�"F��T��#é�,�c�>{�R:̸g��-.��;TJ��@�C�e�ӑ2]
��[j��ai��v&�t�;jS�H���#
Ր���ݴ ��Y�T! f$0*#�ĐF�������a��&���         �  x����n�6��� |��1Arx�M�:G�I��mQ���J��b�dHڸi�w�H��W�dop��~3��a�섹��!gTa����X ����(�Q�99��*/�b�)���GI�����* sd�m��
~/�B���(s�;�����O�8��Y��<����1L��g��<���&��n��Ҍ��z-̎a&��r!��a:��)]G��4�4J�i��ظM���fCf�� ��`.�WQ��������L�L2rC�d]�%�*����X\6,n��c��u�<�&�42F��N�<��]��W��m�_,o/E8ɻHK8x'jL3!�����ɀ8༆������a�k7�Y�13��Km擻_mǫU�4u��TI��>���������1V�\Pc%�>>:XdQ|I�Ӥ��?N��iB �s��ݖ9�c��P@=�}����31f��7
���)f����z|��&����?�?�k/0��Ic �J��Nu8�3%�ͥ��j5�Z;赙��5�\�,�
�}�wC1#�bx���l�ʘ	���P��F㯺]�}��9$q���B����o��L�Y��,Ѳ����P�&	�bRv,ł��=-�d��<�����Sm5��8�Eڨ����:�㕯��y���,]�j��'o�ڗy[��\�-y����=�m���6$�FgH>�!�1$���c�3�0g:�1�1�C��NoCzڐQJw�c�c23���ΐv�i�ړ��T�$�"�YGy�ɽ��v1.T�
���x���j����N��W�ީ��x�՟v2����Ts�����.���sr���e�V5�N#PV��y���]�H3t�ꊼ���W�����<�Q���㟢2Z��Պ���`�`���.TSˌ�_�ݩ�	>v�N�1!]�X&���<Q���-�2��gW��bS���I�/1�O~*�>����D�lǾ��ڋ��mg�)'����N����5)-�	�f�V��@X�h�*���[S�]�z��˼.S��iVT�����ة��=���RT���e��X������%���i��H���1�ON����t��Xo���6+�;s�%��wC�#p�U��)�Y�*��zFb,��"u���D�I���$iD_]�(���o~��V�{:,g�_�E=�"J��L��-�U���<]�(�W��@|}��|��f�	����cf:���:�7IsC�o�_n�����2�����_����?�;d��X�
�5N����|/���7�R��Y�e�6}"��5��5��d�[�Ħ�/���ܝ���c�Ќ����QU:*�x�`<ۮ��dc�Aȯ��=�ք�� ph��y�_M�A���1V�u����&�t��=��B� ����P��]�if�Ӣ�n�i����ӽF	�$f5�Y0ǂ�̰���g�9���K[~��s,>`���kԳ����$�fa_�?�8;�rv@�3$��b�d܀$�IB��dgHvH�i`Sdn��4i�RN�$���kgBn���v!��<���d��\�R����$= 2k~)�2��wKq�V�����������B�&"�m��#�f��/{��K�܌��� d�ь��5�]a�Yu�+��=B�1סvSP����P@:G��`�#�ֆ9s�#ͱ�@0�j�(�����hM�Ӭ*�´w�l�G�&%����	ч��&�?a�p`���Wң���rt�          �   x�e�K
�0D��aJ���R(j⺦�$y��7ud#4z���h��Y��.��a��,Q|���%Bc��f$�S�i&/lKo#�v9��9N�2��a���䤚����D�2�͵L6Ym�����P_tY��j��,V�Z�o64�_;�ԋ%��} _�_G      	   y  x����n�8E�������B�Է@�c�[�my$9���):"�-A��Q-��(8܇�J)�����|@��r?_+���@������H��᭻��u?n�3��Yc�`:��K{�>�@���9
��;����7����}�|}<�bXY���C#��~������ݵoR�.�!7�̦s�����/�>��q�D+R�����q:�Ӧ ��ylzk�K;���\���ss=���X��)�D����Kݞ�Y�8�@%�I��#��6�7Xk�&* a�s��1̯���/�d�X`�?��O3zχ~���v%N9%�^��c=v��R��]�/�0ԧ/4�m����點;��j�	�6�z�f���f"�D;����INI�#)	��oҫ������L���2FkH�%������O�W*�*)��fz��G����d*�&~�O�Q�WH�Kp�!�!h ���:�1xC �C�B�ks�	zA �J�W�J��@�L0z�_��Q�3�\����b.,8H��&��U�������RPqYG���������}�1��R[�S6g�650�	$A��~R��&>���n�٦ӯ�V�*v2�T�"M�w�ǰ��- �b[)S8��8B`��R���ɤ�Uz2m�1y�g��	<I �yP�����o/[���fR�>e���C[�q�SV+��A�M\�T��e��^-	�"��+�s��B;Z]�b=X�	d_�V�Wˮ�erw�[��ݭ��S_�f���4�UD4�\.oi.4��	V�"f�3і�Ad���Ъ2�������p��m`XjRыx&��9�` :�$�@�Uġ�.�@C"ж��Y�,�ҥ�.oI嚤�Z�t�U�!���%�4��%�Ap�9	�aX�����]�1�\��v����*�W3�{?�h׭Ar]�t��rO�yR[��&#�i����e-���:���B��v����{�q8��d�����n��4\�e�S�p�	���E��������$�bS��&��Ҹ%�d��N$֜�L�a"m�=��H�5��	���f����!�u� �'B��M"eCFX$�EU(2]CxK�uz&j��{3����iV����������� ����         '  x�]�Ɏ�HEו_����`���f�1`�d0�<~}g�RY]-���ν�OLC�B����6���]��5vQ�z��>�a���N�Rє�#���|:�p�ew���D��o�r����)�i���N|g8;���ͪ7��Fn�����u<�aQ�v�g;���]�#��ld>oθڋm�;%�s�<�꺒R�L�}�J�/�4��=�I���W1�qɉR���$�L�<R`Q؊A��%�2�**�J��+3����˪��k�d��E���;�	4���O��@��t��2c���0�֟;n�A:6<��'��S"ڢ��ɗD�0R�h�q$ߚj���Rw'�yJ����=�7b|k{%,v�3�ܘ��E,��D�cB�)�]����x��xm{w�C�ewK9�G����_�_YJ��jͥ��^b��ro�w�#it�E�?��t����S�J��'��̴�d؃6�v*�S�дG$�NB"��x�oITh��6�f�~���T�l�"�5�/L��ptF��R��Z=��p���R��m��O��?�/^����p�@�C �G?�W��%�OdW�c��1����p�&��0B����L�l�- V���c[�)�"m䯹8%�v!����@q�I~��)�8�i�lQ7B���he���O-RQ�0q9{mrP����x�t�ㅌ-�._~���J�����G��d�ă[��K�Q�Y`�:���8������Ӷ��©MAz"�dh�e_m,"��1�
�r����ڙ�$&��me�\��w�r"rhJ�z��4�݁P����Tqr���׼ݮl�$N7lesm���x�� |& �oQ���������X�)����5��ϝ��w�+�e5�:�ss���NN��"q�pAe��?s�tM�i�lb±�=�2��xH��P>#���1�F�i�o/#"TB�	��n��m�����=mˢC^^�Iv}�;9f#J�\Ŷ������=�}��Y2�b)��������e�*Y0����������E5�ߍ��!�3 |@ ��������?a�Ŋ         [  x�u�]o�@�k����t�o�&k��XK+�d� �Q(������f7Vg�OΓ7��"�,�{�
0�:���t�<m��/bc�vT����O�o"�e�%-+hSo�\7��v�CC��Q����IjCn�ZJ�)(�叏,�)���"�M� "=�ZU+9�����n6�ˌM�Դ7��Z�i:N����y����P�;_���v��t���1�ft�wY[b�P|��e� ���K�)���� q��K��Qq]m+�!�d�{%��ʅ����K�'��PyIH��3�H����O��~���B �rn�VA�J���J7�͘��]�_5rcx���֎�H��W��y�Rx��vHù�����ތ��xZx}���'5�L�\^+	��#h��A�̤�7�Ȣ�����[]�����#5����Lw�d_tBa>r���ܞ-p�-�δ�u<q�fu��M�+�pDM�u��&��:�oX�Gf�� ��ʨ�u���%����q6����$f�z3��IT-�ͦj��0����t#>�?Σ��90(6��8�A�2�����O)d1pθqAj���iJ%!=      !      x������ � �      #      x������ � �     