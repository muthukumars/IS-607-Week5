--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-03-01 21:27:22

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
-- TOC entry 175 (class 1259 OID 32845)
-- Name: CoursesAttended; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CoursesAttended" (
    "CoursesAttendedId" character(10) NOT NULL,
    userid character(3),
    courseid character(7),
    "AttendedDate" date
);


ALTER TABLE "CoursesAttended" OWNER TO postgres;

--
-- TOC entry 2007 (class 0 OID 32845)
-- Dependencies: 175
-- Data for Name: CoursesAttended; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CoursesAttended" ("CoursesAttendedId", userid, courseid, "AttendedDate") FROM stdin;
001       	001	1      	2015-03-01
002       	001	2      	\N
003       	001	1      	\N
004       	002	1      	\N
005       	002	2      	\N
006       	002	3      	\N
007       	003	2      	\N
008       	003	1      	\N
009       	003	4      	\N
010       	003	5      	\N
\.


--
-- TOC entry 1893 (class 2606 OID 32852)
-- Name: CourseAttendedPrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CoursesAttended"
    ADD CONSTRAINT "CourseAttendedPrimaryKey" PRIMARY KEY ("CoursesAttendedId");


--
-- TOC entry 1894 (class 1259 OID 32858)
-- Name: fki_CourseAttendedByForeignKey; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_CourseAttendedByForeignKey" ON "CoursesAttended" USING btree (userid);


--
-- TOC entry 1895 (class 1259 OID 32864)
-- Name: fki_CoursesAttendedIdForeignKey; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_CoursesAttendedIdForeignKey" ON "CoursesAttended" USING btree (courseid);


--
-- TOC entry 1896 (class 2606 OID 32853)
-- Name: CourseAttendedByForeignKey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CoursesAttended"
    ADD CONSTRAINT "CourseAttendedByForeignKey" FOREIGN KEY (userid) REFERENCES "userTable"(usertableid);


--
-- TOC entry 1897 (class 2606 OID 32859)
-- Name: CoursesAttendedIdForeignKey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CoursesAttended"
    ADD CONSTRAINT "CoursesAttendedIdForeignKey" FOREIGN KEY (courseid) REFERENCES "Courses"("CoursesId");


-- Completed on 2015-03-01 21:27:22

--
-- PostgreSQL database dump complete
--

