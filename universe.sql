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
description text NOT NULL,
star_id integer,
galaxy_type character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
AS integer
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
moon_id integer NOT NULL,
name character varying(255) NOT NULL,
ordering integer,
distance_from_planet numeric,
color character varying(30),
planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
AS integer
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
planet_id integer NOT NULL,
name character varying(255) NOT NULL,
description text,
ordering integer,
is_spherical boolean DEFAULT true NOT NULL,
star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
AS integer
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
star_id integer NOT NULL,
name character varying(255) NOT NULL,
description text,
galaxy_id integer,
has_life boolean DEFAULT true NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
AS integer
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: statellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.statellite (
statellite_id integer NOT NULL,
name character varying(255) NOT NULL,
place integer,
places integer
);


ALTER TABLE public.statellite OWNER TO freecodecamp;

--
-- Name: statellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.statellite_satellite_id_seq
AS integer
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


ALTER TABLE public.statellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: statellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.statellite_satellite_id_seq OWNED BY public.statellite.statellite_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: statellite statellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.statellite ALTER COLUMN statellite_id SET DEFAULT nextval('public.statellite_satellite_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milk Way', 'Our Galayx', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'LMC', 'Other galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Other galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'Another Galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'PinWhell', 'Another Galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Another Galaxy', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Europe', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Triton', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Neith', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Titan', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Random Lunar', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Random Lunar2', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Random Lunar3', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Random Lunar 5', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Lunar icon', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Lunar Marle', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'LO', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'Ganymed', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (15, 'Callisto', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Amalthee', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, 'Himalia', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'Thebe', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'Europie', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (20, 'Deimos', NULL, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (4, 'Neptune', NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (5, 'Venus', NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (6, 'Startune', NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (7, 'Random 1', NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (8, 'Random 2', NULL, NULL, true, 3);
INSERT INTO public.planet VALUES (9, 'Random Plan', NULL, NULL, true, 4);
INSERT INTO public.planet VALUES (10, 'Random XY', NULL, NULL, true, 5);
INSERT INTO public.planet VALUES (11, 'PinWheel', NULL, NULL, true, 6);
INSERT INTO public.planet VALUES (12, 'Random 34', NULL, NULL, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, true);
INSERT INTO public.star VALUES (2, 'Koter', NULL, 2, true);
INSERT INTO public.star VALUES (3, 'Alpha', NULL, 3, true);
INSERT INTO public.star VALUES (4, 'Cigar Sun', NULL, 4, true);
INSERT INTO public.star VALUES (5, 'PinWheel Major Star', NULL, 5, true);
INSERT INTO public.star VALUES (6, 'Sombrero Star', NULL, 6, true);


--
-- Data for Name: statellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.statellite VALUES (1, 'Test 1', NULL, NULL);
INSERT INTO public.statellite VALUES (2, 'Test 2', NULL, NULL);
INSERT INTO public.statellite VALUES (3, 'Test 3', NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: statellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.statellite_satellite_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uuid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
ADD CONSTRAINT moon_uuid UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uuid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
ADD CONSTRAINT star_uuid UNIQUE (star_id);


--
-- Name: statellite statellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.statellite
ADD CONSTRAINT statellite_name_key UNIQUE (name);


--
-- Name: statellite statellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.statellite
ADD CONSTRAINT statellite_pkey PRIMARY KEY (statellite_id);


--
-- Name: galaxy u_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
ADD CONSTRAINT u_name UNIQUE (name);


--
-- Name: planet uuid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
ADD CONSTRAINT uuid UNIQUE (planet_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

