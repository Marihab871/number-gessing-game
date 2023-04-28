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
    game_id integer,
    player_id integer,
    score integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 59, 441);
INSERT INTO public.games VALUES (1, 49, 441);
INSERT INTO public.games VALUES (1, 50, 441);
INSERT INTO public.games VALUES (1, 51, 441);
INSERT INTO public.games VALUES (1, 52, 441);
INSERT INTO public.games VALUES (1, 53, 441);
INSERT INTO public.games VALUES (1, 54, 441);
INSERT INTO public.games VALUES (1, 55, 441);
INSERT INTO public.games VALUES (1, 56, 441);
INSERT INTO public.games VALUES (1, 57, 441);
INSERT INTO public.games VALUES (1, 58, 441);
INSERT INTO public.games VALUES (1, 60, 441);
INSERT INTO public.games VALUES (1, 61, 441);
INSERT INTO public.games VALUES (1, 62, 441);
INSERT INTO public.games VALUES (1, 63, 441);
INSERT INTO public.games VALUES (1, 64, 441);
INSERT INTO public.games VALUES (1, 65, 441);
INSERT INTO public.games VALUES (1, 66, 441);
INSERT INTO public.games VALUES (1, 67, 441);
INSERT INTO public.games VALUES (1, 68, 441);
INSERT INTO public.games VALUES (1, 69, 441);
INSERT INTO public.games VALUES (2, 69, 133);
INSERT INTO public.games VALUES (2, 70, 133);
INSERT INTO public.games VALUES (2, 66, 133);
INSERT INTO public.games VALUES (2, 59, 133);
INSERT INTO public.games VALUES (2, 49, 133);
INSERT INTO public.games VALUES (2, 50, 133);
INSERT INTO public.games VALUES (2, 51, 133);
INSERT INTO public.games VALUES (2, 52, 133);
INSERT INTO public.games VALUES (2, 54, 133);
INSERT INTO public.games VALUES (2, 55, 133);
INSERT INTO public.games VALUES (2, 57, 133);
INSERT INTO public.games VALUES (2, 58, 133);
INSERT INTO public.games VALUES (2, 60, 133);
INSERT INTO public.games VALUES (2, 53, 133);
INSERT INTO public.games VALUES (2, 62, 133);
INSERT INTO public.games VALUES (2, 63, 133);
INSERT INTO public.games VALUES (2, 65, 133);
INSERT INTO public.games VALUES (2, 67, 133);
INSERT INTO public.games VALUES (2, 68, 133);
INSERT INTO public.games VALUES (3, 67, 866);
INSERT INTO public.games VALUES (3, 65, 866);
INSERT INTO public.games VALUES (3, 59, 866);
INSERT INTO public.games VALUES (3, 49, 866);
INSERT INTO public.games VALUES (3, 51, 866);
INSERT INTO public.games VALUES (3, 54, 866);
INSERT INTO public.games VALUES (3, 57, 866);
INSERT INTO public.games VALUES (3, 62, 866);
INSERT INTO public.games VALUES (3, 69, 866);
INSERT INTO public.games VALUES (4, 67, 857);
INSERT INTO public.games VALUES (4, 65, 857);
INSERT INTO public.games VALUES (4, 59, 857);
INSERT INTO public.games VALUES (4, 49, 857);
INSERT INTO public.games VALUES (4, 51, 857);
INSERT INTO public.games VALUES (4, 54, 857);
INSERT INTO public.games VALUES (4, 57, 857);
INSERT INTO public.games VALUES (4, 62, 857);
INSERT INTO public.games VALUES (4, 69, 857);
INSERT INTO public.games VALUES (5, 67, 218);
INSERT INTO public.games VALUES (5, 65, 218);
INSERT INTO public.games VALUES (5, 59, 218);
INSERT INTO public.games VALUES (5, 49, 218);
INSERT INTO public.games VALUES (5, 51, 218);
INSERT INTO public.games VALUES (5, 54, 218);
INSERT INTO public.games VALUES (5, 57, 218);
INSERT INTO public.games VALUES (5, 62, 218);
INSERT INTO public.games VALUES (5, 69, 218);
INSERT INTO public.games VALUES (1, 70, 441);
INSERT INTO public.games VALUES (1, 71, 441);
INSERT INTO public.games VALUES (1, 72, 441);
INSERT INTO public.games VALUES (2, 71, 133);
INSERT INTO public.games VALUES (2, 72, 133);
INSERT INTO public.games VALUES (3, 71, 866);
INSERT INTO public.games VALUES (4, 71, 857);
INSERT INTO public.games VALUES (5, 71, 218);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (49, 'user_1682657193947');
INSERT INTO public.players VALUES (50, 'user_1682657193946');
INSERT INTO public.players VALUES (51, 'user_1682669867010');
INSERT INTO public.players VALUES (52, 'user_1682669867009');
INSERT INTO public.players VALUES (53, 'didier');
INSERT INTO public.players VALUES (54, 'user_1682670043922');
INSERT INTO public.players VALUES (55, 'user_1682670043921');
INSERT INTO public.players VALUES (56, 't');
INSERT INTO public.players VALUES (57, 'user_1682670183627');
INSERT INTO public.players VALUES (58, 'user_1682670183626');
INSERT INTO public.players VALUES (59, 'user_1682670413197');
INSERT INTO public.players VALUES (60, 'user_1682670413196');
INSERT INTO public.players VALUES (61, '8');
INSERT INTO public.players VALUES (62, 'user_1682672726429');
INSERT INTO public.players VALUES (63, 'user_1682672726428');
INSERT INTO public.players VALUES (64, 'giton');
INSERT INTO public.players VALUES (65, 'user_1682672769095');
INSERT INTO public.players VALUES (66, 'user_1682672769094');
INSERT INTO public.players VALUES (67, 'user_1682672794323');
INSERT INTO public.players VALUES (68, 'user_1682672794322');
INSERT INTO public.players VALUES (69, 'user_1682672846528');
INSERT INTO public.players VALUES (70, 'user_1682672846527');
INSERT INTO public.players VALUES (71, 'user_1682672866661');
INSERT INTO public.players VALUES (72, 'user_1682672866660');


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 72, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

