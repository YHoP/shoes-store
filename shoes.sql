--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: brands; Type: TABLE; Schema: public; Owner: YHoP; Tablespace: 
--

CREATE TABLE brands (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE brands OWNER TO "YHoP";

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: YHoP
--

CREATE SEQUENCE brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brands_id_seq OWNER TO "YHoP";

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: YHoP
--

ALTER SEQUENCE brands_id_seq OWNED BY brands.id;


--
-- Name: brands_stores; Type: TABLE; Schema: public; Owner: YHoP; Tablespace: 
--

CREATE TABLE brands_stores (
    id integer NOT NULL,
    brand_id integer,
    store_id integer
);


ALTER TABLE brands_stores OWNER TO "YHoP";

--
-- Name: brands_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: YHoP
--

CREATE SEQUENCE brands_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brands_stores_id_seq OWNER TO "YHoP";

--
-- Name: brands_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: YHoP
--

ALTER SEQUENCE brands_stores_id_seq OWNED BY brands_stores.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: YHoP; Tablespace: 
--

CREATE TABLE stores (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE stores OWNER TO "YHoP";

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: YHoP
--

CREATE SEQUENCE stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stores_id_seq OWNER TO "YHoP";

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: YHoP
--

ALTER SEQUENCE stores_id_seq OWNED BY stores.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: YHoP
--

ALTER TABLE ONLY brands ALTER COLUMN id SET DEFAULT nextval('brands_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: YHoP
--

ALTER TABLE ONLY brands_stores ALTER COLUMN id SET DEFAULT nextval('brands_stores_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: YHoP
--

ALTER TABLE ONLY stores ALTER COLUMN id SET DEFAULT nextval('stores_id_seq'::regclass);


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: YHoP
--

COPY brands (id, name) FROM stdin;
1	Skora
2	Scott Sports
3	Newton
4	Brooks
5	New Balance
6	Asics
7	Saucony
8	Nike
\.


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: YHoP
--

SELECT pg_catalog.setval('brands_id_seq', 8, true);


--
-- Data for Name: brands_stores; Type: TABLE DATA; Schema: public; Owner: YHoP
--

COPY brands_stores (id, brand_id, store_id) FROM stdin;
1	6	1
2	6	3
3	6	5
4	8	2
6	1	2
7	1	1
8	8	3
9	8	5
10	3	3
11	6	3
\.


--
-- Name: brands_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: YHoP
--

SELECT pg_catalog.setval('brands_stores_id_seq', 11, true);


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: YHoP
--

COPY stores (id, name) FROM stdin;
1	Foot Traffic
3	Portland Running Company
5	Road Runner Sports
2	Fleet Feet
\.


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: YHoP
--

SELECT pg_catalog.setval('stores_id_seq', 5, true);


--
-- Name: brands_pkey; Type: CONSTRAINT; Schema: public; Owner: YHoP; Tablespace: 
--

ALTER TABLE ONLY brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: brands_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: YHoP; Tablespace: 
--

ALTER TABLE ONLY brands_stores
    ADD CONSTRAINT brands_stores_pkey PRIMARY KEY (id);


--
-- Name: stores_pkey; Type: CONSTRAINT; Schema: public; Owner: YHoP; Tablespace: 
--

ALTER TABLE ONLY stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: YHoP
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "YHoP";
GRANT ALL ON SCHEMA public TO "YHoP";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

