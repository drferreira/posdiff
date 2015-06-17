
SET search_path = public, pg_catalog;

CREATE SEQUENCE aliquot_seq
	START WITH 1
	INCREMENT BY 1
	NO MAXVALUE
	NO MINVALUE
	CACHE 1;

CREATE SEQUENCE field_center_qc_counter_seq
	START WITH 1
	INCREMENT BY 1
	NO MAXVALUE
	NO MINVALUE
	CACHE 1;

CREATE SEQUENCE participant_visit_qc_group_seq
	START WITH 1
	INCREMENT BY 1
	NO MAXVALUE
	NO MINVALUE
	CACHE 1;

CREATE SEQUENCE inea_seq
	START WITH 1
	INCREMENT BY 1
	NO MAXVALUE
	NO MINVALUE
	CACHE 1;

CREATE SEQUENCE rana_seq
	START WITH 1
	INCREMENT BY 1
	NO MAXVALUE
	NO MINVALUE
	CACHE 1;

CREATE SEQUENCE tube_seq
	START WITH 1
	INCREMENT BY 1
	NO MAXVALUE
	NO MINVALUE
	CACHE 1;

SET search_path = coorte, pg_catalog;

DROP TABLE csts_a;

SET search_path = extraction, pg_catalog;

CREATE OR REPLACE FUNCTION beingbreastfedoptions_mapping("value" character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ONLY_BREASTFEED' THEN 1 WHEN 'OTHER_LIQUIDS' THEN 2 ELSE NULL END INTO result; RETURN result; END; $$;

CREATE OR REPLACE FUNCTION conformstotheministry_mapping("value" character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'AGREE' THEN 1 WHEN 'DISAGREE' THEN 2 WHEN 'NOT_AGREE_NOR_DISAGREE' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;

CREATE OR REPLACE FUNCTION intentiontoamententa_mapping("value" character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'WANT_TO_NURSE' THEN 1 WHEN 'NOT_WANT' THEN 2 WHEN 'IS_IN_DOUBT' THEN 3 WHEN 'MEDICAL_REASON' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;

CREATE OR REPLACE FUNCTION yesnouppercase_mapping("value" character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES' THEN 1 WHEN 'NO' THEN 0 ELSE NULL END INTO result; RETURN result; END; $$;

SET search_path = lab, pg_catalog;

ALTER TABLE aliquot
	ALTER COLUMN id SET DEFAULT nextval('public.aliquot_seq'::regclass);

ALTER TABLE field_center_qc_counter
	ALTER COLUMN id SET DEFAULT nextval('public.field_center_qc_counter_seq'::regclass);

ALTER TABLE participant_visit_qc_group
	ALTER COLUMN id SET DEFAULT nextval('public.participant_visit_qc_group_seq'::regclass);
