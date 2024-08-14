--
-- PostgreSQL database dump
--
-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
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
    name character varying(50) NOT NULL,
    description text,
    age_in_milions_of_years numeric,
    number_of_stars integer,
    galaxy_type_id integer NOT NULL
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);
ALTER TABLE public.galaxy_type OWNER TO freecodecamp;
--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;
--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;
--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_milions_of_years numeric,
    has_life boolean,
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
    name character varying(50) NOT NULL,
    description text,
    age_in_milions_of_years numeric,
    number_of_moons integer,
    has_life boolean,
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
    name character varying(50) NOT NULL,
    description text,
    age_in_milions_of_years numeric,
    number_of_planets integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);
--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);
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
INSERT INTO public.galaxy VALUES (2, 'Andromeda III', 'Andromeda III is a dwarf spheroidal galaxy about 2.44 million light-years away in the constellation Andromeda. It is part of the Local Group and is a satellite galaxy of the Andromeda Galaxy (M31)', 9000000000, 56, 1);
INSERT INTO public.galaxy VALUES (3, 'Pisces Dwarf', 'The Pisces Dwarf, also known as Pisces I,[1] is an irregular dwarf galaxy that is part of the Local Group. The galaxy, taking its name from the constellation Pisces where it appears, is suspected of being a satellite galaxy of the Triangulum Galaxy (M33). It displays a blueshift, as it is approaching the Milky Way at 287 km/s. It may be transition-type galaxy, somewhere between dwarf spheroidal and dwarf irregular. Alternatively, it may be a rare, but statistically acceptable, version of one of the two types.[2]', 8000000000, 350000, 2);
INSERT INTO public.galaxy VALUES (4, 'IC 1613', 'IC 1613 (object 1613 in the Index Catalogues (IC), also known as Caldwell 51) is an irregular dwarf galaxy, visible in the constellation Cetus near the star 26 Ceti.[6] It was discovered in 1906 by Max Wolf,[7] and is approaching Earth at 234 km/s', 7000000000, 100000000, 2);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'The Triangulum Galaxy is a spiral galaxy 2.73 million light-years (ly) from Earth in the constellation Triangulum. It is catalogued as Messier 33 or NGC (New General Catalogue) 598. With the D25 isophotal diameter of 18.74 kiloparsecs (61,100 light-years), the Triangulum Galaxy is the third-largest member of the Local Group of galaxies, behind the Andromeda Galaxy and the Milky Way.', 3500000, 400000000, 3);
INSERT INTO public.galaxy VALUES (6, 'Aquarius Dwarf', 'The Aquarius Dwarf is a dwarf irregular galaxy, first catalogued in 1959 by the DDO survey. It is located within the boundaries of the constellation of Aquarius. It is a member of the Local Group of galaxies, albeit an extremely isolated one; it is one of only a few known Local Group members for which a past close approach to the Milky Way or Andromeda Galaxy can be ruled out, based on its current location and velocity.', 6800000000, 500000000, 3);
INSERT INTO public.galaxy VALUES (7, 'Tucana Dwarf', 'The Tucana Dwarf Galaxy is a dwarf galaxy in the constellation Tucana. It was discovered in 1990 by R.J. Lavery of Mount Stromlo Observatory. It is composed of very old stars and is very isolated from other galaxies. Its location on the opposite side of the Milky Way from other Local Group galaxies makes it an important object for study.', 11000000000, 36, 4);
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxys appearance from Earth a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.', 13610000000, 100000000, 5);
--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.galaxy_type VALUES (1, 'dwarf spheroidal galaxy', 'A dwarf spheroidal galaxy (dSph) is a term in astronomy applied to small, low-luminosity galaxies with very little dust and an older stellar population. They are found in the Local Group as companions to the Milky Way and as systems that are companions to the Andromeda Galaxy (M31)');
INSERT INTO public.galaxy_type VALUES (2, 'irregular dwarf galaxy', 'A dI-galaxy (or dIrr) is a dwarf irregular galaxy. This type of galaxy is now thought to be important to understand the overall evolution of galaxies, as they tend to have a low level of metallicity and relatively high levels of gas, and are thought to be similar to the earliest galaxies that populated the Universe.');
INSERT INTO public.galaxy_type VALUES (3, 'spiral galaxy', 'Spiral galaxies form a class of galaxy originally described by Edwin Hubble in his 1936 work The Realm of the Nebulae[1] and, as such, form part of the Hubble sequence. Most spiral galaxies consist of a flat, rotating disk containing stars, gas and dust, and a central concentration of stars known as the bulge. These are often surrounded by a much fainter halo of stars, many of which reside in globular clusters.');
INSERT INTO public.galaxy_type VALUES (4, 'dwarf galaxy', 'A dwarf galaxy is a small galaxy composed of about 1000 up to several billion stars, as compared to the Milky Ways 200–400 billion stars. The Large Magellanic Cloud, which closely orbits the Milky Way and contains over 30 billion stars, is sometimes classified as a dwarf galaxy; others consider it a full-fledged galaxy. Dwarf galaxies formation and activity are thought to be heavily influenced by interactions with larger galaxies. Astronomers identify numerous types of dwarf galaxies, based on their shape and composition.');
INSERT INTO public.galaxy_type VALUES (5, 'barred spiral galaxy', 'A barred spiral galaxy is a spiral galaxy with a central bar-shaped structure composed of stars. Bars are found in about two thirds of all spiral galaxies in the local universe,[2] and generally affect both the motions of stars and interstellar gas within spiral galaxies and can affect spiral arms as well. The Milky Way Galaxy, where the Solar System is located, is classified as a barred spiral galaxy.');
--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.moon VALUES (1, 'Titania', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Setebos', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Miranda', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Oberon', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (5, 'Puck', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Ariel', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'Umbriel', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'Trinculo', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Desdemona', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (10, 'Sycorax', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (11, 'Perdita', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (12, 'Bianca', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (13, 'Ferdinand', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'Cordelia', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (15, 'Caliban', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Prospero', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, 'Margaret', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'Portia', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'Rosalind', 'Its a moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (20, 'Cupid', 'Its a moon', NULL, NULL, 3);
--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.planet VALUES (1, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being an ocean world, the only one in the Solar System sustaining liquid surface water. Almost all of Earths water is contained in its global ocean, covering 70.8% of Earths crust', 4543000000, 1, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbour Earth. Venus is notable for having the densest atmosphere of the terrestrial planets, composed mostly of carbon dioxide with a thick, global sulfuric acid cloud cover.', 4500000000, 0, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Uranus', 'Uranus is the seventh planet from the Sun. It is a gaseous cyan-coloured ice giant. Most of the planet is made of water, ammonia, and methane in a supercritical phase of matter, which astronomy calls "ice" or volatiles', 4500000000, 27, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than 2.5 times that of all the other planets in the Solar System combined and slightly less than one-thousandth the mass of the Sun', 4600000000, 95, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 'Mercury is the first planet from the Sun and the smallest in the Solar System. In English, it is named after the ancient Roman god Mercurius, god of commerce and communication, and the messenger of the gods. Mercury is classified as a terrestrial planet, with roughly the same surface gravity as Mars', 4500000000, 0, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Neptune is the eighth and farthest known planet from the Sun. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth and slightly more massive, but denser and smaller, than fellow ice giant Uranus', 4500000000, 16, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Saturn is the sixth planet from the Sun and the second largest in the Solar System, after Jupiter. It is a gas giant, with an average radius of about nine and a half times that of Earth. It has an eighth the average density of Earth, but is over 95 times more massive', 4500000000, 146, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Mars', 'Mars is the fourth planet from the Sun. The surface of Mars is orange-red because it is covered in iron(III) oxide dust, giving it the nickname "the Red Planet". Mars is among the brightest objects in Earths sky, and its high-contrast albedo features have made it a common subject for telescope viewing', 4600000000, 2, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri A', 'Its a planet', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri B', 'Its a planet', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri C', 'Its a planet', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (13, 'Alpha Centauri D', 'Its a planet', NULL, NULL, NULL, 3);
--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System. It is a massive, nearly perfect sphere of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy from its surface mainly as visible light and infrared radiation with 10% at ultraviolet energies. It is by far the most important source of energy for life on Earth. The Sun has been an object of veneration in many cultures. It has been a central subject for astronomical research since antiquity.', 4600000000, 8, 8);
INSERT INTO public.star VALUES (2, 'proxima centauri', 'Proxima Centauri is a small, low-mass star located 4.2465 light-years (1.3020 pc) away from the Sun in the southern constellation of Centaurus. Its Latin name means the nearest star of Centaurus. It was discovered in 1915 by Robert Innes and is the nearest-known star to the Sun. ', 4800000000, 3, 8);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'Alpha Centauri (α Centauri, α Cen, or Alpha Cen) is a triple star system in the southern constellation of Centaurus. It consists of three stars Rigil Kentaurus (α Centauri A), Toliman (α Centauri B), and Proxima Centauri (α Centauri C). Proxima Centauri is the closest star to the Sun at 4.2465 light-years', 4850000000, 5, 8);
INSERT INTO public.star VALUES (4, 'Barnards Star', 'Barnards Star is a small red dwarf star in the constellation of Ophiuchus. At a distance of 5.96 light-years (1.83 pc) from Earth, it is the fourth-nearest-known individual star to the Sun after the three components of the Alpha Centauri system, and is the closest star in the northern celestial hemisphere. Its stellar mass is about 16% of the Suns, and it has 19% of the Suns diameter. Despite its proximity, the star has a dim apparent visual magnitude of +9.5 and is invisible to the unaided eye; it is much brighter in the infrared than in visible light', 10000000000, 3, 8);
INSERT INTO public.star VALUES (5, 'Wolf 359', 'Wolf 359 is a red dwarf star located in the constellation Leo, near the ecliptic. At a distance of 7.86 light-years (2.41 parsecs) from Earth, it has an apparent magnitude of 13.54 and can only be seen with a large telescope. Wolf 359 is one of the nearest stars to the Sun', 100000000, 2, 8);
INSERT INTO public.star VALUES (6, 'Lalande 21185', 'Lalande 21185 (also known as BD+36 2147, Gliese 411, and HD 95735[3]) is a star in the south of Ursa Major. It is the apparent brightest red dwarf in the northern hemisphere. Despite this, and being relatively close by, it is very dim (as are all red dwarfs), being only magnitude 7.5 in visible light and thus too faint to be seen with the unaided eye. The star is visible through a small telescope or binoculars', 750000000, 3, 8);
--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);
--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 5, true);
--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);
--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);
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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);
--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);
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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
--
-- Name: galaxy fk_galaxy_type; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_type FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);
--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);
--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);
--
-- PostgreSQL database dump complete
--
