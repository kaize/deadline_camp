--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ckeditor_assets (
    id integer NOT NULL,
    data_file_name character varying(255) NOT NULL,
    data_content_type character varying(255),
    data_file_size integer,
    assetable_id integer,
    assetable_type character varying(30),
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ckeditor_assets_id_seq OWNED BY ckeditor_assets.id;


--
-- Name: databases; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE databases (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: databases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE databases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: databases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE databases_id_seq OWNED BY databases.id;


--
-- Name: ides; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ides (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: ides_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ides_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ides_id_seq OWNED BY ides.id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE languages (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE languages_id_seq OWNED BY languages.id;


--
-- Name: member_achievements; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_achievements (
    id integer NOT NULL,
    member_id integer,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_achievements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_achievements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_achievements_id_seq OWNED BY member_achievements.id;


--
-- Name: member_additional_educations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_additional_educations (
    id integer NOT NULL,
    member_id integer,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_additional_educations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_additional_educations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_additional_educations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_additional_educations_id_seq OWNED BY member_additional_educations.id;


--
-- Name: member_jobs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_jobs (
    id integer NOT NULL,
    member_id integer,
    company character varying(255),
    started_at date,
    finished_at date,
    job character varying(255),
    responsibility text,
    achievements text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_jobs_id_seq OWNED BY member_jobs.id;


--
-- Name: member_langs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_langs (
    id integer NOT NULL,
    member_id integer,
    language_id integer,
    level character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_langs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_langs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_langs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_langs_id_seq OWNED BY member_langs.id;


--
-- Name: member_others; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_others (
    id integer NOT NULL,
    member_id integer,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_others_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_others_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_others_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_others_id_seq OWNED BY member_others.id;


--
-- Name: member_preferences; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_preferences (
    id integer NOT NULL,
    member_id integer,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_preferences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_preferences_id_seq OWNED BY member_preferences.id;


--
-- Name: member_skill_databases; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_skill_databases (
    id integer NOT NULL,
    member_id integer,
    database_id integer,
    level character varying(255),
    duration character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_skill_databases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_skill_databases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_skill_databases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_skill_databases_id_seq OWNED BY member_skill_databases.id;


--
-- Name: member_skill_ides; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_skill_ides (
    id integer NOT NULL,
    member_id integer,
    ide_id integer,
    level character varying(255),
    duration character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_skill_ides_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_skill_ides_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_skill_ides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_skill_ides_id_seq OWNED BY member_skill_ides.id;


--
-- Name: member_skill_os; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_skill_os (
    id integer NOT NULL,
    member_id integer,
    os_id integer,
    level character varying(255),
    duration character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_skill_os_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_skill_os_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_skill_os_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_skill_os_id_seq OWNED BY member_skill_os.id;


--
-- Name: member_skill_others; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_skill_others (
    id integer NOT NULL,
    member_id integer,
    name character varying(255),
    type character varying(255),
    level character varying(255),
    duration character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_skill_others_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_skill_others_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_skill_others_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_skill_others_id_seq OWNED BY member_skill_others.id;


--
-- Name: member_skill_program_langs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_skill_program_langs (
    id integer NOT NULL,
    member_id integer,
    program_lang_id integer,
    level character varying(255),
    duration character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_skill_program_langs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_skill_program_langs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_skill_program_langs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_skill_program_langs_id_seq OWNED BY member_skill_program_langs.id;


--
-- Name: member_skills; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE member_skills (
    id integer NOT NULL,
    member_id integer,
    type character varying(255),
    dict_id integer,
    dict_type character varying(255),
    level character varying(255),
    duration character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: member_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE member_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE member_skills_id_seq OWNED BY member_skills.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE members (
    id integer NOT NULL,
    state character varying(255),
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    patronymic character varying(255),
    phone character varying(255),
    skype character varying(255),
    jabber character varying(255),
    icq integer,
    institute character varying(255),
    start_year integer,
    finish_year integer,
    department character varying(255),
    profession character varying(255),
    degree character varying(255),
    gpa character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    web character varying(255),
    camp_time boolean,
    camp_life boolean,
    camp_fee boolean,
    camp_notebook boolean,
    camp_training boolean,
    hobby text,
    sport text,
    start_month character varying(255),
    finish_month character varying(255),
    password_digest character varying(255) NOT NULL,
    auth_token character varying(255),
    "group" character varying(255),
    how_hear_about_as character varying(255),
    facebook character varying(255),
    twitter character varying(255),
    vkontakte character varying(255),
    city character varying(255),
    birthday date,
    schoolyear_count integer
);


--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE members_id_seq OWNED BY members.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE news (
    id integer NOT NULL,
    name character varying(255),
    uri character varying(255),
    body text,
    published_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    state character varying(255)
);


--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE news_id_seq OWNED BY news.id;


--
-- Name: os; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE os (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: os_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE os_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: os_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE os_id_seq OWNED BY os.id;


--
-- Name: others; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE others (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: others_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE others_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: others_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE others_id_seq OWNED BY others.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE pages (
    id integer NOT NULL,
    name character varying(255),
    uri character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE pages_id_seq OWNED BY pages.id;


--
-- Name: photo_album_photos; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE photo_album_photos (
    id integer NOT NULL,
    photo_album_id integer,
    image character varying(255),
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description character varying(255),
    main boolean
);


--
-- Name: photo_album_photos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE photo_album_photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: photo_album_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE photo_album_photos_id_seq OWNED BY photo_album_photos.id;


--
-- Name: photo_albums; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE photo_albums (
    id integer NOT NULL,
    name character varying(255),
    state character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description character varying(255)
);


--
-- Name: photo_albums_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE photo_albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: photo_albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE photo_albums_id_seq OWNED BY photo_albums.id;


--
-- Name: program_langs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE program_langs (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_langs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_langs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_langs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_langs_id_seq OWNED BY program_langs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255),
    password_digest character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('ckeditor_assets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY databases ALTER COLUMN id SET DEFAULT nextval('databases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ides ALTER COLUMN id SET DEFAULT nextval('ides_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY languages ALTER COLUMN id SET DEFAULT nextval('languages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_achievements ALTER COLUMN id SET DEFAULT nextval('member_achievements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_additional_educations ALTER COLUMN id SET DEFAULT nextval('member_additional_educations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_jobs ALTER COLUMN id SET DEFAULT nextval('member_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_langs ALTER COLUMN id SET DEFAULT nextval('member_langs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_others ALTER COLUMN id SET DEFAULT nextval('member_others_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_preferences ALTER COLUMN id SET DEFAULT nextval('member_preferences_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_skill_databases ALTER COLUMN id SET DEFAULT nextval('member_skill_databases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_skill_ides ALTER COLUMN id SET DEFAULT nextval('member_skill_ides_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_skill_os ALTER COLUMN id SET DEFAULT nextval('member_skill_os_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_skill_others ALTER COLUMN id SET DEFAULT nextval('member_skill_others_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_skill_program_langs ALTER COLUMN id SET DEFAULT nextval('member_skill_program_langs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY member_skills ALTER COLUMN id SET DEFAULT nextval('member_skills_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY members ALTER COLUMN id SET DEFAULT nextval('members_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY news ALTER COLUMN id SET DEFAULT nextval('news_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY os ALTER COLUMN id SET DEFAULT nextval('os_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY others ALTER COLUMN id SET DEFAULT nextval('others_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY pages ALTER COLUMN id SET DEFAULT nextval('pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY photo_album_photos ALTER COLUMN id SET DEFAULT nextval('photo_album_photos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY photo_albums ALTER COLUMN id SET DEFAULT nextval('photo_albums_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_langs ALTER COLUMN id SET DEFAULT nextval('program_langs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: dict_databases_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY databases
    ADD CONSTRAINT dict_databases_pkey PRIMARY KEY (id);


--
-- Name: dict_ides_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ides
    ADD CONSTRAINT dict_ides_pkey PRIMARY KEY (id);


--
-- Name: dict_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY languages
    ADD CONSTRAINT dict_languages_pkey PRIMARY KEY (id);


--
-- Name: dict_os_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY os
    ADD CONSTRAINT dict_os_pkey PRIMARY KEY (id);


--
-- Name: dict_others_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY others
    ADD CONSTRAINT dict_others_pkey PRIMARY KEY (id);


--
-- Name: dict_program_langs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY program_langs
    ADD CONSTRAINT dict_program_langs_pkey PRIMARY KEY (id);


--
-- Name: member_achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_achievements
    ADD CONSTRAINT member_achievements_pkey PRIMARY KEY (id);


--
-- Name: member_additional_educations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_additional_educations
    ADD CONSTRAINT member_additional_educations_pkey PRIMARY KEY (id);


--
-- Name: member_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_jobs
    ADD CONSTRAINT member_jobs_pkey PRIMARY KEY (id);


--
-- Name: member_langs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_langs
    ADD CONSTRAINT member_langs_pkey PRIMARY KEY (id);


--
-- Name: member_others_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_others
    ADD CONSTRAINT member_others_pkey PRIMARY KEY (id);


--
-- Name: member_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_preferences
    ADD CONSTRAINT member_preferences_pkey PRIMARY KEY (id);


--
-- Name: member_skill_databases_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_skill_databases
    ADD CONSTRAINT member_skill_databases_pkey PRIMARY KEY (id);


--
-- Name: member_skill_ides_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_skill_ides
    ADD CONSTRAINT member_skill_ides_pkey PRIMARY KEY (id);


--
-- Name: member_skill_os_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_skill_os
    ADD CONSTRAINT member_skill_os_pkey PRIMARY KEY (id);


--
-- Name: member_skill_others_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_skill_others
    ADD CONSTRAINT member_skill_others_pkey PRIMARY KEY (id);


--
-- Name: member_skill_program_langs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_skill_program_langs
    ADD CONSTRAINT member_skill_program_langs_pkey PRIMARY KEY (id);


--
-- Name: member_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY member_skills
    ADD CONSTRAINT member_skills_pkey PRIMARY KEY (id);


--
-- Name: members_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: news_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: photo_album_photos_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY photo_album_photos
    ADD CONSTRAINT photo_album_photos_pkey PRIMARY KEY (id);


--
-- Name: photo_albums_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY photo_albums
    ADD CONSTRAINT photo_albums_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: idx_ckeditor_assetable; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ckeditor_assetable ON ckeditor_assets USING btree (assetable_type, assetable_id);


--
-- Name: idx_ckeditor_assetable_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ckeditor_assetable_type ON ckeditor_assets USING btree (assetable_type, type, assetable_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

INSERT INTO schema_migrations (version) VALUES ('20120525155004');

INSERT INTO schema_migrations (version) VALUES ('20120526084846');

INSERT INTO schema_migrations (version) VALUES ('20120530140424');

INSERT INTO schema_migrations (version) VALUES ('20120530143345');

INSERT INTO schema_migrations (version) VALUES ('20120531081819');

INSERT INTO schema_migrations (version) VALUES ('20120531103925');

INSERT INTO schema_migrations (version) VALUES ('20120531105847');

INSERT INTO schema_migrations (version) VALUES ('20120531113611');

INSERT INTO schema_migrations (version) VALUES ('20120531115507');

INSERT INTO schema_migrations (version) VALUES ('20120531130609');

INSERT INTO schema_migrations (version) VALUES ('20120531140229');

INSERT INTO schema_migrations (version) VALUES ('20120531140526');

INSERT INTO schema_migrations (version) VALUES ('20120531140620');

INSERT INTO schema_migrations (version) VALUES ('20120531141234');

INSERT INTO schema_migrations (version) VALUES ('20120531141341');

INSERT INTO schema_migrations (version) VALUES ('20120601134047');

INSERT INTO schema_migrations (version) VALUES ('20120601134243');

INSERT INTO schema_migrations (version) VALUES ('20120601142955');

INSERT INTO schema_migrations (version) VALUES ('20120605151140');

INSERT INTO schema_migrations (version) VALUES ('20120607122426');

INSERT INTO schema_migrations (version) VALUES ('20120608080449');

INSERT INTO schema_migrations (version) VALUES ('20120612161051');

INSERT INTO schema_migrations (version) VALUES ('20120613142419');

INSERT INTO schema_migrations (version) VALUES ('20120615124706');

INSERT INTO schema_migrations (version) VALUES ('20120615172240');

INSERT INTO schema_migrations (version) VALUES ('20120616140301');

INSERT INTO schema_migrations (version) VALUES ('20120616173110');

INSERT INTO schema_migrations (version) VALUES ('20120617095741');

INSERT INTO schema_migrations (version) VALUES ('20120617170759');

INSERT INTO schema_migrations (version) VALUES ('20120617180926');

INSERT INTO schema_migrations (version) VALUES ('20120621090527');

INSERT INTO schema_migrations (version) VALUES ('20120625103503');

INSERT INTO schema_migrations (version) VALUES ('20120625135150');

INSERT INTO schema_migrations (version) VALUES ('20120625161057');

INSERT INTO schema_migrations (version) VALUES ('20120710092759');

INSERT INTO schema_migrations (version) VALUES ('20120710094832');

INSERT INTO schema_migrations (version) VALUES ('20120711091342');

INSERT INTO schema_migrations (version) VALUES ('20120711092309');

INSERT INTO schema_migrations (version) VALUES ('20120713113813');

INSERT INTO schema_migrations (version) VALUES ('20120905132524');

INSERT INTO schema_migrations (version) VALUES ('20120907104113');

INSERT INTO schema_migrations (version) VALUES ('20120907105301');

INSERT INTO schema_migrations (version) VALUES ('20120907105330');