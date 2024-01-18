--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 516, 517, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 518, 519, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 517, 519, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 516, 518, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 517, 525, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 519, 527, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 518, 529, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 516, 531, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 519, 533, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 527, 535, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 518, 537, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 529, 539, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 517, 541, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 525, 543, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 531, 545, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 516, 547, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 548, 547, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 550, 529, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 547, 550, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 548, 529, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 550, 557, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 547, 518, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 529, 533, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 548, 516, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 529, 565, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 533, 531, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 516, 569, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 548, 571, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 550, 539, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 557, 575, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 547, 535, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 518, 579, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (516, 'France');
INSERT INTO public.teams VALUES (517, 'Croatia');
INSERT INTO public.teams VALUES (518, 'Belgium');
INSERT INTO public.teams VALUES (519, 'England');
INSERT INTO public.teams VALUES (525, 'Russia');
INSERT INTO public.teams VALUES (527, 'Sweden');
INSERT INTO public.teams VALUES (529, 'Brazil');
INSERT INTO public.teams VALUES (531, 'Uruguay');
INSERT INTO public.teams VALUES (533, 'Colombia');
INSERT INTO public.teams VALUES (535, 'Switzerland');
INSERT INTO public.teams VALUES (537, 'Japan');
INSERT INTO public.teams VALUES (539, 'Mexico');
INSERT INTO public.teams VALUES (541, 'Denmark');
INSERT INTO public.teams VALUES (543, 'Spain');
INSERT INTO public.teams VALUES (545, 'Portugal');
INSERT INTO public.teams VALUES (547, 'Argentina');
INSERT INTO public.teams VALUES (548, 'Germany');
INSERT INTO public.teams VALUES (550, 'Netherlands');
INSERT INTO public.teams VALUES (557, 'Costa Rica');
INSERT INTO public.teams VALUES (565, 'Chile');
INSERT INTO public.teams VALUES (569, 'Nigeria');
INSERT INTO public.teams VALUES (571, 'Algeria');
INSERT INTO public.teams VALUES (575, 'Greece');
INSERT INTO public.teams VALUES (579, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 579, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

