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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean,
    old boolean,
    mass numeric,
    angle_degr integer,
    rasc_hour integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    name character varying(30) NOT NULL,
    life_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_life_id_seq OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    size integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    size integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    size integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Where we live', true, NULL, 0.8, 29, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Canis', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Maffei', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Virgo', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Magellanic', 6, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES ('Man', 1, 1);
INSERT INTO public.life VALUES ('Dog', 2, 1);
INSERT INTO public.life VALUES ('Cat', 3, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Mercury_moon', 2, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Venus_moon', 3, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Mars-moon', 4, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Jupter_moon', 5, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Saturn_moon', 6, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Neptune_moon', 7, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Namekusei_moon', 8, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Heaven_moon', 9, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Makyo_moon', 10, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Sadala_moon', 11, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('Arlia_moon', 12, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('Jupter_moon2', 5, 13, NULL, NULL);
INSERT INTO public.moon VALUES ('Jupter_moon3', 5, 14, NULL, NULL);
INSERT INTO public.moon VALUES ('jupter_moon4', 5, 15, NULL, NULL);
INSERT INTO public.moon VALUES ('jupter_moon5', 5, 16, NULL, NULL);
INSERT INTO public.moon VALUES ('Saturn_moon2', 6, 17, NULL, NULL);
INSERT INTO public.moon VALUES ('Saturn_moon3', 6, 18, NULL, NULL);
INSERT INTO public.moon VALUES ('Saturn_moon4', 6, 19, NULL, NULL);
INSERT INTO public.moon VALUES ('Saturn_moon5', 6, 20, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Mercury', 1, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', 1, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', 1, 4, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupter', 1, 5, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', 1, 6, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptune', 1, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Namekusei', 2, 8, NULL, NULL);
INSERT INTO public.planet VALUES ('Heaven', 2, 9, NULL, NULL);
INSERT INTO public.planet VALUES ('Makyo', 2, 10, NULL, NULL);
INSERT INTO public.planet VALUES ('Sadala', 2, 11, NULL, NULL);
INSERT INTO public.planet VALUES ('Arlia', 2, 12, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Alpheratz', 2, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Adhara', 3, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Tauri', 4, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Sombrero', 5, 5, NULL, NULL);
INSERT INTO public.star VALUES ('Nubecula', 6, 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_life_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_life_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_life_id UNIQUE (life_id);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


--
-- Name: moon moon_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id UNIQUE (star_id);


--
-- Name: life life_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete