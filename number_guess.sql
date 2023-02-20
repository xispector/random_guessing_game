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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    random_number integer NOT NULL,
    record integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 992, 993);
INSERT INTO public.games VALUES (2, 1, 97, 98);
INSERT INTO public.games VALUES (3, 2, 129, 130);
INSERT INTO public.games VALUES (4, 2, 124, 125);
INSERT INTO public.games VALUES (5, 1, 67, 70);
INSERT INTO public.games VALUES (6, 1, 58, 59);
INSERT INTO public.games VALUES (7, 1, 392, 393);
INSERT INTO public.games VALUES (8, 3, 863, 864);
INSERT INTO public.games VALUES (9, 3, 650, 651);
INSERT INTO public.games VALUES (10, 4, 337, 338);
INSERT INTO public.games VALUES (11, 4, 226, 227);
INSERT INTO public.games VALUES (12, 3, 177, 180);
INSERT INTO public.games VALUES (13, 3, 418, 419);
INSERT INTO public.games VALUES (14, 3, 95, 96);
INSERT INTO public.games VALUES (15, 5, 361, 15);
INSERT INTO public.games VALUES (16, 6, 661, 662);
INSERT INTO public.games VALUES (17, 6, 529, 530);
INSERT INTO public.games VALUES (18, 7, 199, 200);
INSERT INTO public.games VALUES (19, 7, 52, 53);
INSERT INTO public.games VALUES (20, 6, 60, 63);
INSERT INTO public.games VALUES (21, 6, 821, 822);
INSERT INTO public.games VALUES (22, 6, 135, 136);
INSERT INTO public.games VALUES (23, 8, 232, 233);
INSERT INTO public.games VALUES (24, 8, 81, 82);
INSERT INTO public.games VALUES (25, 9, 296, 297);
INSERT INTO public.games VALUES (26, 9, 443, 444);
INSERT INTO public.games VALUES (27, 8, 748, 751);
INSERT INTO public.games VALUES (28, 8, 629, 630);
INSERT INTO public.games VALUES (29, 8, 472, 473);
INSERT INTO public.games VALUES (30, 10, 926, 927);
INSERT INTO public.games VALUES (31, 10, 708, 709);
INSERT INTO public.games VALUES (32, 11, 28, 29);
INSERT INTO public.games VALUES (33, 11, 714, 715);
INSERT INTO public.games VALUES (34, 10, 603, 606);
INSERT INTO public.games VALUES (35, 10, 447, 448);
INSERT INTO public.games VALUES (36, 10, 419, 420);
INSERT INTO public.games VALUES (37, 12, 439, 440);
INSERT INTO public.games VALUES (38, 12, 871, 872);
INSERT INTO public.games VALUES (39, 13, 211, 212);
INSERT INTO public.games VALUES (40, 13, 2, 3);
INSERT INTO public.games VALUES (41, 12, 713, 716);
INSERT INTO public.games VALUES (42, 12, 121, 122);
INSERT INTO public.games VALUES (43, 12, 14, 15);
INSERT INTO public.games VALUES (44, 14, 910, 911);
INSERT INTO public.games VALUES (45, 14, 728, 729);
INSERT INTO public.games VALUES (46, 15, 240, 241);
INSERT INTO public.games VALUES (47, 15, 227, 228);
INSERT INTO public.games VALUES (48, 14, 274, 277);
INSERT INTO public.games VALUES (49, 14, 585, 586);
INSERT INTO public.games VALUES (50, 14, 235, 236);
INSERT INTO public.games VALUES (51, 16, 559, 560);
INSERT INTO public.games VALUES (52, 16, 68, 69);
INSERT INTO public.games VALUES (53, 17, 195, 196);
INSERT INTO public.games VALUES (54, 17, 753, 754);
INSERT INTO public.games VALUES (55, 16, 828, 831);
INSERT INTO public.games VALUES (56, 16, 924, 925);
INSERT INTO public.games VALUES (57, 16, 709, 710);
INSERT INTO public.games VALUES (58, 18, 537, 538);
INSERT INTO public.games VALUES (59, 18, 626, 627);
INSERT INTO public.games VALUES (60, 19, 118, 119);
INSERT INTO public.games VALUES (61, 19, 314, 315);
INSERT INTO public.games VALUES (62, 18, 631, 634);
INSERT INTO public.games VALUES (63, 18, 725, 726);
INSERT INTO public.games VALUES (64, 18, 639, 640);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1676867385788');
INSERT INTO public.users VALUES (2, 'user_1676867385787');
INSERT INTO public.users VALUES (3, 'user_1676867416577');
INSERT INTO public.users VALUES (4, 'user_1676867416576');
INSERT INTO public.users VALUES (5, 'ME');
INSERT INTO public.users VALUES (6, 'user_1676867659437');
INSERT INTO public.users VALUES (7, 'user_1676867659436');
INSERT INTO public.users VALUES (8, 'user_1676867686304');
INSERT INTO public.users VALUES (9, 'user_1676867686303');
INSERT INTO public.users VALUES (10, 'user_1676867735146');
INSERT INTO public.users VALUES (11, 'user_1676867735145');
INSERT INTO public.users VALUES (12, 'user_1676867756273');
INSERT INTO public.users VALUES (13, 'user_1676867756272');
INSERT INTO public.users VALUES (14, 'user_1676867776201');
INSERT INTO public.users VALUES (15, 'user_1676867776200');
INSERT INTO public.users VALUES (16, 'user_1676867824339');
INSERT INTO public.users VALUES (17, 'user_1676867824338');
INSERT INTO public.users VALUES (18, 'user_1676867868732');
INSERT INTO public.users VALUES (19, 'user_1676867868731');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

