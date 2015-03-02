--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-03-01 21:26:31

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
-- TOC entry 174 (class 1259 OID 32831)
-- Name: Courses; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Courses" (
    "CoursesId" character(7) NOT NULL,
    "CourseTitle" character(200),
    "CourseDescription" text,
    "courseFile" character(400),
    "courseCreatedByid" character(3),
    "CostoftheCourse" numeric,
    "CourseFileDirectory" character(400)
);


ALTER TABLE "Courses" OWNER TO postgres;

--
-- TOC entry 2009 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN "Courses"."courseFile"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN "Courses"."courseFile" IS 'Location of the course in PDF format, Text format or any specific format';


--
-- TOC entry 1893 (class 2606 OID 32838)
-- Name: courseidPrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Courses"
    ADD CONSTRAINT "courseidPrimaryKey" PRIMARY KEY ("CoursesId");


--
-- TOC entry 1894 (class 1259 OID 32844)
-- Name: fki_CourseCreatedByForeignKey; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_CourseCreatedByForeignKey" ON "Courses" USING btree ("courseCreatedByid");


--
-- TOC entry 1895 (class 2606 OID 32839)
-- Name: CourseCreatedByForeignKey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Courses"
    ADD CONSTRAINT "CourseCreatedByForeignKey" FOREIGN KEY ("courseCreatedByid") REFERENCES "userTable"(usertableid);


-- Completed on 2015-03-01 21:26:31

--
-- PostgreSQL database dump complete
--

