--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

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

--
-- PostgreSQL database dump complete
--

--
-- Database "mtcdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

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

--
-- Name: mtcdb; Type: DATABASE; Schema: -; Owner: mtcscott
--

CREATE DATABASE mtcdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE mtcdb OWNER TO mtcscott;

\connect mtcdb

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

--
-- Data for Name: temperature_data; Type: TABLE DATA; Schema: public; Owner: mtcscott
--

COPY public.temperature_data (id, device, container, temperature, created_at) FROM stdin;
1	dev1	e339e45bf0a5	14	2024-12-23 03:58:09.871549+00
2	dev1	e339e45bf0a5	2	2024-12-23 03:58:26.432916+00
3	dev1	e339e45bf0a5	-3	2024-12-23 03:58:56.472678+00
4	dev1	e339e45bf0a5	2	2024-12-23 03:59:26.466459+00
5	dev1	e339e45bf0a5	14	2024-12-23 03:59:56.488112+00
6	dev1	e339e45bf0a5	6	2024-12-23 04:00:26.450926+00
7	dev1	e339e45bf0a5	17	2024-12-23 04:00:56.488561+00
8	dev1	e339e45bf0a5	6	2024-12-23 04:01:26.468781+00
9	dev1	e339e45bf0a5	4	2024-12-23 04:01:56.468366+00
10	dev1	e339e45bf0a5	14	2024-12-23 04:02:26.459906+00
11	dev1	e339e45bf0a5	19	2024-12-23 04:02:56.449111+00
12	dev1	e339e45bf0a5	16	2024-12-23 04:03:26.509007+00
13	dev1	e339e45bf0a5	-3	2024-12-23 04:03:56.490316+00
14	dev1	e339e45bf0a5	12	2024-12-23 04:04:26.463643+00
15	dev1	e339e45bf0a5	19	2024-12-23 04:04:56.498548+00
16	dev1	e339e45bf0a5	1	2024-12-23 04:05:26.485129+00
17	dev1	e339e45bf0a5	18	2024-12-23 04:05:56.509344+00
18	dev1	e339e45bf0a5	11	2024-12-23 04:06:26.515354+00
19	dev1	e339e45bf0a5	-10	2024-12-23 04:06:56.496884+00
20	dev1	e339e45bf0a5	5	2024-12-23 04:07:26.517399+00
21	dev1	e339e45bf0a5	6	2024-12-23 04:07:56.522005+00
22	dev1	e339e45bf0a5	4	2024-12-23 04:08:26.533955+00
23	dev1	e339e45bf0a5	-10	2024-12-23 04:08:56.563934+00
24	dev1	e339e45bf0a5	-3	2024-12-23 04:09:26.564264+00
25	dev1	e339e45bf0a5	1	2024-12-23 04:09:56.56688+00
26	dev1	e339e45bf0a5	2	2024-12-23 04:10:26.578238+00
27	dev1	e339e45bf0a5	-9	2024-12-23 04:10:56.655344+00
28	dev1	e339e45bf0a5	-3	2024-12-23 04:11:26.640821+00
29	dev1	e339e45bf0a5	-1	2024-12-23 04:11:56.663237+00
30	dev1	e339e45bf0a5	6	2024-12-23 04:12:26.666283+00
31	dev1	e339e45bf0a5	5	2024-12-23 04:12:56.718227+00
32	dev1	e339e45bf0a5	-6	2024-12-23 04:13:26.721094+00
33	dev1	e339e45bf0a5	7	2024-12-23 04:13:56.702502+00
34	dev1	e339e45bf0a5	-8	2024-12-23 04:14:26.721241+00
35	dev1	e339e45bf0a5	1	2024-12-23 04:14:56.743321+00
36	dev1	e339e45bf0a5	15	2024-12-23 04:15:26.760863+00
37	dev1	e339e45bf0a5	10	2024-12-23 04:15:56.770074+00
38	dev1	e339e45bf0a5	12	2024-12-23 04:16:26.809837+00
39	dev1	e339e45bf0a5	-2	2024-12-23 04:16:56.808321+00
40	dev1	e339e45bf0a5	-9	2024-12-23 04:17:26.835858+00
41	dev1	e339e45bf0a5	9	2024-12-23 04:17:56.805063+00
42	dev1	80ee130fc93e	14	2024-12-23 04:19:57.598006+00
43	dev1	80ee130fc93e	10	2024-12-23 04:20:27.61955+00
44	dev1	80ee130fc93e	-4	2024-12-23 04:20:57.596762+00
45	dev1	80ee130fc93e	-6	2024-12-23 04:21:27.63748+00
46	dev1	80ee130fc93e	-1	2024-12-23 04:21:57.599871+00
47	dev1	570722a0b4f8	-7	2024-12-23 04:22:39.694207+00
48	dev1	570722a0b4f8	-3	2024-12-23 04:23:09.719039+00
49	dev1	570722a0b4f8	-4	2024-12-23 04:23:39.726151+00
50	dev1	570722a0b4f8	13	2024-12-23 04:24:09.709355+00
51	dev1	570722a0b4f8	-4	2024-12-23 04:24:39.705191+00
52	dev1	570722a0b4f8	0	2024-12-23 04:25:09.749963+00
53	dev1	570722a0b4f8	11	2024-12-23 04:25:39.722749+00
54	dev1	570722a0b4f8	-10	2024-12-23 04:26:09.70991+00
55	dev1	570722a0b4f8	-5	2024-12-23 04:26:39.708064+00
56	dev1	570722a0b4f8	3	2024-12-23 04:27:09.721782+00
57	dev1	570722a0b4f8	11	2024-12-23 04:27:39.754298+00
58	dev1	570722a0b4f8	18	2024-12-23 04:28:09.721136+00
59	dev1	570722a0b4f8	1	2024-12-23 04:28:39.751528+00
\.


--
-- Name: temp_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mtcscott
--

SELECT pg_catalog.setval('public.temp_data_id_seq', 59, true);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

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

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

