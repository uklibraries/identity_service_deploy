--
-- PostgreSQL database dump
--

\restrict MAJLFe5YbbAr9QOeggMpdFd4uFzo5v2hfW4WPjb9fVb9KY5BuuWS9AZDz5EkqqU

-- Dumped from database version 17.6 (Debian 17.6-2.pgdg12+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-2.pgdg12+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.minter_minter DROP CONSTRAINT minter_minter_naan_id_4946231a_fk_minter_naan_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.binder_role DROP CONSTRAINT binder_role_naan_id_dd6fa843_fk_minter_naan_id;
ALTER TABLE ONLY public.binder_ark DROP CONSTRAINT binder_ark_role_id_137f75b8_fk_binder_role_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.minter_minter_template_6e55513c_like;
DROP INDEX public.minter_minter_shoulder_e2a15413_like;
DROP INDEX public.minter_minter_naan_id_4946231a;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.binder_role_naan_id_dd6fa843;
DROP INDEX public.binder_ark_role_id_137f75b8;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.binder_ark DROP CONSTRAINT unique_identifier_role_combination;
ALTER TABLE ONLY public.minter_naan DROP CONSTRAINT minter_naan_pkey;
ALTER TABLE ONLY public.minter_naan DROP CONSTRAINT minter_naan_number_key;
ALTER TABLE ONLY public.minter_minter DROP CONSTRAINT minter_minter_template_key;
ALTER TABLE ONLY public.minter_minter DROP CONSTRAINT minter_minter_shoulder_key;
ALTER TABLE ONLY public.minter_minter DROP CONSTRAINT minter_minter_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.binder_role DROP CONSTRAINT binder_role_pkey;
ALTER TABLE ONLY public.binder_ark DROP CONSTRAINT binder_ark_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
DROP TABLE public.minter_naan;
DROP TABLE public.minter_minter;
DROP TABLE public.django_session;
DROP TABLE public.django_migrations;
DROP TABLE public.django_content_type;
DROP TABLE public.django_admin_log;
DROP TABLE public.binder_role;
DROP TABLE public.binder_ark;
DROP TABLE public.auth_user_user_permissions;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP TABLE public.auth_permission;
DROP TABLE public.auth_group_permissions;
DROP TABLE public.auth_group;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO iduser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO iduser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO iduser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.auth_user (
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


ALTER TABLE public.auth_user OWNER TO iduser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO iduser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO iduser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: binder_ark; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.binder_ark (
    id bigint NOT NULL,
    identifier character varying(255) NOT NULL,
    role_id bigint,
    metadata jsonb NOT NULL
);


ALTER TABLE public.binder_ark OWNER TO iduser;

--
-- Name: binder_ark_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.binder_ark ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.binder_ark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: binder_role; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.binder_role (
    id bigint NOT NULL,
    naan_id bigint,
    name character varying(255) NOT NULL
);


ALTER TABLE public.binder_role OWNER TO iduser;

--
-- Name: binder_role_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.binder_role ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.binder_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO iduser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO iduser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO iduser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO iduser;

--
-- Name: minter_minter; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.minter_minter (
    id bigint NOT NULL,
    naan_id bigint,
    shoulder character varying(5) NOT NULL,
    state jsonb NOT NULL,
    template character varying(64) NOT NULL
);


ALTER TABLE public.minter_minter OWNER TO iduser;

--
-- Name: minter_minter_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.minter_minter ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.minter_minter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: minter_naan; Type: TABLE; Schema: public; Owner: iduser
--

CREATE TABLE public.minter_naan (
    id bigint NOT NULL,
    number integer NOT NULL,
    organization character varying(255) NOT NULL,
    abbreviation character varying(5) NOT NULL
);


ALTER TABLE public.minter_naan OWNER TO iduser;

--
-- Name: minter_naan_id_seq; Type: SEQUENCE; Schema: public; Owner: iduser
--

ALTER TABLE public.minter_naan ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.minter_naan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add naan	7	add_naan
26	Can change naan	7	change_naan
27	Can delete naan	7	delete_naan
28	Can view naan	7	view_naan
29	Can add minter	8	add_minter
30	Can change minter	8	change_minter
31	Can delete minter	8	delete_minter
32	Can view minter	8	view_minter
33	Can add role	9	add_role
34	Can change role	9	change_role
35	Can delete role	9	delete_role
36	Can view role	9	view_role
37	Can add ark	10	add_ark
38	Can change ark	10	change_ark
39	Can delete ark	10	delete_ark
40	Can view ark	10	view_ark
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1000000$CePoyhLWJuORGBZXBMyCIK$Z3WhKvAtQkr75dLQaaNJg6W7duJ3ELFv8m7ghkgs6oA=	2025-10-22 17:33:27.314+00	t	admin			admin@invalid.invalid	t	t	2025-10-10 13:17:34.485+00
2	pbkdf2_sha256$1000000$VFI6TJic5lTip7qYF1V3LU$jlpCi7gcQfHo3zgWZEgC5nvuX3aEVvimQKjzLKDnlwA=	\N	f	apiuser			apiuser@invalid.invalid	f	t	2025-10-10 13:17:35.592+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: binder_ark; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.binder_ark (id, identifier, role_id, metadata) FROM stdin;
\.


--
-- Data for Name: binder_role; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.binder_role (id, naan_id, name) FROM stdin;
1	1	KUDL
2	1	ExploreUK
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	minter	naan
8	minter	minter
9	binder	role
10	binder	ark
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-12-03 13:30:35.566272+00
2	auth	0001_initial	2025-12-03 13:30:35.575714+00
3	admin	0001_initial	2025-12-03 13:30:35.57933+00
4	admin	0002_logentry_remove_auto_add	2025-12-03 13:30:35.581291+00
5	admin	0003_logentry_add_action_flag_choices	2025-12-03 13:30:35.58331+00
6	contenttypes	0002_remove_content_type_name	2025-12-03 13:30:35.587121+00
7	auth	0002_alter_permission_name_max_length	2025-12-03 13:30:35.589156+00
8	auth	0003_alter_user_email_max_length	2025-12-03 13:30:35.590907+00
9	auth	0004_alter_user_username_opts	2025-12-03 13:30:35.593003+00
10	auth	0005_alter_user_last_login_null	2025-12-03 13:30:35.594872+00
11	auth	0006_require_contenttypes_0002	2025-12-03 13:30:35.595166+00
12	auth	0007_alter_validators_add_error_messages	2025-12-03 13:30:35.597179+00
13	auth	0008_alter_user_username_max_length	2025-12-03 13:30:35.600046+00
14	auth	0009_alter_user_last_name_max_length	2025-12-03 13:30:35.602232+00
15	auth	0010_alter_group_name_max_length	2025-12-03 13:30:35.604475+00
16	auth	0011_update_proxy_permissions	2025-12-03 13:30:35.608579+00
17	auth	0012_alter_user_first_name_max_length	2025-12-03 13:30:35.610619+00
18	minter	0001_initial	2025-12-03 13:30:35.611752+00
19	minter	0002_minter	2025-12-03 13:30:35.612695+00
20	minter	0003_minter_naan_minter_shoulder_minter_state_and_more	2025-12-03 13:30:35.617251+00
21	binder	0001_initial	2025-12-03 13:30:35.618219+00
22	binder	0002_role_naan	2025-12-03 13:30:35.620779+00
23	binder	0003_role_name	2025-12-03 13:30:35.621786+00
24	binder	0004_ark	2025-12-03 13:30:35.624158+00
25	binder	0005_remove_ark_naan_alter_ark_identifier_and_more	2025-12-03 13:30:35.628122+00
26	binder	0006_ark_metadata	2025-12-03 13:30:35.629973+00
27	sessions	0001_initial	2025-12-03 13:30:35.631756+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
tkvevwd93srzy2saqd8xlusqaqmtflyo	.eJxVjDsOwjAQBe_iGllef-QVJT1nsNbrNQ6gWIqTCnF3iJQC2jcz76USbWtL25AlTUWdFajT75aJHzLvoNxpvnXNfV6XKetd0Qcd-tqLPC-H-3fQaLRvbVBEyCDYYJG42Ew1uIhAwdUs5Kz1QhxqQA9gI4M3DGSYPGaMXr0_7dU33g:1vBciF:xwcXImqj7QOzp_J7YiURD0QziFTWkRP9yDs_txE14Wc	2025-11-05 17:33:27.315+00
\.


--
-- Data for Name: minter_minter; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.minter_minter (id, naan_id, shoulder, state, template) FROM stdin;
2	1	xt7	{"naan": "16417", "counter": 0, "template": "xt7.reeedeeedk", "active_buckets": [{"top": 203011373, "base": 0, "offset": 0}, {"top": 203011373, "base": 203011373, "offset": 0}, {"top": 203011373, "base": 406022746, "offset": 0}, {"top": 203011373, "base": 609034119, "offset": 0}, {"top": 203011373, "base": 812045492, "offset": 0}, {"top": 203011373, "base": 1015056865, "offset": 0}, {"top": 203011373, "base": 1218068238, "offset": 0}, {"top": 203011373, "base": 1421079611, "offset": 0}, {"top": 203011373, "base": 1624090984, "offset": 0}, {"top": 203011373, "base": 1827102357, "offset": 0}, {"top": 203011373, "base": 2030113730, "offset": 0}, {"top": 203011373, "base": 2233125103, "offset": 0}, {"top": 203011373, "base": 2436136476, "offset": 0}, {"top": 203011373, "base": 2639147849, "offset": 0}, {"top": 203011373, "base": 2842159222, "offset": 0}, {"top": 203011373, "base": 3045170595, "offset": 0}, {"top": 203011373, "base": 3248181968, "offset": 0}, {"top": 203011373, "base": 3451193341, "offset": 0}, {"top": 203011373, "base": 3654204714, "offset": 0}, {"top": 203011373, "base": 3857216087, "offset": 0}, {"top": 203011373, "base": 4060227460, "offset": 0}, {"top": 203011373, "base": 4263238833, "offset": 0}, {"top": 203011373, "base": 4466250206, "offset": 0}, {"top": 203011373, "base": 4669261579, "offset": 0}, {"top": 203011373, "base": 4872272952, "offset": 0}, {"top": 203011373, "base": 5075284325, "offset": 0}, {"top": 203011373, "base": 5278295698, "offset": 0}, {"top": 203011373, "base": 5481307071, "offset": 0}, {"top": 203011373, "base": 5684318444, "offset": 0}, {"top": 203011373, "base": 5887329817, "offset": 0}, {"top": 203011373, "base": 6090341190, "offset": 0}, {"top": 203011373, "base": 6293352563, "offset": 0}, {"top": 203011373, "base": 6496363936, "offset": 0}, {"top": 203011373, "base": 6699375309, "offset": 0}, {"top": 203011373, "base": 6902386682, "offset": 0}, {"top": 203011373, "base": 7105398055, "offset": 0}, {"top": 203011373, "base": 7308409428, "offset": 0}, {"top": 203011373, "base": 7511420801, "offset": 0}, {"top": 203011373, "base": 7714432174, "offset": 0}, {"top": 203011373, "base": 7917443547, "offset": 0}, {"top": 203011373, "base": 8120454920, "offset": 0}, {"top": 203011373, "base": 8323466293, "offset": 0}, {"top": 203011373, "base": 8526477666, "offset": 0}, {"top": 203011373, "base": 8729489039, "offset": 0}, {"top": 203011373, "base": 8932500412, "offset": 0}, {"top": 203011373, "base": 9135511785, "offset": 0}, {"top": 203011373, "base": 9338523158, "offset": 0}, {"top": 203011373, "base": 9541534531, "offset": 0}, {"top": 203011373, "base": 9744545904, "offset": 0}, {"top": 203011373, "base": 9947557277, "offset": 0}, {"top": 203011373, "base": 10150568650, "offset": 0}, {"top": 203011373, "base": 10353580023, "offset": 0}, {"top": 203011373, "base": 10556591396, "offset": 0}, {"top": 203011373, "base": 10759602769, "offset": 0}, {"top": 203011373, "base": 10962614142, "offset": 0}, {"top": 203011373, "base": 11165625515, "offset": 0}, {"top": 203011373, "base": 11368636888, "offset": 0}, {"top": 203011373, "base": 11571648261, "offset": 0}, {"top": 203011373, "base": 11774659634, "offset": 0}, {"top": 203011373, "base": 11977671007, "offset": 0}, {"top": 203011373, "base": 12180682380, "offset": 0}, {"top": 203011373, "base": 12383693753, "offset": 0}, {"top": 203011373, "base": 12586705126, "offset": 0}, {"top": 203011373, "base": 12789716499, "offset": 0}, {"top": 203011373, "base": 12992727872, "offset": 0}, {"top": 203011373, "base": 13195739245, "offset": 0}, {"top": 203011373, "base": 13398750618, "offset": 0}, {"top": 203011373, "base": 13601761991, "offset": 0}, {"top": 203011373, "base": 13804773364, "offset": 0}, {"top": 203011373, "base": 14007784737, "offset": 0}, {"top": 203011373, "base": 14210796110, "offset": 0}, {"top": 203011373, "base": 14413807483, "offset": 0}, {"top": 203011373, "base": 14616818856, "offset": 0}, {"top": 203011373, "base": 14819830229, "offset": 0}, {"top": 203011373, "base": 15022841602, "offset": 0}, {"top": 203011373, "base": 15225852975, "offset": 0}, {"top": 203011373, "base": 15428864348, "offset": 0}, {"top": 203011373, "base": 15631875721, "offset": 0}, {"top": 203011373, "base": 15834887094, "offset": 0}, {"top": 203011373, "base": 16037898467, "offset": 0}, {"top": 203011373, "base": 16240909840, "offset": 0}, {"top": 203011373, "base": 16443921213, "offset": 0}, {"top": 203011373, "base": 16646932586, "offset": 0}, {"top": 203011373, "base": 16849943959, "offset": 0}, {"top": 203011373, "base": 17052955332, "offset": 0}, {"top": 203011373, "base": 17255966705, "offset": 0}, {"top": 203011373, "base": 17458978078, "offset": 0}, {"top": 203011373, "base": 17661989451, "offset": 0}, {"top": 203011373, "base": 17865000824, "offset": 0}, {"top": 203011373, "base": 18068012197, "offset": 0}, {"top": 203011373, "base": 18271023570, "offset": 0}, {"top": 203011373, "base": 18474034943, "offset": 0}, {"top": 203011373, "base": 18677046316, "offset": 0}, {"top": 203011373, "base": 18880057689, "offset": 0}, {"top": 203011373, "base": 19083069062, "offset": 0}, {"top": 203011373, "base": 19286080435, "offset": 0}, {"top": 203011373, "base": 19489091808, "offset": 0}, {"top": 203011373, "base": 19692103181, "offset": 0}, {"top": 203011373, "base": 19895114554, "offset": 0}, {"top": 203011373, "base": 20098125927, "offset": 0}, {"top": 203011373, "base": 20301137300, "offset": 0}, {"top": 203011373, "base": 20504148673, "offset": 0}, {"top": 203011373, "base": 20707160046, "offset": 0}, {"top": 203011373, "base": 20910171419, "offset": 0}, {"top": 203011373, "base": 21113182792, "offset": 0}, {"top": 203011373, "base": 21316194165, "offset": 0}, {"top": 203011373, "base": 21519205538, "offset": 0}, {"top": 203011373, "base": 21722216911, "offset": 0}, {"top": 203011373, "base": 21925228284, "offset": 0}, {"top": 203011373, "base": 22128239657, "offset": 0}, {"top": 203011373, "base": 22331251030, "offset": 0}, {"top": 203011373, "base": 22534262403, "offset": 0}, {"top": 203011373, "base": 22737273776, "offset": 0}, {"top": 203011373, "base": 22940285149, "offset": 0}, {"top": 203011373, "base": 23143296522, "offset": 0}, {"top": 203011373, "base": 23346307895, "offset": 0}, {"top": 203011373, "base": 23549319268, "offset": 0}, {"top": 203011373, "base": 23752330641, "offset": 0}, {"top": 203011373, "base": 23955342014, "offset": 0}, {"top": 203011373, "base": 24158353387, "offset": 0}, {"top": 203011373, "base": 24361364760, "offset": 0}, {"top": 203011373, "base": 24564376133, "offset": 0}, {"top": 203011373, "base": 24767387506, "offset": 0}, {"top": 203011373, "base": 24970398879, "offset": 0}, {"top": 203011373, "base": 25173410252, "offset": 0}, {"top": 203011373, "base": 25376421625, "offset": 0}, {"top": 203011373, "base": 25579432998, "offset": 0}, {"top": 203011373, "base": 25782444371, "offset": 0}, {"top": 203011373, "base": 25985455744, "offset": 0}, {"top": 203011373, "base": 26188467117, "offset": 0}, {"top": 203011373, "base": 26391478490, "offset": 0}, {"top": 203011373, "base": 26594489863, "offset": 0}, {"top": 203011373, "base": 26797501236, "offset": 0}, {"top": 203011373, "base": 27000512609, "offset": 0}, {"top": 203011373, "base": 27203523982, "offset": 0}, {"top": 203011373, "base": 27406535355, "offset": 0}, {"top": 203011373, "base": 27609546728, "offset": 0}, {"top": 203011373, "base": 27812558101, "offset": 0}, {"top": 203011373, "base": 28015569474, "offset": 0}, {"top": 203011373, "base": 28218580847, "offset": 0}, {"top": 203011373, "base": 28421592220, "offset": 0}, {"top": 203011373, "base": 28624603593, "offset": 0}, {"top": 203011373, "base": 28827614966, "offset": 0}, {"top": 203011373, "base": 29030626339, "offset": 0}, {"top": 203011373, "base": 29233637712, "offset": 0}, {"top": 203011373, "base": 29436649085, "offset": 0}, {"top": 203011373, "base": 29639660458, "offset": 0}, {"top": 203011373, "base": 29842671831, "offset": 0}, {"top": 203011373, "base": 30045683204, "offset": 0}, {"top": 203011373, "base": 30248694577, "offset": 0}, {"top": 203011373, "base": 30451705950, "offset": 0}, {"top": 203011373, "base": 30654717323, "offset": 0}, {"top": 203011373, "base": 30857728696, "offset": 0}, {"top": 203011373, "base": 31060740069, "offset": 0}, {"top": 203011373, "base": 31263751442, "offset": 0}, {"top": 203011373, "base": 31466762815, "offset": 0}, {"top": 203011373, "base": 31669774188, "offset": 0}, {"top": 203011373, "base": 31872785561, "offset": 0}, {"top": 203011373, "base": 32075796934, "offset": 0}, {"top": 203011373, "base": 32278808307, "offset": 0}, {"top": 203011373, "base": 32481819680, "offset": 0}, {"top": 203011373, "base": 32684831053, "offset": 0}, {"top": 203011373, "base": 32887842426, "offset": 0}, {"top": 203011373, "base": 33090853799, "offset": 0}, {"top": 203011373, "base": 33293865172, "offset": 0}, {"top": 203011373, "base": 33496876545, "offset": 0}, {"top": 203011373, "base": 33699887918, "offset": 0}, {"top": 203011373, "base": 33902899291, "offset": 0}, {"top": 203011373, "base": 34105910664, "offset": 0}, {"top": 203011373, "base": 34308922037, "offset": 0}, {"top": 203011373, "base": 34511933410, "offset": 0}, {"top": 203011373, "base": 34714944783, "offset": 0}, {"top": 203011373, "base": 34917956156, "offset": 0}, {"top": 203011373, "base": 35120967529, "offset": 0}, {"top": 203011373, "base": 35323978902, "offset": 0}, {"top": 203011373, "base": 35526990275, "offset": 0}, {"top": 203011373, "base": 35730001648, "offset": 0}, {"top": 203011373, "base": 35933013021, "offset": 0}, {"top": 203011373, "base": 36136024394, "offset": 0}, {"top": 203011373, "base": 36339035767, "offset": 0}, {"top": 203011373, "base": 36542047140, "offset": 0}, {"top": 203011373, "base": 36745058513, "offset": 0}, {"top": 203011373, "base": 36948069886, "offset": 0}, {"top": 203011373, "base": 37151081259, "offset": 0}, {"top": 203011373, "base": 37354092632, "offset": 0}, {"top": 203011373, "base": 37557104005, "offset": 0}, {"top": 203011373, "base": 37760115378, "offset": 0}, {"top": 203011373, "base": 37963126751, "offset": 0}, {"top": 203011373, "base": 38166138124, "offset": 0}, {"top": 203011373, "base": 38369149497, "offset": 0}, {"top": 203011373, "base": 38572160870, "offset": 0}, {"top": 203011373, "base": 38775172243, "offset": 0}, {"top": 203011373, "base": 38978183616, "offset": 0}, {"top": 203011373, "base": 39181194989, "offset": 0}, {"top": 203011373, "base": 39384206362, "offset": 0}, {"top": 203011373, "base": 39587217735, "offset": 0}, {"top": 203011373, "base": 39790229108, "offset": 0}, {"top": 203011373, "base": 39993240481, "offset": 0}, {"top": 203011373, "base": 40196251854, "offset": 0}, {"top": 203011373, "base": 40399263227, "offset": 0}, {"top": 203011373, "base": 40602274600, "offset": 0}, {"top": 203011373, "base": 40805285973, "offset": 0}, {"top": 203011373, "base": 41008297346, "offset": 0}, {"top": 203011373, "base": 41211308719, "offset": 0}, {"top": 203011373, "base": 41414320092, "offset": 0}, {"top": 203011373, "base": 41617331465, "offset": 0}, {"top": 203011373, "base": 41820342838, "offset": 0}, {"top": 203011373, "base": 42023354211, "offset": 0}, {"top": 203011373, "base": 42226365584, "offset": 0}, {"top": 203011373, "base": 42429376957, "offset": 0}, {"top": 203011373, "base": 42632388330, "offset": 0}, {"top": 203011373, "base": 42835399703, "offset": 0}, {"top": 203011373, "base": 43038411076, "offset": 0}, {"top": 203011373, "base": 43241422449, "offset": 0}, {"top": 203011373, "base": 43444433822, "offset": 0}, {"top": 203011373, "base": 43647445195, "offset": 0}, {"top": 203011373, "base": 43850456568, "offset": 0}, {"top": 203011373, "base": 44053467941, "offset": 0}, {"top": 203011373, "base": 44256479314, "offset": 0}, {"top": 203011373, "base": 44459490687, "offset": 0}, {"top": 203011373, "base": 44662502060, "offset": 0}, {"top": 203011373, "base": 44865513433, "offset": 0}, {"top": 203011373, "base": 45068524806, "offset": 0}, {"top": 203011373, "base": 45271536179, "offset": 0}, {"top": 203011373, "base": 45474547552, "offset": 0}, {"top": 203011373, "base": 45677558925, "offset": 0}, {"top": 203011373, "base": 45880570298, "offset": 0}, {"top": 203011373, "base": 46083581671, "offset": 0}, {"top": 203011373, "base": 46286593044, "offset": 0}, {"top": 203011373, "base": 46489604417, "offset": 0}, {"top": 203011373, "base": 46692615790, "offset": 0}, {"top": 203011373, "base": 46895627163, "offset": 0}, {"top": 203011373, "base": 47098638536, "offset": 0}, {"top": 203011373, "base": 47301649909, "offset": 0}, {"top": 203011373, "base": 47504661282, "offset": 0}, {"top": 203011373, "base": 47707672655, "offset": 0}, {"top": 203011373, "base": 47910684028, "offset": 0}, {"top": 203011373, "base": 48113695401, "offset": 0}, {"top": 203011373, "base": 48316706774, "offset": 0}, {"top": 203011373, "base": 48519718147, "offset": 0}, {"top": 203011373, "base": 48722729520, "offset": 0}, {"top": 203011373, "base": 48925740893, "offset": 0}, {"top": 203011373, "base": 49128752266, "offset": 0}, {"top": 203011373, "base": 49331763639, "offset": 0}, {"top": 203011373, "base": 49534775012, "offset": 0}, {"top": 203011373, "base": 49737786385, "offset": 0}, {"top": 203011373, "base": 49940797758, "offset": 0}, {"top": 203011373, "base": 50143809131, "offset": 0}, {"top": 203011373, "base": 50346820504, "offset": 0}, {"top": 203011373, "base": 50549831877, "offset": 0}, {"top": 203011373, "base": 50752843250, "offset": 0}, {"top": 203011373, "base": 50955854623, "offset": 0}, {"top": 203011373, "base": 51158865996, "offset": 0}, {"top": 203011373, "base": 51361877369, "offset": 0}, {"top": 203011373, "base": 51564888742, "offset": 0}, {"top": 203011373, "base": 51767900115, "offset": 0}, {"top": 203011373, "base": 51970911488, "offset": 0}, {"top": 203011373, "base": 52173922861, "offset": 0}, {"top": 203011373, "base": 52376934234, "offset": 0}, {"top": 203011373, "base": 52579945607, "offset": 0}, {"top": 203011373, "base": 52782956980, "offset": 0}, {"top": 203011373, "base": 52985968353, "offset": 0}, {"top": 203011373, "base": 53188979726, "offset": 0}, {"top": 203011373, "base": 53391991099, "offset": 0}, {"top": 203011373, "base": 53595002472, "offset": 0}, {"top": 203011373, "base": 53798013845, "offset": 0}, {"top": 203011373, "base": 54001025218, "offset": 0}, {"top": 203011373, "base": 54204036591, "offset": 0}, {"top": 203011373, "base": 54407047964, "offset": 0}, {"top": 203011373, "base": 54610059337, "offset": 0}, {"top": 203011373, "base": 54813070710, "offset": 0}, {"top": 203011373, "base": 55016082083, "offset": 0}, {"top": 203011373, "base": 55219093456, "offset": 0}, {"top": 203011373, "base": 55422104829, "offset": 0}, {"top": 203011373, "base": 55625116202, "offset": 0}, {"top": 203011373, "base": 55828127575, "offset": 0}, {"top": 203011373, "base": 56031138948, "offset": 0}, {"top": 203011373, "base": 56234150321, "offset": 0}, {"top": 203011373, "base": 56437161694, "offset": 0}, {"top": 203011373, "base": 56640173067, "offset": 0}, {"top": 203011373, "base": 56843184440, "offset": 0}, {"top": 203011373, "base": 57046195813, "offset": 0}, {"top": 203011373, "base": 57249207186, "offset": 0}, {"top": 203011373, "base": 57452218559, "offset": 0}, {"top": 203011373, "base": 57655229932, "offset": 0}, {"top": 203011373, "base": 57858241305, "offset": 0}, {"top": 203011373, "base": 58061252678, "offset": 0}, {"top": 203011373, "base": 58264264051, "offset": 0}, {"top": 203011373, "base": 58467275424, "offset": 0}, {"top": 203011373, "base": 58670286797, "offset": 0}, {"top": 203011373, "base": 58873298170, "offset": 0}, {"top": 203011373, "base": 59076309543, "offset": 0}, {"top": 203011184, "base": 59279320916, "offset": 0}], "prng_identifier": "rand48", "max_buckets_count": 293}	xt7.reeedeeedk
\.


--
-- Data for Name: minter_naan; Type: TABLE DATA; Schema: public; Owner: iduser
--

COPY public.minter_naan (id, number, organization, abbreviation) FROM stdin;
1	16417	University of Kentucky Libraries	UKL
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: binder_ark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.binder_ark_id_seq', 1, false);


--
-- Name: binder_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.binder_role_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: minter_minter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.minter_minter_id_seq', 2, true);


--
-- Name: minter_naan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iduser
--

SELECT pg_catalog.setval('public.minter_naan_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: binder_ark binder_ark_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.binder_ark
    ADD CONSTRAINT binder_ark_pkey PRIMARY KEY (id);


--
-- Name: binder_role binder_role_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.binder_role
    ADD CONSTRAINT binder_role_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: minter_minter minter_minter_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.minter_minter
    ADD CONSTRAINT minter_minter_pkey PRIMARY KEY (id);


--
-- Name: minter_minter minter_minter_shoulder_key; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.minter_minter
    ADD CONSTRAINT minter_minter_shoulder_key UNIQUE (shoulder);


--
-- Name: minter_minter minter_minter_template_key; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.minter_minter
    ADD CONSTRAINT minter_minter_template_key UNIQUE (template);


--
-- Name: minter_naan minter_naan_number_key; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.minter_naan
    ADD CONSTRAINT minter_naan_number_key UNIQUE (number);


--
-- Name: minter_naan minter_naan_pkey; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.minter_naan
    ADD CONSTRAINT minter_naan_pkey PRIMARY KEY (id);


--
-- Name: binder_ark unique_identifier_role_combination; Type: CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.binder_ark
    ADD CONSTRAINT unique_identifier_role_combination UNIQUE (identifier, role_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: binder_ark_role_id_137f75b8; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX binder_ark_role_id_137f75b8 ON public.binder_ark USING btree (role_id);


--
-- Name: binder_role_naan_id_dd6fa843; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX binder_role_naan_id_dd6fa843 ON public.binder_role USING btree (naan_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: minter_minter_naan_id_4946231a; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX minter_minter_naan_id_4946231a ON public.minter_minter USING btree (naan_id);


--
-- Name: minter_minter_shoulder_e2a15413_like; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX minter_minter_shoulder_e2a15413_like ON public.minter_minter USING btree (shoulder varchar_pattern_ops);


--
-- Name: minter_minter_template_6e55513c_like; Type: INDEX; Schema: public; Owner: iduser
--

CREATE INDEX minter_minter_template_6e55513c_like ON public.minter_minter USING btree (template varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: binder_ark binder_ark_role_id_137f75b8_fk_binder_role_id; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.binder_ark
    ADD CONSTRAINT binder_ark_role_id_137f75b8_fk_binder_role_id FOREIGN KEY (role_id) REFERENCES public.binder_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: binder_role binder_role_naan_id_dd6fa843_fk_minter_naan_id; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.binder_role
    ADD CONSTRAINT binder_role_naan_id_dd6fa843_fk_minter_naan_id FOREIGN KEY (naan_id) REFERENCES public.minter_naan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: minter_minter minter_minter_naan_id_4946231a_fk_minter_naan_id; Type: FK CONSTRAINT; Schema: public; Owner: iduser
--

ALTER TABLE ONLY public.minter_minter
    ADD CONSTRAINT minter_minter_naan_id_4946231a_fk_minter_naan_id FOREIGN KEY (naan_id) REFERENCES public.minter_naan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\unrestrict MAJLFe5YbbAr9QOeggMpdFd4uFzo5v2hfW4WPjb9fVb9KY5BuuWS9AZDz5EkqqU

