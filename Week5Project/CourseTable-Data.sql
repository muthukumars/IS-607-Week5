--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-03-01 21:28:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2005 (class 0 OID 32831)
-- Dependencies: 174
-- Data for Name: Courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Courses" ("CoursesId", "CourseTitle", "CourseDescription", "courseFile", "courseCreatedByid", "CostoftheCourse", "CourseFileDirectory") FROM stdin;
3      	Science Basics                                                                                                                                                                                          	Basics of Science	science.ppt                                                                                                                                                                                                                                                                                                                                                                                                     	005	10	c:\\courses                                                                                                                                                                                                                                                                                                                                                                                                      
1      	Basic Programming                                                                                                                                                                                       	Basics of computer Programming	ttest.ppt                                                                                                                                                                                                                                                                                                                                                                                                       	004	20	c:\\courses\\                                                                                                                                                                                                                                                                                                                                                                                                     
2      	Advanced Programming                                                                                                                                                                                    	Advanced Programming in Computers	advanced.ppt                                                                                                                                                                                                                                                                                                                                                                                                    	004	30	c:\\courses                                                                                                                                                                                                                                                                                                                                                                                                      
4      	Math Basics                                                                                                                                                                                             	Basics of Mathematics	math.doc                                                                                                                                                                                                                                                                                                                                                                                                        	005	10	c:\\courses                                                                                                                                                                                                                                                                                                                                                                                                      
5      	History Basics                                                                                                                                                                                          	Basics of Histor	history.doc                                                                                                                                                                                                                                                                                                                                                                                                     	005	10	c:\\courses                                                                                                                                                                                                                                                                                                                                                                                                      
6      	Chemsitry Basics                                                                                                                                                                                        	Basics of chemistry	chemistry.ppt                                                                                                                                                                                                                                                                                                                                                                                                   	004	10	c:\\courses                                                                                                                                                                                                                                                                                                                                                                                                      
\.


-- Completed on 2015-03-01 21:28:42

--
-- PostgreSQL database dump complete
--

