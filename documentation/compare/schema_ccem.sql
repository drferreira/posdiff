--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: analysis; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE analysis (
    id bigint NOT NULL,
    enddate timestamp without time zone,
    initdate timestamp without time zone,
    author_id bigint,
    finisher_id bigint,
    story_id bigint
);


ALTER TABLE public.analysis OWNER TO postgres;

--
-- Name: analysis_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE analysis_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.analysis_seq OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project (
    projectid bigint NOT NULL,
    color character varying(255),
    creationdate timestamp without time zone NOT NULL,
    description character varying(255),
    nameproject character varying(255) NOT NULL,
    prefix character varying(255),
    owner_id bigint NOT NULL
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_area; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project_area (
    id bigint NOT NULL,
    name character varying(255),
    prefix character varying(255),
    project_projectid bigint
);


ALTER TABLE public.project_area OWNER TO postgres;

--
-- Name: sent_message; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sent_message (
    id bigint NOT NULL,
    date timestamp without time zone NOT NULL,
    message_data character varying(255) NOT NULL,
    type_message character varying(255) NOT NULL,
    sender_id bigint
);


ALTER TABLE public.sent_message OWNER TO postgres;

--
-- Name: sent_message_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sent_message_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sent_message_seq OWNER TO postgres;

--
-- Name: stage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE stage (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    "position" bigint
);


ALTER TABLE public.stage OWNER TO postgres;

--
-- Name: story; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE story (
    id bigint NOT NULL,
    branch character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    creationdate timestamp without time zone,
    description text NOT NULL,
    priority integer NOT NULL,
    story_points integer,
    subject character varying(255) NOT NULL,
    author_id bigint,
    project_projectid bigint,
    projectarea_id bigint,
    stage_id bigint
);


ALTER TABLE public.story OWNER TO postgres;

--
-- Name: story_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE story_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.story_seq OWNER TO postgres;

--
-- Name: story_status; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE story_status (
    id bigint NOT NULL,
    date timestamp without time zone,
    storystatus character varying(255),
    story_id bigint,
    user_id bigint
);


ALTER TABLE public.story_status OWNER TO postgres;

--
-- Name: story_status_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE story_status_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.story_status_seq OWNER TO postgres;

--
-- Name: task; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE task (
    id bigint NOT NULL,
    code character varying(255),
    description character varying(255),
    estimatedtime timestamp without time zone,
    subject character varying(255),
    taskstatus character varying(255) NOT NULL,
    author_id bigint,
    responsible_id bigint,
    story_id bigint
);


ALTER TABLE public.task OWNER TO postgres;

--
-- Name: task_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE task_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_seq OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "user" (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_project; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_project (
    user_id bigint NOT NULL,
    projects_projectid bigint NOT NULL
);


ALTER TABLE public.user_project OWNER TO postgres;

--
-- Name: analysis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY analysis
    ADD CONSTRAINT analysis_pkey PRIMARY KEY (id);


--
-- Name: project_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project_area
    ADD CONSTRAINT project_area_pkey PRIMARY KEY (id);


--
-- Name: project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY (projectid);


--
-- Name: sent_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sent_message
    ADD CONSTRAINT sent_message_pkey PRIMARY KEY (id);


--
-- Name: stage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY stage
    ADD CONSTRAINT stage_pkey PRIMARY KEY (id);


--
-- Name: story_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY story
    ADD CONSTRAINT story_pkey PRIMARY KEY (id);


--
-- Name: story_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY story_status
    ADD CONSTRAINT story_status_pkey PRIMARY KEY (id);


--
-- Name: task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: uk_4iij07gxnde259gps7egarn93; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY story
    ADD CONSTRAINT uk_4iij07gxnde259gps7egarn93 UNIQUE (code);


--
-- Name: user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: fk_1q1b3k1g40ar801jkxaij0ud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_project
    ADD CONSTRAINT fk_1q1b3k1g40ar801jkxaij0ud FOREIGN KEY (projects_projectid) REFERENCES project(projectid);


--
-- Name: fk_2nvmq23bq0lodn5r68qoyj1i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY story
    ADD CONSTRAINT fk_2nvmq23bq0lodn5r68qoyj1i FOREIGN KEY (projectarea_id) REFERENCES project_area(id);


--
-- Name: fk_2ythhqh8s96d9b7i1hlrq2rwg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY story
    ADD CONSTRAINT fk_2ythhqh8s96d9b7i1hlrq2rwg FOREIGN KEY (project_projectid) REFERENCES project(projectid);


--
-- Name: fk_5vp9kgj3tgognk216wmok4vyi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY story_status
    ADD CONSTRAINT fk_5vp9kgj3tgognk216wmok4vyi FOREIGN KEY (story_id) REFERENCES story(id);


--
-- Name: fk_6yq9mpo2ja2tesbtm0e2qy6fw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY analysis
    ADD CONSTRAINT fk_6yq9mpo2ja2tesbtm0e2qy6fw FOREIGN KEY (story_id) REFERENCES story(id);


--
-- Name: fk_71wnrhrxf3wkdb8bbns97wd4g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY task
    ADD CONSTRAINT fk_71wnrhrxf3wkdb8bbns97wd4g FOREIGN KEY (story_id) REFERENCES story(id);


--
-- Name: fk_73vhcxlg4vk27vgtqtbgfvo1j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY task
    ADD CONSTRAINT fk_73vhcxlg4vk27vgtqtbgfvo1j FOREIGN KEY (author_id) REFERENCES "user"(id);


--
-- Name: fk_8hsa6sodcvxurla10bc3olgfl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sent_message
    ADD CONSTRAINT fk_8hsa6sodcvxurla10bc3olgfl FOREIGN KEY (sender_id) REFERENCES "user"(id);


--
-- Name: fk_alj835ria5tqth22nq08iv97a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_project
    ADD CONSTRAINT fk_alj835ria5tqth22nq08iv97a FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fk_ea1u61d9xmhup1pwpnk45y1ep; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY analysis
    ADD CONSTRAINT fk_ea1u61d9xmhup1pwpnk45y1ep FOREIGN KEY (author_id) REFERENCES "user"(id);


--
-- Name: fk_k6psvaf20y5ifm57am49swwwc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY story
    ADD CONSTRAINT fk_k6psvaf20y5ifm57am49swwwc FOREIGN KEY (author_id) REFERENCES "user"(id);


--
-- Name: fk_lle1iq82iurd4foncs234k5up; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY task
    ADD CONSTRAINT fk_lle1iq82iurd4foncs234k5up FOREIGN KEY (responsible_id) REFERENCES "user"(id);


--
-- Name: fk_mval8blkud6nbs9ek5b192vn6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY story_status
    ADD CONSTRAINT fk_mval8blkud6nbs9ek5b192vn6 FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fk_oe92jxold6k7tbv6w0hl89c5c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT fk_oe92jxold6k7tbv6w0hl89c5c FOREIGN KEY (owner_id) REFERENCES "user"(id);


--
-- Name: fk_r8our8hlq8w5k0lppei9xuxla; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY analysis
    ADD CONSTRAINT fk_r8our8hlq8w5k0lppei9xuxla FOREIGN KEY (finisher_id) REFERENCES "user"(id);


--
-- Name: fk_siho17dho4xjigj5yisk4yuk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project_area
    ADD CONSTRAINT fk_siho17dho4xjigj5yisk4yuk3 FOREIGN KEY (project_projectid) REFERENCES project(projectid);


--
-- Name: fk_sra3aqprfp5ct0mvuiukbyhtu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY story
    ADD CONSTRAINT fk_sra3aqprfp5ct0mvuiukbyhtu FOREIGN KEY (stage_id) REFERENCES stage(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

