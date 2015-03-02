--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-03-01 21:28:20

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
-- TOC entry 173 (class 1259 OID 32820)
-- Name: userTable; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "userTable" (
    usertableid character(3) NOT NULL,
    "FirstName" character(60),
    "LastName" character(60),
    "eMailid" character(150),
    usertypeid character(3),
    "Password" character(12),
    "UserEnableDisableFlag" character(1)
);


ALTER TABLE "userTable" OWNER TO postgres;

--
-- TOC entry 2005 (class 0 OID 32820)
-- Dependencies: 173
-- Data for Name: userTable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "userTable" (usertableid, "FirstName", "LastName", "eMailid", usertypeid, "Password", "UserEnableDisableFlag") FROM stdin;
001	Muthukumar                                                  	Srinivasan                                                  	muthukumar.srinivasan@gmail.com                                                                                                                       	001	\N	\N
002	Student                                                     	Student1                                                    	student@student.com                                                                                                                                   	001	\N	\N
003	Student                                                     	Student2                                                    	student@student.cm                                                                                                                                    	001	\N	\N
004	Content                                                     	Creator                                                     	content@creator.com                                                                                                                                   	002	\N	\N
005	Content                                                     	Creator2                                                    	content@creator                                                                                                                                       	002	\N	\N
006	Guest                                                       	Guest1                                                      	Guest@guest.com                                                                                                                                       	003	\N	\N
007	Guest                                                       	Guest1                                                      	Gyest@gyest.com                                                                                                                                       	003	\N	\N
008	Administrator                                               	Administrator                                               	admin@admin.com                                                                                                                                       	004	\N	\N
\.


--
-- TOC entry 1894 (class 2606 OID 32824)
-- Name: userTablePrimarykeyId; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "userTable"
    ADD CONSTRAINT "userTablePrimarykeyId" PRIMARY KEY (usertableid);


--
-- TOC entry 1892 (class 1259 OID 32830)
-- Name: fki_userTableForeignkeyUserType; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_userTableForeignkeyUserType" ON "userTable" USING btree (usertypeid);


--
-- TOC entry 1895 (class 2606 OID 32825)
-- Name: userTableForeignkeyUserType; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "userTable"
    ADD CONSTRAINT "userTableForeignkeyUserType" FOREIGN KEY (usertypeid) REFERENCES "UserType"("usertypeId");


-- Completed on 2015-03-01 21:28:20

--
-- PostgreSQL database dump complete
--

