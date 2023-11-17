--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: airplanes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airplanes (
    airplane_id integer NOT NULL,
    registration_number character varying(50),
    model_id integer
);


ALTER TABLE public.airplanes OWNER TO postgres;

--
-- Name: airplanes_airplane_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.airplanes_airplane_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.airplanes_airplane_id_seq OWNER TO postgres;

--
-- Name: airplanes_airplane_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.airplanes_airplane_id_seq OWNED BY public.airplanes.airplane_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    name character varying(100),
    ssn character varying(50),
    address character varying(200),
    phone_number character varying(20),
    union_membership_number character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.models (
    model_id integer NOT NULL,
    model_number character varying(50),
    capacity integer,
    weight integer
);


ALTER TABLE public.models OWNER TO postgres;

--
-- Name: models_model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.models_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.models_model_id_seq OWNER TO postgres;

--
-- Name: models_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.models_model_id_seq OWNED BY public.models.model_id;


--
-- Name: technicianexpertise; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.technicianexpertise (
    technician_id integer NOT NULL,
    model_id integer NOT NULL
);


ALTER TABLE public.technicianexpertise OWNER TO postgres;

--
-- Name: technicians; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.technicians (
    technician_id integer NOT NULL,
    name character varying(100),
    ssn character varying(50),
    address character varying(200),
    phone_number character varying(20),
    salary numeric(10,2)
);


ALTER TABLE public.technicians OWNER TO postgres;

--
-- Name: technicians_technician_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.technicians_technician_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technicians_technician_id_seq OWNER TO postgres;

--
-- Name: technicians_technician_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.technicians_technician_id_seq OWNED BY public.technicians.technician_id;


--
-- Name: testingevents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.testingevents (
    testing_event_id integer NOT NULL,
    airplane_id integer,
    technician_id integer,
    test_id integer,
    date date,
    hours_spent numeric(10,2),
    score integer
);


ALTER TABLE public.testingevents OWNER TO postgres;

--
-- Name: testingevents_testing_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.testingevents_testing_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testingevents_testing_event_id_seq OWNER TO postgres;

--
-- Name: testingevents_testing_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.testingevents_testing_event_id_seq OWNED BY public.testingevents.testing_event_id;


--
-- Name: tests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tests (
    test_id integer NOT NULL,
    faa_test_number character varying(50),
    name character varying(100),
    max_score integer
);


ALTER TABLE public.tests OWNER TO postgres;

--
-- Name: tests_test_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_test_id_seq OWNER TO postgres;

--
-- Name: tests_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_test_id_seq OWNED BY public.tests.test_id;


--
-- Name: trafficcontrollers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trafficcontrollers (
    traffic_controller_id integer NOT NULL,
    name character varying(100),
    ssn character varying(50),
    address character varying(200),
    phone_number character varying(20),
    medical_exam_date date
);


ALTER TABLE public.trafficcontrollers OWNER TO postgres;

--
-- Name: trafficcontrollers_traffic_controller_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trafficcontrollers_traffic_controller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trafficcontrollers_traffic_controller_id_seq OWNER TO postgres;

--
-- Name: trafficcontrollers_traffic_controller_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trafficcontrollers_traffic_controller_id_seq OWNED BY public.trafficcontrollers.traffic_controller_id;


--
-- Name: airplanes airplane_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airplanes ALTER COLUMN airplane_id SET DEFAULT nextval('public.airplanes_airplane_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: models model_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models ALTER COLUMN model_id SET DEFAULT nextval('public.models_model_id_seq'::regclass);


--
-- Name: technicians technician_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technicians ALTER COLUMN technician_id SET DEFAULT nextval('public.technicians_technician_id_seq'::regclass);


--
-- Name: testingevents testing_event_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testingevents ALTER COLUMN testing_event_id SET DEFAULT nextval('public.testingevents_testing_event_id_seq'::regclass);


--
-- Name: tests test_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests ALTER COLUMN test_id SET DEFAULT nextval('public.tests_test_id_seq'::regclass);


--
-- Name: trafficcontrollers traffic_controller_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trafficcontrollers ALTER COLUMN traffic_controller_id SET DEFAULT nextval('public.trafficcontrollers_traffic_controller_id_seq'::regclass);


--
-- Name: airplanes airplanes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airplanes
    ADD CONSTRAINT airplanes_pkey PRIMARY KEY (airplane_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: models models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (model_id);


--
-- Name: technicianexpertise technicianexpertise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technicianexpertise
    ADD CONSTRAINT technicianexpertise_pkey PRIMARY KEY (technician_id, model_id);


--
-- Name: technicians technicians_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technicians
    ADD CONSTRAINT technicians_pkey PRIMARY KEY (technician_id);


--
-- Name: testingevents testingevents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testingevents
    ADD CONSTRAINT testingevents_pkey PRIMARY KEY (testing_event_id);


--
-- Name: tests tests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (test_id);


--
-- Name: trafficcontrollers trafficcontrollers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trafficcontrollers
    ADD CONSTRAINT trafficcontrollers_pkey PRIMARY KEY (traffic_controller_id);


--
-- Name: airplanes airplanes_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airplanes
    ADD CONSTRAINT airplanes_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.models(model_id);


--
-- Name: technicianexpertise technicianexpertise_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technicianexpertise
    ADD CONSTRAINT technicianexpertise_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.models(model_id);


--
-- Name: technicianexpertise technicianexpertise_technician_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technicianexpertise
    ADD CONSTRAINT technicianexpertise_technician_id_fkey FOREIGN KEY (technician_id) REFERENCES public.technicians(technician_id);


--
-- Name: testingevents testingevents_airplane_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testingevents
    ADD CONSTRAINT testingevents_airplane_id_fkey FOREIGN KEY (airplane_id) REFERENCES public.airplanes(airplane_id);


--
-- Name: testingevents testingevents_technician_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testingevents
    ADD CONSTRAINT testingevents_technician_id_fkey FOREIGN KEY (technician_id) REFERENCES public.technicians(technician_id);


--
-- Name: testingevents testingevents_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testingevents
    ADD CONSTRAINT testingevents_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.tests(test_id);


--
-- PostgreSQL database dump complete
--

