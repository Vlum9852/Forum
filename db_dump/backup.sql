--
-- PostgreSQL database dump
--

\restrict tuH8SE1gVaCIssRfuuVhbQkEVWnOU2w0MqLceOg5RT2jJo2RK1nRWFhuyV6OLcr

-- Dumped from database version 18.0 (Debian 18.0-1.pgdg13+3)
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-31 22:43:26

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16403)
-- Name: test_table; Type: TABLE; Schema: public; Owner: admin-saye
--

CREATE TABLE public.test_table (
    id integer NOT NULL,
    data character varying
);


ALTER TABLE public.test_table OWNER TO "admin-saye";

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE test_table; Type: COMMENT; Schema: public; Owner: admin-saye
--

COMMENT ON TABLE public.test_table IS 'тестовая табличка';


--
-- TOC entry 219 (class 1259 OID 16402)
-- Name: test_table_id_seq; Type: SEQUENCE; Schema: public; Owner: admin-saye
--

ALTER TABLE public.test_table ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.test_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3439 (class 0 OID 16403)
-- Dependencies: 220
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: admin-saye
--

COPY public.test_table (id, data) FROM stdin;
1	testtesttest
\.


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 219
-- Name: test_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin-saye
--

SELECT pg_catalog.setval('public.test_table_id_seq', 1, true);


--
-- TOC entry 3290 (class 2606 OID 16408)
-- Name: test_table test_table_pk; Type: CONSTRAINT; Schema: public; Owner: admin-saye
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pk PRIMARY KEY (id);


-- Completed on 2025-10-31 22:43:32

--
-- PostgreSQL database dump complete
--

\unrestrict tuH8SE1gVaCIssRfuuVhbQkEVWnOU2w0MqLceOg5RT2jJo2RK1nRWFhuyV6OLcr

