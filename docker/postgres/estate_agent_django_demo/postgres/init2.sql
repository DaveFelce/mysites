-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.1
\connect estateagent

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: article; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE article (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    short_description character varying(50) NOT NULL,
    content text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    article_link_image character varying(100) NOT NULL
);


ALTER TABLE article OWNER TO estateagent;

--
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE article_id_seq OWNER TO estateagent;

--
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE article_id_seq OWNED BY article.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO estateagent;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO estateagent;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO estateagent;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO estateagent;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO estateagent;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO estateagent;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO estateagent;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO estateagent;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO estateagent;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO estateagent;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO estateagent;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO estateagent;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO estateagent;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO estateagent;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO estateagent;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO estateagent;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_flatpage; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE django_flatpage (
    id integer NOT NULL,
    url character varying(100) NOT NULL,
    title character varying(200) NOT NULL,
    content text NOT NULL,
    enable_comments boolean NOT NULL,
    template_name character varying(70) NOT NULL,
    registration_required boolean NOT NULL
);


ALTER TABLE django_flatpage OWNER TO estateagent;

--
-- Name: django_flatpage_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE django_flatpage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_flatpage_id_seq OWNER TO estateagent;

--
-- Name: django_flatpage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE django_flatpage_id_seq OWNED BY django_flatpage.id;


--
-- Name: django_flatpage_sites; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE django_flatpage_sites (
    id integer NOT NULL,
    flatpage_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE django_flatpage_sites OWNER TO estateagent;

--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE django_flatpage_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_flatpage_sites_id_seq OWNER TO estateagent;

--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE django_flatpage_sites_id_seq OWNED BY django_flatpage_sites.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO estateagent;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO estateagent;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO estateagent;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO estateagent;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO estateagent;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: document; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE document (
    id integer NOT NULL,
    notes text NOT NULL,
    uri text NOT NULL,
    property_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE document OWNER TO estateagent;

--
-- Name: document_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE document_id_seq OWNER TO estateagent;

--
-- Name: document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE document_id_seq OWNED BY document.id;


--
-- Name: document_user_property; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE document_user_property (
    id integer NOT NULL,
    "Document_id" integer NOT NULL,
    property_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE document_user_property OWNER TO estateagent;

--
-- Name: document_user_property_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE document_user_property_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE document_user_property_id_seq OWNER TO estateagent;

--
-- Name: document_user_property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE document_user_property_id_seq OWNED BY document_user_property.id;


--
-- Name: people_details; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE people_details (
    id integer NOT NULL,
    address text NOT NULL,
    town_or_city character varying(100) NOT NULL,
    county character varying(100) NOT NULL,
    postcode character varying(10) NOT NULL,
    number character varying(30) NOT NULL,
    required_rooms integer,
    required_floors integer,
    required_bathrooms integer,
    user_id integer NOT NULL,
    required_bedrooms integer,
    email character varying(254) NOT NULL,
    image_original character varying(100) NOT NULL
);


ALTER TABLE people_details OWNER TO estateagent;

--
-- Name: people_details_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE people_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE people_details_id_seq OWNER TO estateagent;

--
-- Name: people_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE people_details_id_seq OWNED BY people_details.id;


--
-- Name: property; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE property (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    address text NOT NULL,
    town_or_city character varying(100) NOT NULL,
    county character varying(100) NOT NULL,
    postcode character varying(10) NOT NULL,
    rooms integer NOT NULL,
    floors integer NOT NULL,
    bathrooms integer NOT NULL,
    user_id integer NOT NULL,
    for_rent boolean NOT NULL,
    updated timestamp with time zone NOT NULL,
    bedrooms integer NOT NULL,
    created timestamp with time zone NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    short_description character varying(50) NOT NULL,
    image_standard character varying(100) NOT NULL,
    image_thumbnail character varying(100) NOT NULL
);


ALTER TABLE property OWNER TO estateagent;

--
-- Name: property_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE property_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE property_id_seq OWNER TO estateagent;

--
-- Name: property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE property_id_seq OWNED BY property.id;


--
-- Name: viewing; Type: TABLE; Schema: public; Owner: estateagent
--

CREATE TABLE viewing (
    id integer NOT NULL,
    "time" text NOT NULL,
    notes text NOT NULL,
    outcome text NOT NULL,
    property_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE viewing OWNER TO estateagent;

--
-- Name: viewing_id_seq; Type: SEQUENCE; Schema: public; Owner: estateagent
--

CREATE SEQUENCE viewing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE viewing_id_seq OWNER TO estateagent;

--
-- Name: viewing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estateagent
--

ALTER SEQUENCE viewing_id_seq OWNED BY viewing.id;


--
-- Name: article id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY article ALTER COLUMN id SET DEFAULT nextval('article_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_flatpage id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_flatpage ALTER COLUMN id SET DEFAULT nextval('django_flatpage_id_seq'::regclass);


--
-- Name: django_flatpage_sites id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_flatpage_sites ALTER COLUMN id SET DEFAULT nextval('django_flatpage_sites_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: document id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document ALTER COLUMN id SET DEFAULT nextval('document_id_seq'::regclass);


--
-- Name: document_user_property id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document_user_property ALTER COLUMN id SET DEFAULT nextval('document_user_property_id_seq'::regclass);


--
-- Name: people_details id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY people_details ALTER COLUMN id SET DEFAULT nextval('people_details_id_seq'::regclass);


--
-- Name: property id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY property ALTER COLUMN id SET DEFAULT nextval('property_id_seq'::regclass);


--
-- Name: viewing id; Type: DEFAULT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY viewing ALTER COLUMN id SET DEFAULT nextval('viewing_id_seq'::regclass);


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY article (id, title, short_description, content, created, updated, article_link_image) FROM stdin;
\.


--
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('article_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add article	1	add_article
2	Can change article	1	change_article
3	Can delete article	1	delete_article
4	Can add details	2	add_details
5	Can change details	2	change_details
6	Can delete details	2	delete_details
7	Can add viewing	3	add_viewing
8	Can change viewing	3	change_viewing
9	Can delete viewing	3	delete_viewing
10	Can add property	4	add_property
11	Can change property	4	change_property
12	Can delete property	4	delete_property
13	Can add document user property	5	add_documentuserproperty
14	Can change document user property	5	change_documentuserproperty
15	Can delete document user property	5	delete_documentuserproperty
16	Can add document	6	add_document
17	Can change document	6	change_document
18	Can delete document	6	delete_document
19	Can add log entry	7	add_logentry
20	Can change log entry	7	change_logentry
21	Can delete log entry	7	delete_logentry
22	Can add group	8	add_group
23	Can change group	8	change_group
24	Can delete group	8	delete_group
25	Can add user	9	add_user
26	Can change user	9	change_user
27	Can delete user	9	delete_user
28	Can add permission	10	add_permission
29	Can change permission	10	change_permission
30	Can delete permission	10	delete_permission
31	Can add content type	11	add_contenttype
32	Can change content type	11	change_contenttype
33	Can delete content type	11	delete_contenttype
34	Can add flat page	12	add_flatpage
35	Can change flat page	12	change_flatpage
36	Can delete flat page	12	delete_flatpage
37	Can add session	13	add_session
38	Can change session	13	change_session
39	Can delete session	13	delete_session
40	Can add site	14	add_site
41	Can change site	14	change_site
42	Can delete site	14	delete_site
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('auth_permission_id_seq', 42, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	articles	article
2	people	details
3	places	viewing
4	places	property
5	documents	documentuserproperty
6	documents	document
7	admin	logentry
8	auth	group
9	auth	user
10	auth	permission
11	contenttypes	contenttype
12	flatpages	flatpage
13	sessions	session
14	sites	site
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);


--
-- Data for Name: django_flatpage; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY django_flatpage (id, url, title, content, enable_comments, template_name, registration_required) FROM stdin;
\.


--
-- Name: django_flatpage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('django_flatpage_id_seq', 1, false);


--
-- Data for Name: django_flatpage_sites; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY django_flatpage_sites (id, flatpage_id, site_id) FROM stdin;
\.


--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('django_flatpage_sites_id_seq', 1, false);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-04-19 19:08:39.302499+00
2	auth	0001_initial	2017-04-19 19:08:39.383107+00
3	admin	0001_initial	2017-04-19 19:08:39.548675+00
4	admin	0002_logentry_remove_auto_add	2017-04-19 19:08:39.750158+00
5	articles	0001_initial	2017-04-19 19:08:39.895315+00
6	contenttypes	0002_remove_content_type_name	2017-04-19 19:08:56.478276+00
7	auth	0002_alter_permission_name_max_length	2017-04-19 19:08:56.546155+00
8	auth	0003_alter_user_email_max_length	2017-04-19 19:08:56.653062+00
9	auth	0004_alter_user_username_opts	2017-04-19 19:08:56.729342+00
10	auth	0005_alter_user_last_login_null	2017-04-19 19:08:56.796182+00
11	auth	0006_require_contenttypes_0002	2017-04-19 19:08:56.874784+00
12	auth	0007_alter_validators_add_error_messages	2017-04-19 19:08:56.954182+00
13	auth	0008_alter_user_username_max_length	2017-04-19 19:08:57.037807+00
14	people	0001_initial	2017-04-19 19:08:57.127163+00
15	places	0001_initial	2017-04-19 19:08:57.211873+00
16	documents	0001_initial	2017-04-19 19:08:57.276416+00
17	sites	0001_initial	2017-04-19 19:08:57.344343+00
18	flatpages	0001_initial	2017-04-19 19:08:57.418219+00
19	sessions	0001_initial	2017-04-19 19:08:57.492628+00
20	sites	0002_alter_domain_unique	2017-04-19 19:08:57.578812+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: document; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY document (id, notes, uri, property_id, user_id) FROM stdin;
\.


--
-- Name: document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('document_id_seq', 1, false);


--
-- Data for Name: document_user_property; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY document_user_property (id, "Document_id", property_id, user_id) FROM stdin;
\.


--
-- Name: document_user_property_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('document_user_property_id_seq', 1, false);


--
-- Data for Name: people_details; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY people_details (id, address, town_or_city, county, postcode, number, required_rooms, required_floors, required_bathrooms, user_id, required_bedrooms, email, image_original) FROM stdin;
\.


--
-- Name: people_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('people_details_id_seq', 1, false);


--
-- Data for Name: property; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY property (id, name, address, town_or_city, county, postcode, rooms, floors, bathrooms, user_id, for_rent, updated, bedrooms, created, description, price, short_description, image_standard, image_thumbnail) FROM stdin;
\.


--
-- Name: property_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('property_id_seq', 1, false);


--
-- Data for Name: viewing; Type: TABLE DATA; Schema: public; Owner: estateagent
--

COPY viewing (id, "time", notes, outcome, property_id, user_id) FROM stdin;
\.


--
-- Name: viewing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estateagent
--

SELECT pg_catalog.setval('viewing_id_seq', 1, false);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_flatpage django_flatpage_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_flatpage
    ADD CONSTRAINT django_flatpage_pkey PRIMARY KEY (id);


--
-- Name: django_flatpage_sites django_flatpage_sites_flatpage_id_0d29d9d1_uniq; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_flatpage_id_0d29d9d1_uniq UNIQUE (flatpage_id, site_id);


--
-- Name: django_flatpage_sites django_flatpage_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: document document_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document
    ADD CONSTRAINT document_pkey PRIMARY KEY (id);


--
-- Name: document_user_property document_user_property_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document_user_property
    ADD CONSTRAINT document_user_property_pkey PRIMARY KEY (id);


--
-- Name: people_details people_details_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY people_details
    ADD CONSTRAINT people_details_pkey PRIMARY KEY (id);


--
-- Name: people_details people_details_user_id_key; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY people_details
    ADD CONSTRAINT people_details_user_id_key UNIQUE (user_id);


--
-- Name: property property_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY property
    ADD CONSTRAINT property_pkey PRIMARY KEY (id);


--
-- Name: viewing viewing_pkey; Type: CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY viewing
    ADD CONSTRAINT viewing_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_flatpage_572d4e42; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_flatpage_572d4e42 ON django_flatpage USING btree (url);


--
-- Name: django_flatpage_sites_9365d6e7; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_flatpage_sites_9365d6e7 ON django_flatpage_sites USING btree (site_id);


--
-- Name: django_flatpage_sites_c3368d3a; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_flatpage_sites_c3368d3a ON django_flatpage_sites USING btree (flatpage_id);


--
-- Name: django_flatpage_url_41612362_like; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_flatpage_url_41612362_like ON django_flatpage USING btree (url varchar_pattern_ops);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);


--
-- Name: document_6bb837ff; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX document_6bb837ff ON document USING btree (property_id);


--
-- Name: document_e8701ad4; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX document_e8701ad4 ON document USING btree (user_id);


--
-- Name: document_user_property_5e8df08a; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX document_user_property_5e8df08a ON document_user_property USING btree ("Document_id");


--
-- Name: document_user_property_6bb837ff; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX document_user_property_6bb837ff ON document_user_property USING btree (property_id);


--
-- Name: document_user_property_e8701ad4; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX document_user_property_e8701ad4 ON document_user_property USING btree (user_id);


--
-- Name: property_e8701ad4; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX property_e8701ad4 ON property USING btree (user_id);


--
-- Name: viewing_6bb837ff; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX viewing_6bb837ff ON viewing USING btree (property_id);


--
-- Name: viewing_e8701ad4; Type: INDEX; Schema: public; Owner: estateagent
--

CREATE INDEX viewing_e8701ad4 ON viewing USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_flatpage_sites django_flatpage_site_flatpage_id_078bbc8b_fk_django_flatpage_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_flatpage_sites
    ADD CONSTRAINT django_flatpage_site_flatpage_id_078bbc8b_fk_django_flatpage_id FOREIGN KEY (flatpage_id) REFERENCES django_flatpage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_flatpage_sites django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: document document_property_id_53be79da_fk_property_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document
    ADD CONSTRAINT document_property_id_53be79da_fk_property_id FOREIGN KEY (property_id) REFERENCES property(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: document document_user_id_9e7ccb71_fk_people_details_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document
    ADD CONSTRAINT document_user_id_9e7ccb71_fk_people_details_id FOREIGN KEY (user_id) REFERENCES people_details(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: document_user_property document_user_property_Document_id_b5a441ac_fk_document_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document_user_property
    ADD CONSTRAINT "document_user_property_Document_id_b5a441ac_fk_document_id" FOREIGN KEY ("Document_id") REFERENCES document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: document_user_property document_user_property_property_id_ef48246e_fk_property_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document_user_property
    ADD CONSTRAINT document_user_property_property_id_ef48246e_fk_property_id FOREIGN KEY (property_id) REFERENCES property(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: document_user_property document_user_property_user_id_4ede1f99_fk_people_details_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY document_user_property
    ADD CONSTRAINT document_user_property_user_id_4ede1f99_fk_people_details_id FOREIGN KEY (user_id) REFERENCES people_details(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_details people_details_user_id_c7a78b95_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY people_details
    ADD CONSTRAINT people_details_user_id_c7a78b95_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: property property_user_id_cf80ab23_fk_people_details_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY property
    ADD CONSTRAINT property_user_id_cf80ab23_fk_people_details_id FOREIGN KEY (user_id) REFERENCES people_details(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: viewing viewing_property_id_43a7b7ff_fk_property_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY viewing
    ADD CONSTRAINT viewing_property_id_43a7b7ff_fk_property_id FOREIGN KEY (property_id) REFERENCES property(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: viewing viewing_user_id_054c11c7_fk_people_details_id; Type: FK CONSTRAINT; Schema: public; Owner: estateagent
--

ALTER TABLE ONLY viewing
    ADD CONSTRAINT viewing_user_id_054c11c7_fk_people_details_id FOREIGN KEY (user_id) REFERENCES people_details(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

