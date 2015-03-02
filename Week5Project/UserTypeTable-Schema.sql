--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-03-01 21:28:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 32812)
-- Name: UserType; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "UserType" (
    "usertypeId" character(3) NOT NULL,
    usertype character(20),
    "Description" text
);


ALTER TABLE "UserType" OWNER TO postgres;

--
-- TOC entry 2003 (class 0 OID 32812)
-- Dependencies: 172
-- Data for Name: UserType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "UserType" ("usertypeId", usertype, "Description") FROM stdin;
001	001                 	Student
002	002                 	Content Creator
003	003                 	Guest
004	004                 	Administrator
\.


--
-- TOC entry 1893 (class 2606 OID 32819)
-- Name: usertypePrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "UserType"
    ADD CONSTRAINT "usertypePrimaryKey" PRIMARY KEY ("usertypeId");


-- Completed on 2015-03-01 21:28:03

--
-- PostgreSQL database dump complete
--

