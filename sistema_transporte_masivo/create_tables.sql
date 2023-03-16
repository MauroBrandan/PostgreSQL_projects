CREATE TABLE public.trains
(
    id serial NOT NULL,
    model character varying(30) NOT NULL,
    capacity integer NOT NULL,
    CONSTRAINT trains_pkey PRIMARY KEY (id)
);

CREATE TABLE public.stations
(
    id serial NOT NULL,
    name character varying(30) NOT NULL,
    address character varying(100) NOT NULL,
    CONSTRAINT stations_pkey PRIMARY KEY (id)
);

CREATE TABLE public.passengers
(
    id serial NOT NULL,
    name character varying(100) NOT NULL,
    residence_address character varying(100) NOT NULL,
    birthdate date,
    CONSTRAINT passengers_pkey PRIMARY KEY (id)
);

CREATE TABLE public.lines
(
    id serial NOT NULL,
    id_train integer NOT NULL,
    id_station integer NOT NULL,
    name character varying(30) NOT NULL,
    CONSTRAINT lines_pkey PRIMARY KEY (id_train)
);

CREATE TABLE public.trips
(
    id serial NOT NULL,
    id_passenger integer NOT NULL,
    id_line integer NOT NULL,
    start time without time zone NOT NULL,
    "end" time without time zone NOT NULL,
    CONSTRAINT trips_pkey PRIMARY KEY (id)
);