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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    description text,
    diameter integer NOT NULL,
    is_dangerous boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    size numeric NOT NULL,
    has_dark_matter boolean NOT NULL,
    num_stars integer NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    radius integer NOT NULL,
    is_habitable boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    mass numeric NOT NULL,
    has_ring boolean NOT NULL,
    is_habitable boolean NOT NULL,
    star_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    temperature integer NOT NULL,
    mass numeric NOT NULL,
    is_supernova boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Vesta', 'Asteroid', 'One of the largest objects in the asteroid belt.', 525, false, 2);
INSERT INTO public.asteroid VALUES (2, 'Psyche', 'Metal-rich Asteroid', 'Believed to be composed mostly of metallic iron and nickel.', 226, false, 4);
INSERT INTO public.asteroid VALUES (3, 'Eros', 'Asteroid', 'First asteroid discovered to be an Earth-crosser.', 34, true, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 1000000.0, true, 200000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 1200000.0, true, 250000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Irregular', 500000.0, false, 40000000);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Elliptical', 700000.0, false, 150000000);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'Elliptical', 800000.0, true, 180000000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral', 600000.0, true, 120000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Terrestrial', 1737, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Irregular', 11, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Irregular', 6, false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Galilean', 2634, false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Galilean', 1561, false, 3);
INSERT INTO public.moon VALUES (6, 'Io', 'Galilean', 1821, false, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 'Spherical', 2575, false, 4);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Spherical', 252, false, 4);
INSERT INTO public.moon VALUES (9, 'Triton', 'Spherical', 1353, false, 5);
INSERT INTO public.moon VALUES (10, 'Charon', 'Dwarf', 606, false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Spherical', 561, false, 4);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Spherical', 764, false, 4);
INSERT INTO public.moon VALUES (13, 'Oberon', 'Spherical', 761, false, 5);
INSERT INTO public.moon VALUES (14, 'Titania', 'Spherical', 788, false, 5);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'Spherical', 584, false, 5);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Spherical', 578, false, 5);
INSERT INTO public.moon VALUES (17, 'Miranda', 'Spherical', 235, false, 5);
INSERT INTO public.moon VALUES (18, 'Callisto', 'Spherical', 2403, false, 3);
INSERT INTO public.moon VALUES (19, 'Iapetus', 'Spherical', 735, false, 4);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'Irregular', 133, false, 4);
INSERT INTO public.moon VALUES (21, 'Tethys', 'Spherical', 531, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 5970000000000000000000000, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 642000000000000000000000, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', 1900000000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas Giant', 568000000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Ice Giant', 102000000000000000000000000, true, false, 5);
INSERT INTO public.planet VALUES (6, 'Proxima Centauri b', 'Exoplanet', 12700000000000000000000000, false, true, 6);
INSERT INTO public.planet VALUES (7, 'Gliese 581g', 'Exoplanet', 3100000000000000000000000, false, true, 6);
INSERT INTO public.planet VALUES (8, 'Kepler-186f', 'Exoplanet', 4020000000000000000000000, false, true, 6);
INSERT INTO public.planet VALUES (9, 'HD 209458 b', 'Exoplanet', 6460000000000000000000000, false, false, 3);
INSERT INTO public.planet VALUES (10, 'WASP-121b', 'Exoplanet', 3800000000000000000000000, false, false, 3);
INSERT INTO public.planet VALUES (11, '55 Cancri e', 'Exoplanet', 86300000000000000000000000, false, false, 4);
INSERT INTO public.planet VALUES (12, 'HD 219134 b', 'Exoplanet', 43600000000000000000000000, false, false, 4);
INSERT INTO public.planet VALUES (13, 'Kepler-442b', 'Exoplanet', 3310000000000000000000000, false, true, 6);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1e', 'Exoplanet', 7500000000000000000000000, false, true, 6);
INSERT INTO public.planet VALUES (15, 'HD 40307g', 'Exoplanet', 7190000000000000000000000, false, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 5778, 1989000000000000000000000000000, false, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red Supergiant', 3500, 103000000000000000000000000000000, false, 2);
INSERT INTO public.star VALUES (3, 'Rigel', 'Blue Supergiant', 12100, 22300000000000000000000000000000, false, 2);
INSERT INTO public.star VALUES (4, 'Sirius', 'A-type', 9940, 2020000000000000000000000000000, false, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 'G-type', 5790, 2240000000000000000000000000000, false, 4);
INSERT INTO public.star VALUES (6, 'Alpha Centauri B', 'K-type', 5260, 1690000000000000000000000000000, false, 4);
INSERT INTO public.star VALUES (7, 'Alpha Lupi', 'B-type', 13400, 10100000000000000000000000000000, false, 3);
INSERT INTO public.star VALUES (8, 'Antares', 'Red Supergiant', 3500, 175000000000000000000000000000000, false, 4);
INSERT INTO public.star VALUES (9, 'Vega', 'A-type', 9600, 2150000000000000000000000000000, false, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

