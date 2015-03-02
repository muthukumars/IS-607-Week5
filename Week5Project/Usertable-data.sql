--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-03-01 21:30:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

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


-- Completed on 2015-03-01 21:30:05

--
-- PostgreSQL database dump complete
--

