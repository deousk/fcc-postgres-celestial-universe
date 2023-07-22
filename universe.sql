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
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    speed integer,
    age_in_millions_of_years integer
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
-- Name: info_t; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info_t (
    info_t_id integer NOT NULL,
    descriptive_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text
);


ALTER TABLE public.info_t OWNER TO freecodecamp;

--
-- Name: info_t_info_t_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_t_info_t_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_t_info_t_id_seq OWNER TO freecodecamp;

--
-- Name: info_t_info_t_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_t_info_t_id_seq OWNED BY public.info_t.info_t_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    speed integer,
    age_in_millions_of_years integer
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
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    speed integer,
    age_in_millions_of_years integer
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
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    speed integer
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
-- Name: info_t info_t_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_t ALTER COLUMN info_t_id SET DEFAULT nextval('public.info_t_info_t_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (3, 'galaxy1', NULL, NULL, NULL, NULL, 2030049, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy2', NULL, NULL, NULL, NULL, 2030049, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy3', NULL, NULL, NULL, NULL, 2030049, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy4', NULL, NULL, NULL, NULL, 2030049, NULL);
INSERT INTO public.galaxy VALUES (7, 'galaxy5', NULL, NULL, NULL, NULL, 2030049, NULL);
INSERT INTO public.galaxy VALUES (8, 'galaxy6', NULL, NULL, NULL, NULL, 2030049, NULL);


--
-- Data for Name: info_t; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info_t VALUES (1, 1, 'info1', NULL);
INSERT INTO public.info_t VALUES (2, 1, 'info2', NULL);
INSERT INTO public.info_t VALUES (3, 2, 'info3', NULL);
INSERT INTO public.info_t VALUES (4, 3, 'info4', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Phobos', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 2, 'Io', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 3, 'Europa', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 4, 'Janus', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 5, 'Titania', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 6, 'Triton', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 7, 'Charon', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 8, 'Luna', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 9, 'Cynthia', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 10, 'Selene', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 11, 'Diana', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 12, 'callisto', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 12, 'Himalia', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 12, 'Sinope', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 12, 'Elara', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 12, 'Ananke', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 12, 'Metis', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 12, 'Thyone', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 12, 'Kale', NULL, 120234234, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 12, 'Carfo', NULL, 120234234, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 12, 'Arche', NULL, 120234234, false, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Earth', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (2, 2, 'Mars', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (3, 3, 'Jupter', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (4, 4, 'Saturn', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (5, 5, 'Uranus', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (6, 6, 'Neptune', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (7, 6, 'Venus', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (8, 6, 'Pluto', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (9, 6, 'Orcus', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (10, 6, 'Eris', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (11, 6, 'Verda', NULL, NULL, NULL, NULL, 12000234, NULL);
INSERT INTO public.planet VALUES (12, 6, 'Selacia', NULL, NULL, NULL, NULL, 12000234, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 3, 'Acamar', NULL, NULL, NULL, NULL, NULL, 230465);
INSERT INTO public.star VALUES (2, 4, 'Achird', NULL, NULL, NULL, NULL, NULL, 230465);
INSERT INTO public.star VALUES (3, 4, 'Acrab', NULL, NULL, NULL, NULL, NULL, 230465);
INSERT INTO public.star VALUES (4, 4, 'Atlas', NULL, NULL, NULL, NULL, NULL, 230465);
INSERT INTO public.star VALUES (5, 4, 'Buna', NULL, NULL, NULL, NULL, NULL, 230465);
INSERT INTO public.star VALUES (6, 4, 'Dofida', NULL, NULL, NULL, NULL, NULL, 230465);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: info_t_info_t_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_t_info_t_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: info_t info_t_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_t
    ADD CONSTRAINT info_t_name_key UNIQUE (name);


--
-- Name: info_t info_t_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_t
    ADD CONSTRAINT info_t_pkey PRIMARY KEY (info_t_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
--

