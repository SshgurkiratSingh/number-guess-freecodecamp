--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: history; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.history (
    user_id integer NOT NULL,
    try integer
);


ALTER TABLE public.history OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    userr_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_userr_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_userr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_userr_id_seq OWNER TO freecodecamp;

--
-- Name: users_userr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_userr_id_seq OWNED BY public.users.userr_id;


--
-- Name: users userr_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN userr_id SET DEFAULT nextval('public.users_userr_id_seq'::regclass);


--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.history VALUES (11, 907);
INSERT INTO public.history VALUES (11, 385);
INSERT INTO public.history VALUES (12, 345);
INSERT INTO public.history VALUES (12, 848);
INSERT INTO public.history VALUES (11, 823);
INSERT INTO public.history VALUES (11, 860);
INSERT INTO public.history VALUES (11, 305);
INSERT INTO public.history VALUES (13, 3);
INSERT INTO public.history VALUES (14, 1);
INSERT INTO public.history VALUES (8, 1);
INSERT INTO public.history VALUES (15, 2);
INSERT INTO public.history VALUES (16, 12);
INSERT INTO public.history VALUES (15, 1);
INSERT INTO public.history VALUES (17, 693);
INSERT INTO public.history VALUES (17, 602);
INSERT INTO public.history VALUES (18, 82);
INSERT INTO public.history VALUES (18, 517);
INSERT INTO public.history VALUES (17, 332);
INSERT INTO public.history VALUES (17, 726);
INSERT INTO public.history VALUES (17, 585);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1662806177946');
INSERT INTO public.users VALUES (2, 'user_1662806177946');
INSERT INTO public.users VALUES (3, 'user_1662806177945');
INSERT INTO public.users VALUES (4, 'user_1662806177945');
INSERT INTO public.users VALUES (5, 'user_1662806177946');
INSERT INTO public.users VALUES (6, 'user_1662806177946');
INSERT INTO public.users VALUES (7, 'user_1662806177946');
INSERT INTO public.users VALUES (8, 'guri');
INSERT INTO public.users VALUES (9, 'user_1662806266816');
INSERT INTO public.users VALUES (10, 'user_1662806266815');
INSERT INTO public.users VALUES (11, 'user_1662806501136');
INSERT INTO public.users VALUES (12, 'user_1662806501135');
INSERT INTO public.users VALUES (13, 'guur');
INSERT INTO public.users VALUES (14, 'fffff');
INSERT INTO public.users VALUES (15, 'dddd');
INSERT INTO public.users VALUES (16, 'gggg');
INSERT INTO public.users VALUES (17, 'user_1662807031022');
INSERT INTO public.users VALUES (18, 'user_1662807031021');


--
-- Name: users_userr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_userr_id_seq', 18, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userr_id);


--
-- PostgreSQL database dump complete
--

