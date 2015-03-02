--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-03-01 21:27:43

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
-- TOC entry 176 (class 1259 OID 32865)
-- Name: Donation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Donation" (
    "donationId" character(10) NOT NULL,
    donatedby character(3),
    "dateDonated" date,
    donatedamount real
);


ALTER TABLE "Donation" OWNER TO postgres;

--
-- TOC entry 2004 (class 0 OID 32865)
-- Dependencies: 176
-- Data for Name: Donation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Donation" ("donationId", donatedby, "dateDonated", donatedamount) FROM stdin;
001       	001	2014-03-01	20
002       	001	2013-02-28	2
003       	001	2014-02-15	20
004       	001	1999-01-01	20
005       	002	1989-01-01	20
006       	002	1897-01-01	30
\.


--
-- TOC entry 1893 (class 2606 OID 32869)
-- Name: DonationIdPrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Donation"
    ADD CONSTRAINT "DonationIdPrimaryKey" PRIMARY KEY ("donationId");


--
-- TOC entry 1894 (class 1259 OID 32880)
-- Name: fki_DonatedByForeignKey; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_DonatedByForeignKey" ON "Donation" USING btree (donatedby);


-- Completed on 2015-03-01 21:27:43

--
-- PostgreSQL database dump complete
--

