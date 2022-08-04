--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-08-04 20:06:01 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16419)
-- Name: material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material (
    id integer NOT NULL,
    steel_grade character varying,
    maximum_diameter integer,
    maximum_length integer,
    heat_treatment character varying,
    surface_hardness_hrce integer,
    core_hardness_hb integer,
    tensile_strength integer,
    yield_strength integer,
    endurance_limit integer,
    surface_hardness_hb integer
);


ALTER TABLE public.material OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16418)
-- Name: material_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_id_seq OWNER TO postgres;

--
-- TOC entry 4269 (class 0 OID 0)
-- Dependencies: 215
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_id_seq OWNED BY public.material.id;


--
-- TOC entry 4120 (class 2604 OID 16422)
-- Name: material id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material ALTER COLUMN id SET DEFAULT nextval('public.material_id_seq'::regclass);


--
-- TOC entry 4263 (class 0 OID 16419)
-- Dependencies: 216
-- Data for Name: material; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material (id, steel_grade, maximum_diameter, maximum_length, heat_treatment, surface_hardness_hrce, core_hardness_hb, tensile_strength, yield_strength, endurance_limit, surface_hardness_hb) FROM stdin;
1	35	65000	65000	N	0	165	550	270	235	165
2	40	120	60	I	0	195	700	400	300	195
3	45	65000	65000	N	0	180	600	320	260	180
4	45	125	80	I	0	240	780	540	335	240
5	45	80	50	I	0	270	890	650	380	270
6	40X	200	125	I	0	240	790	640	375	240
7	40X	125	80	I	0	270	900	750	410	270
8	40X	125	80	HFC	45	270	900	750	410	0
9	40XH	315	200	I	0	240	800	630	380	240
10	40XH	200	125	I	0	270	920	750	420	270
13	35XM	200	125	I	0	270	920	790	420	270
14	35XM	315	200	I	0	240	800	670	380	240
12	35XM	200	125	HFC	48	270	920	790	420	0
11	40XH	200	125	HFC	48	270	920	750	420	0
\.


--
-- TOC entry 4270 (class 0 OID 0)
-- Dependencies: 215
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_id_seq', 14, true);


--
-- TOC entry 4122 (class 2606 OID 16426)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


-- Completed on 2022-08-04 20:06:02 EEST

--
-- PostgreSQL database dump complete
--

