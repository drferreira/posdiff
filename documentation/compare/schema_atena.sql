--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: coorte; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA coorte;


ALTER SCHEMA coorte OWNER TO postgres;

--
-- Name: extraction; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA extraction;


ALTER SCHEMA extraction OWNER TO postgres;

--
-- Name: lab; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA lab;


ALTER SCHEMA lab OWNER TO postgres;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: aboutbreastfeeding_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION aboutbreastfeeding_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'WANT_TO_BREASTFEED' THEN 1 WHEN 'DONT_WANT_DONT_TO_BREASTFEED' THEN 2 WHEN 'IS_IN_DOUBT' THEN 3 WHEN 'IT_CAN_NOT_MEDICAL_REASONS' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.aboutbreastfeeding_mapping(value character varying) OWNER TO postgres;

--
-- Name: actagainstmyself_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION actagainstmyself_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'MANY_TIMES' THEN 1 WHEN 'SOMETIMES' THEN 2 WHEN 'RARELY' THEN 3 WHEN 'NEVER' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.actagainstmyself_mapping(value character varying) OWNER TO postgres;

--
-- Name: againstme_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION againstme_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_HAPPENS' THEN 1 WHEN 'YES_SOMETIMES' THEN 2 WHEN 'SOMETIMES_RARELY' THEN 3 WHEN 'NEVER' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.againstme_mapping(value character varying) OWNER TO postgres;

--
-- Name: agreedisagree_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION agreedisagree_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'AGREEFULLY' THEN 1 WHEN 'AGREE' THEN 2 WHEN 'DISAGREE' THEN 3 WHEN 'DISAGREEFULLY' THEN 4 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.agreedisagree_mapping(value character varying) OWNER TO postgres;

--
-- Name: agreeswithministryofhealth_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION agreeswithministryofhealth_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'AGREE' THEN 1 WHEN 'DISAGREE' THEN 2 WHEN 'NOT_AGREE_NOR_DISAGREE' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.agreeswithministryofhealth_mapping(value character varying) OWNER TO postgres;

--
-- Name: babysiting_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION babysiting_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'FINE' THEN 0  WHEN 'WITH_PROBLEMS' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.babysiting_mapping(value character varying) OWNER TO postgres;

--
-- Name: beencrying_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION beencrying_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'OFTEN' THEN 1 WHEN 'MANY_TIMES' THEN 2 WHEN 'SOMETIMES' THEN 3 WHEN 'NEVER' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.beencrying_mapping(value character varying) OWNER TO postgres;

--
-- Name: beingbreastfed_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION beingbreastfed_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ONLY_BREASTFEED' THEN 1 WHEN 'OTHER_LIQUIDS' THEN 2 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.beingbreastfed_mapping(value character varying) OWNER TO postgres;

--
-- Name: birthweight_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION birthweight_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'BELOW_2_5' THEN 1 WHEN 'BETWEEN_2_5_AND_4' THEN 2 WHEN 'ABOVE_4' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.birthweight_mapping(value character varying) OWNER TO postgres;

--
-- Name: bodyshape_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION bodyshape_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ONE' THEN 1 WHEN 'TWO' THEN 2 WHEN 'THREE' THEN 3 WHEN 'FOUR' THEN 4 WHEN 'FIVE' THEN 5 WHEN 'SIX' THEN 6 WHEN 'SEVEN' THEN 7 WHEN 'EIGHT' THEN 8 WHEN 'NINE' THEN 9 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.bodyshape_mapping(value character varying) OWNER TO postgres;

--
-- Name: bodyshapequestions_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION bodyshapequestions_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ONE' THEN 1 WHEN 'TWO' THEN 2 WHEN 'THREE' THEN 3 WHEN 'FOUR' THEN 4 WHEN 'FIVE' THEN 5 WHEN 'SIX' THEN 6 WHEN 'SEVEN' THEN 7 WHEN 'EIGHT' THEN 8 WHEN 'NINE' THEN 9 WHEN 'TEN' THEN 10 WHEN 'ELEVEN' THEN 11 WHEN 'TWELVE' THEN 12 WHEN 'THIRTEEN' THEN 13 WHEN 'FOURTEEN' THEN 14 WHEN 'FIFTEEN' THEN 15 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.bodyshapequestions_mapping(value character varying) OWNER TO postgres;

--
-- Name: breastfeedingintention_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION breastfeedingintention_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'WANT_BREASTFEEDING' THEN 1 WHEN 'DO_NOT_WANT_BREASTFEEDING' THEN 2 WHEN 'AGREE_ARE_IN_DOUBT' THEN 3 WHEN 'MEDICAL_REASONS' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.breastfeedingintention_mapping(value character varying) OWNER TO postgres;

--
-- Name: breastfeedingplan_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION breastfeedingplan_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'IS_PLANNING_BREASTFEEDING' THEN 1 WHEN 'IS_NOT_PLANNING_BREASTFEEDING' THEN 2ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.breastfeedingplan_mapping(value character varying) OWNER TO postgres;

--
-- Name: breastfeedingplanoption_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION breastfeedingplanoption_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'GIVE_REASONS' THEN 1 WHEN 'DID_NOT_GIVE_REASONS' THEN 0ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.breastfeedingplanoption_mapping(value character varying) OWNER TO postgres;

--
-- Name: chanceofhavingdiabetes_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION chanceofhavingdiabetes_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'HALFNOTE' THEN 1 WHEN 'SMALL' THEN 2 WHEN 'REASONABLE' THEN 3 WHEN 'BIG' THEN 4 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.chanceofhavingdiabetes_mapping(value character varying) OWNER TO postgres;

--
-- Name: cheerfuloutlook_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION cheerfuloutlook_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'AS_USUAL' THEN 1 WHEN 'NOT_LIKE_BEFORE' THEN 2 WHEN 'MUCH_LESS_THAN_BEFORE' THEN 3 WHEN 'HARDLY' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.cheerfuloutlook_mapping(value character varying) OWNER TO postgres;

--
-- Name: chickenpreparing_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION chickenpreparing_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'WITH_FUR' THEN 1 WHEN 'WITHOUT_FUR' THEN 0 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.chickenpreparing_mapping(value character varying) OWNER TO postgres;

--
-- Name: concern_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION concern_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'OFTEN' THEN 1 WHEN 'SOMETIMES' THEN 2 WHEN 'RARELY' THEN 3 WHEN 'NO_WAY' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.concern_mapping(value character varying) OWNER TO postgres;

--
-- Name: consumptionfrequency_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION consumptionfrequency_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'AT_LAUNCH' THEN 1 WHEN 'AT_DINNER' THEN 2 WHEN 'AT_LAUNCH_AND_DINNER' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.consumptionfrequency_mapping(value character varying) OWNER TO postgres;

--
-- Name: diabetestestrequisition_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION diabetestestrequisition_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NO_USED_INSULIN' THEN 1 WHEN 'NO_NOUSED_INSULIN' THEN 2 WHEN 'YES' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.diabetestestrequisition_mapping(value character varying) OWNER TO postgres;

--
-- Name: diabetestestresult_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION diabetestestresult_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES' THEN 1 WHEN 'NO_USED_INSULIN' THEN 2 WHEN 'NO_NOUSED_INSULIN' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.diabetestestresult_mapping(value character varying) OWNER TO postgres;

--
-- Name: difficultyintasks_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION difficultyintasks_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NOT' THEN 1 WHEN 'LITTLE' THEN 2 WHEN 'REASONSABLE' THEN 3 WHEN 'GREATDIFFICULTY' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.difficultyintasks_mapping(value character varying) OWNER TO postgres;

--
-- Name: emptybladder_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION emptybladder_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES' THEN 1 WHEN 'NO' THEN 0 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.emptybladder_mapping(value character varying) OWNER TO postgres;

--
-- Name: familyincome_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION familyincome_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'HALF_MINIMUN_WAGE' THEN 1 WHEN 'BETWEEN_MINIMUN_AND_ONE_WAGE' THEN 2 WHEN 'BETWEEN_ONE_AND_TWO_WAGES' THEN 3 WHEN 'BETWEEN_TWO_AND_THREE_WAGES' THEN 4 WHEN 'BETWEEN_THREE_AND_FOUR_WAGES' THEN 5 WHEN 'BETWEEN_FOUR_AND_FIVE_WAGES' THEN 6 WHEN 'BETWEEN_FIVE_AND_SIX_WAGES' THEN 7 WHEN 'BETWEEN_SIX_AND_SEVEN_WAGES' THEN 8 WHEN 'BETWEEN_SEVEN_AND_EIGHT_WAGES' THEN 9 WHEN 'AT_LEAST_EIGHT_WAGES' THEN 10 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.familyincome_mapping(value character varying) OWNER TO postgres;

--
-- Name: frequenciesofresponses_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION frequenciesofresponses_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'RARELY' THEN 1 WHEN 'SOMETIMES' THEN 2 WHEN 'OFTEN' THEN 3 WHEN 'EVERYDAY' THEN 4 ELSE NULL END INTO result;RETURN result; END; $$;


ALTER FUNCTION extraction.frequenciesofresponses_mapping(value character varying) OWNER TO postgres;

--
-- Name: frequenciesofresponsestoeat_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION frequenciesofresponsestoeat_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ALWAYS' THEN 1 WHEN 'OFTEN' THEN 2 WHEN 'SOMETIMES' THEN 3 WHEN 'RARELY' THEN 4 WHEN 'NEVER' THEN 5 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.frequenciesofresponsestoeat_mapping(value character varying) OWNER TO postgres;

--
-- Name: frequencyofbingeeatingchoice_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION frequencyofbingeeatingchoice_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NEVER' THEN 1 WHEN 'LESS_THAN_ONCE_PER_WEEK' THEN 2 WHEN 'ONCE_A_WEEK' THEN 3 WHEN 'TWO_OR_MORE_TIMES_A_WEEK' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.frequencyofbingeeatingchoice_mapping(value character varying) OWNER TO postgres;

--
-- Name: frequencyofsleepproblems_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION frequencyofsleepproblems_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NOT' THEN 1 WHEN 'LESSTHANONCE' THEN 2 WHEN 'ONEORTWO' THEN 3 WHEN 'THREEORFOUR' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.frequencyofsleepproblems_mapping(value character varying) OWNER TO postgres;

--
-- Name: frequencyofsocialactivities_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION frequencyofsocialactivities_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ALL_TIME' THEN 1 WHEN 'MOST_OF_THE_TIME' THEN 2 WHEN 'SOMETIMES' THEN 3 WHEN 'FEW_TIMES' THEN 4 WHEN 'NEVER' THEN 5 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.frequencyofsocialactivities_mapping(value character varying) OWNER TO postgres;

--
-- Name: frightenedorpanic_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION frightenedorpanic_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_HAPPENS' THEN 1 WHEN 'YES_SOMETIMES' THEN 2 WHEN 'SOMETIMES_RARELY' THEN 3 WHEN 'NO_WAY' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.frightenedorpanic_mapping(value character varying) OWNER TO postgres;

--
-- Name: futurehappiness_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION futurehappiness_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_ALWAYS' THEN 1 WHEN 'NOT_ALWAYS' THEN 2 WHEN 'TODAY_LESS' THEN 3 WHEN 'NOT' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.futurehappiness_mapping(value character varying) OWNER TO postgres;

--
-- Name: goodisyourbaby_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION goodisyourbaby_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'FINE' THEN 0 WHEN 'WITH_PROBLEMS' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.goodisyourbaby_mapping(value character varying) OWNER TO postgres;

--
-- Name: guiltwithoutreason_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION guiltwithoutreason_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NO_WAY' THEN 1 WHEN 'RARELY' THEN 2 WHEN 'SOMETIMES_HAPPENS' THEN 3 WHEN 'YES_OFTENTIMES' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.guiltwithoutreason_mapping(value character varying) OWNER TO postgres;

--
-- Name: healthstatus_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION healthstatus_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'VERY_GOOD' THEN 1 WHEN 'GOOD' THEN 2 WHEN 'AVERAGE' THEN 3 WHEN 'BAD' THEN 4 WHEN 'VERY_BAD' THEN 5 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.healthstatus_mapping(value character varying) OWNER TO postgres;

--
-- Name: howbreastfeedthesons_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION howbreastfeedthesons_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'SUCKLED_WITH_FORMULA' THEN 1 WHEN 'SUCKLED_IN_BREASTS' THEN 2 WHEN 'BOTH_FORMULA_AS_BREAST' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.howbreastfeedthesons_mapping(value character varying) OWNER TO postgres;

--
-- Name: howmanymonths_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION howmanymonths_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NONE' THEN 0 WHEN 'LESS_THAN_ONE' THEN 1 WHEN 'BETWEEN_ONE_AND_THREE' THEN 2 WHEN 'BETWEEN_FOUR_AND_FIVE' THEN 3 WHEN 'AT_LEAST_SIX' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.howmanymonths_mapping(value character varying) OWNER TO postgres;

--
-- Name: howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NOT_ONE_BIT' THEN 1 WHEN 'LITTLE_BIT' THEN 2 WHEN 'MODERATELY' THEN 3 WHEN 'ENOUGH' THEN 4 WHEN 'EXTREMELY' THEN 5 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(value character varying) OWNER TO postgres;

--
-- Name: howmuchpaininlastfourweeks_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION howmuchpaininlastfourweeks_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NEVER' THEN 1 WHEN 'A_LITTLE_PAIN' THEN 2 WHEN 'LITTLE' THEN 3 WHEN 'MODERATE' THEN 4 WHEN 'A_LOT' THEN 5 WHEN 'UNBEARABLE_PAIN' THEN 6 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.howmuchpaininlastfourweeks_mapping(value character varying) OWNER TO postgres;

--
-- Name: howmuchtimeinlastfourweekscharacteristics_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION howmuchtimeinlastfourweekscharacteristics_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ALL_TIME' THEN 1 WHEN 'MOST_OF_THE_TIME' THEN 2 WHEN 'GOOD_DEAL_OF_TIME' THEN 3 WHEN 'SOMETIMES' THEN 4 WHEN 'FEW_TIMES' THEN 5 WHEN 'NEVER' THEN 6 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.howmuchtimeinlastfourweekscharacteristics_mapping(value character varying) OWNER TO postgres;

--
-- Name: intensitydegree_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION intensitydegree_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'INCREASED' THEN 1 WHEN 'DECREASED' THEN 2 WHEN 'SAME' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.intensitydegree_mapping(value character varying) OWNER TO postgres;

--
-- Name: intentionofbreastfeed_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION intentionofbreastfeed_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'WILL_BREASTFEED' THEN 1 WHEN 'NOT_WANT' THEN 2 WHEN 'IS_IN_DOUBT' THEN 3 WHEN 'MEDICAL_REASON' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.intentionofbreastfeed_mapping(value character varying) OWNER TO postgres;

--
-- Name: laughability_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION laughability_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'AS_USUAL' THEN 1 WHEN 'NOT_LIKE_BEFORE' THEN 2 WHEN 'LESS_THAN_BEFORE' THEN 3 WHEN 'NO_WAY' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.laughability_mapping(value character varying) OWNER TO postgres;

--
-- Name: levelofagreement_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION levelofagreement_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'TOTALLY_AGREE' THEN 1 WHEN 'AGREE' THEN 2 WHEN 'NOT_AGREE_AND_NOT_DISAGREE' THEN 3 WHEN 'DISAGREE' THEN 4 WHEN 'TOTALLY_DISAGREE' THEN 5 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.levelofagreement_mapping(value character varying) OWNER TO postgres;

--
-- Name: levelofdifficultytodosomeactivities_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION levelofdifficultytodosomeactivities_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_VERY_DIFFICULTY' THEN 1 WHEN 'YES_A_LITTLE_DIFFICULTY' THEN 2 WHEN 'I_DONT_FEEL_DIFFICULTY' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.levelofdifficultytodosomeactivities_mapping(value character varying) OWNER TO postgres;

--
-- Name: metadata_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION metadata_mapping(value character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'MISSING_DATA' THEN '.F' WHEN 'DOES_NOT_KNOW' THEN '.S' WHEN 'DOES_NOT_WANT_TO_ANSWER' THEN '.Q' WHEN 'DOES_NOT_APPLY' THEN '.A' WHEN 'SKIPPED' THEN '.P' WHEN 'ACCEPT_ANSWER' THEN '.X' WHEN 'NO_DATA' THEN '.D' WHEN 'ACCEPT_TUBE_TYPE' THEN '.T' WHEN 'OTHER' THEN '.O' ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.metadata_mapping(value character varying) OWNER TO postgres;

--
-- Name: milkorformula_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION milkorformula_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'POWDERED_MILK' THEN 1 WHEN 'CHILDISH_FORMULA' THEN 2 WHEN 'OTHER_TYPE' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.milkorformula_mapping(value character varying) OWNER TO postgres;

--
-- Name: moodstate_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION moodstate_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_ALWAYS' THEN 1 WHEN 'NOT_ALWAYS' THEN 2 WHEN 'TODAY_LESS' THEN 3 WHEN 'NO_WAY' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.moodstate_mapping(value character varying) OWNER TO postgres;

--
-- Name: notagreeordisagree_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION notagreeordisagree_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'COMPLETELYAGREE' THEN 1 WHEN 'AGREEWITH' THEN 2 WHEN 'NOTAGREENOTDISAGREE' THEN 3 WHEN 'DISAGREEEWITH' THEN 4 WHEN 'DISAGREECOMPLETELY' THEN 5 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.notagreeordisagree_mapping(value character varying) OWNER TO postgres;

--
-- Name: noyesbreastfeeding_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION noyesbreastfeeding_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'NO' THEN 0  WHEN 'YES' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.noyesbreastfeeding_mapping(value character varying) OWNER TO postgres;

--
-- Name: noyesfrequenciesofdesire_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION noyesfrequenciesofdesire_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NO' THEN 0 WHEN 'YES' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.noyesfrequenciesofdesire_mapping(value character varying) OWNER TO postgres;

--
-- Name: noyesuppercase_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION noyesuppercase_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'NO' THEN 0 WHEN 'YES' THEN 1 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.noyesuppercase_mapping(value character varying) OWNER TO postgres;

--
-- Name: noyesuppercasedontcolecturine_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION noyesuppercasedontcolecturine_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NO' THEN 0 WHEN 'YES' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.noyesuppercasedontcolecturine_mapping(value character varying) OWNER TO postgres;

--
-- Name: noyesuppercasedontcollecturine_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION noyesuppercasedontcollecturine_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NO' THEN 0 WHEN 'YES' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.noyesuppercasedontcollecturine_mapping(value character varying) OWNER TO postgres;

--
-- Name: overloaded_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION overloaded_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'OFTEN' THEN 1 WHEN 'SOMETIMES' THEN 2 WHEN 'RARELY' THEN 3 WHEN 'NO_WAY' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.overloaded_mapping(value character varying) OWNER TO postgres;

--
-- Name: overloadedwithtasks_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION overloadedwithtasks_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_HAPPENS' THEN 1 WHEN 'YES_SOMETIMES' THEN 2 WHEN 'SOMETIMES_RARELY' THEN 3 WHEN 'NOT_HAPPENS' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.overloadedwithtasks_mapping(value character varying) OWNER TO postgres;

--
-- Name: panicfeeling_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION panicfeeling_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'OFTEN' THEN 1 WHEN 'SOMETIMES' THEN 2 WHEN 'RARELY' THEN 3 WHEN 'NO_WAY' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.panicfeeling_mapping(value character varying) OWNER TO postgres;

--
-- Name: phonecallsaboutproblems_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION phonecallsaboutproblems_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES' THEN 1 WHEN 'NO' THEN 0 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.phonecallsaboutproblems_mapping(value character varying) OWNER TO postgres;

--
-- Name: pulsewaist_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION pulsewaist_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'PULSE' THEN 0 WHEN 'WAIST' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.pulsewaist_mapping(value character varying) OWNER TO postgres;

--
-- Name: qualitysleep_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION qualitysleep_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'VERYGOOD' THEN 1 WHEN 'GOOD' THEN 2 WHEN 'BAD' THEN 3 WHEN 'VERYBAD' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.qualitysleep_mapping(value character varying) OWNER TO postgres;

--
-- Name: race_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION race_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'BLACK' THEN 1 WHEN 'BROWN' THEN 2 WHEN 'WHITE' THEN 3 WHEN 'YELLOW' THEN 4 WHEN 'INDIGENOUS' THEN 5 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.race_mapping(value character varying) OWNER TO postgres;

--
-- Name: remembermenstruationdate_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION remembermenstruationdate_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NOT_REMEMBER' THEN 0 WHEN 'NO_MORE_MENSTRUATE' THEN 2 WHEN 'YES_REMEMBER' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.remembermenstruationdate_mapping(value character varying) OWNER TO postgres;

--
-- Name: riskgroup_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION riskgroup_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'INCREASESTHERISK' THEN 1 WHEN 'DOESNOTCHANCETHERISK' THEN 2 WHEN 'REDUCETHERISK' THEN 3 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.riskgroup_mapping(value character varying) OWNER TO postgres;

--
-- Name: schooling_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION schooling_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ILLITERATE' THEN 1 WHEN 'INCOMPLETE_BASIC' THEN 2 WHEN 'COMPLETE_BASIC' THEN 3 WHEN 'INCOMPLETE_HIGH_SCHOOL' THEN 4 WHEN 'COMPLETE_HIGH_SCHOOL' THEN 5 WHEN 'INCOMPLETE_GRADUATION' THEN 6 WHEN 'COMPLETE_GRADUATION' THEN 7 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.schooling_mapping(value character varying) OWNER TO postgres;

--
-- Name: selfpunishment_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION selfpunishment_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'NO' THEN 1 WHEN 'RARELY' THEN 2 WHEN 'SOMETIMES' THEN 3 WHEN 'OFTEN' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.selfpunishment_mapping(value character varying) OWNER TO postgres;

--
-- Name: sex_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION sex_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'MALE' THEN 1 WHEN 'FEMALE' THEN 0ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.sex_mapping(value character varying) OWNER TO postgres;

--
-- Name: shouldornot_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION shouldornot_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'SHOULD' THEN 1 WHEN 'SHOULD_CHANGE' THEN 2 WHEN 'SHOULD_NOT' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.shouldornot_mapping(value character varying) OWNER TO postgres;

--
-- Name: siteofcare_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION siteofcare_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'SUS' THEN 1 WHEN 'HEALTH_PLAN' THEN 0 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.siteofcare_mapping(value character varying) OWNER TO postgres;

--
-- Name: situtation_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION situtation_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'HAD_NO_CHILDREN' THEN 1 WHEN 'HAS_CHILDREN_NEVER_BREASTFEEDING' THEN 2 WHEN 'HAS_CHILDREN_BREASTFEEDING_ABOVE_SIX_MONTHS' THEN 3 WHEN 'HAS_CHILDREN_BREASTFEEDING_UP_TO_SIX_MONTHS' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.situtation_mapping(value character varying) OWNER TO postgres;

--
-- Name: sleepproblems_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION sleepproblems_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'OFTEN' THEN 1 WHEN 'SOMETIMES' THEN 2 WHEN 'RARELY' THEN 3 WHEN 'NO_WAY' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.sleepproblems_mapping(value character varying) OWNER TO postgres;

--
-- Name: stateofhealthcomparedtootherpeople_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION stateofhealthcomparedtootherpeople_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'EXCELLENT' THEN 1 WHEN 'VERY_GOOD' THEN 2 WHEN 'GOOD' THEN 3 WHEN 'REGULAR' THEN 4 WHEN 'BAD' THEN 5 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.stateofhealthcomparedtootherpeople_mapping(value character varying) OWNER TO postgres;

--
-- Name: stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'VERY_BETTER_THAN_BEFORE_PREGNACY' THEN 1 WHEN 'A_LITTLE_BETTER_THAN_BEFORE_PREGNACY' THEN 2 WHEN 'ALMOST_THE_SAME' THEN 3 WHEN 'A_LITTLE_WORSE_THAN_BEFORE_PREGNACY' THEN 4 WHEN 'VERY_WORSE_THAN_BEFORE_PREGNACY' THEN 5 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(value character varying) OWNER TO postgres;

--
-- Name: stillpregnant_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION stillpregnant_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'NOT_IS_BORN' THEN 1 WHEN 'NOT_PASSED_AWAY' THEN 2 WHEN 'YES_STILL_PREGNANT' THEN 3ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.stillpregnant_mapping(value character varying) OWNER TO postgres;

--
-- Name: stillpregnantwithindicationofdeath_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION stillpregnantwithindicationofdeath_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NOT_BABY_WAS_BORN' THEN 1 WHEN 'NOT_LOST_THE_BABY' THEN 2 WHEN 'YES_IS_PREGNANT' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.stillpregnantwithindicationofdeath_mapping(value character varying) OWNER TO postgres;

--
-- Name: tearsofsorrow_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION tearsofsorrow_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_HAPPENS' THEN 1 WHEN 'YES_SOMETIMES' THEN 2 WHEN 'SOMETIMES_RARELY' THEN 3 WHEN 'NO_NEVER' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.tearsofsorrow_mapping(value character varying) OWNER TO postgres;

--
-- Name: thinkaboutbreastfeeding_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION thinkaboutbreastfeeding_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'AGREE' THEN 1 WHEN 'DISAGREE' THEN 2 WHEN 'NOT_AGREE_NOR_DISAGREE' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.thinkaboutbreastfeeding_mapping(value character varying) OWNER TO postgres;

--
-- Name: twins_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION twins_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'UNIQUE' THEN 0 WHEN 'TWINS' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.twins_mapping(value character varying) OWNER TO postgres;

--
-- Name: typebabyfoodindicatedperiodofbreastfeeding_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION typebabyfoodindicatedperiodofbreastfeeding_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ONLY_BREAST' THEN 1 WHEN 'BREAST_TEA_OR_WATER' THEN 2 WHEN 'BREAST_MILK_AND_FORMULA' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.typebabyfoodindicatedperiodofbreastfeeding_mapping(value character varying) OWNER TO postgres;

--
-- Name: typebirth_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION typebirth_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'NORMAL' THEN 0  WHEN 'CESAREAN' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.typebirth_mapping(value character varying) OWNER TO postgres;

--
-- Name: typebreastfeeding_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION typebreastfeeding_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'BREASTFEEDING_BREAST' THEN 1 WHEN 'NOT_BREASTFEEDING_BREAST' THEN 0 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.typebreastfeeding_mapping(value character varying) OWNER TO postgres;

--
-- Name: typechildbed_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION typechildbed_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'NORMAL' THEN 0 WHEN 'CESAREAN' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.typechildbed_mapping(value character varying) OWNER TO postgres;

--
-- Name: typeofbabyfood_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION typeofbabyfood_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'ONLY_BREAST' THEN 1 WHEN 'BREAST_TEA_OR_WATER' THEN 2 WHEN 'BREAST_MILK_AND_FORMULA' THEN 3ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.typeofbabyfood_mapping(value character varying) OWNER TO postgres;

--
-- Name: typeofbabyfoodrestrictedquestion_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION typeofbabyfoodrestrictedquestion_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'ONLY_BREAST' THEN 1 WHEN 'OTHERS' THEN 2 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.typeofbabyfoodrestrictedquestion_mapping(value character varying) OWNER TO postgres;

--
-- Name: typeofbabyfoodwithoutcomments_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION typeofbabyfoodwithoutcomments_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'ONLY_BREAST' THEN 1 WHEN 'BREAST_TEA_OR_WATER' THEN 2 WHEN 'BREAST_MILK_AND_FORMULA' THEN 3 WHEN 'BREAST_AND_OTHER_FOODS' THEN 4 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.typeofbabyfoodwithoutcomments_mapping(value character varying) OWNER TO postgres;

--
-- Name: typepregnancy_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION typepregnancy_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'SINGLE' THEN 0 WHEN 'TWIN' THEN 1 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.typepregnancy_mapping(value character varying) OWNER TO postgres;

--
-- Name: unhappinessdifficultysleeping_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION unhappinessdifficultysleeping_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_HAPPENS' THEN 1 WHEN 'YES_SOMETIMES' THEN 2 WHEN 'SOMETIMES_RARELY' THEN 3 WHEN 'NO_NEVER' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.unhappinessdifficultysleeping_mapping(value character varying) OWNER TO postgres;

--
-- Name: unhappyfeeling_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION unhappyfeeling_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'OFTEN' THEN 1 WHEN 'MANY_TIMES' THEN 2 WHEN 'RARELY' THEN 3 WHEN 'NO_WAY' THEN 4ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.unhappyfeeling_mapping(value character varying) OWNER TO postgres;

--
-- Name: uniquetwins_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION uniquetwins_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'UNIQUE' THEN 0  WHEN 'TWINS' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.uniquetwins_mapping(value character varying) OWNER TO postgres;

--
-- Name: verysad_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION verysad_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_HAPPENS' THEN 1 WHEN 'YES_SOMETIMES' THEN 2 WHEN 'SOMETIMES_RARELY' THEN 3 WHEN 'NO_WAY' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.verysad_mapping(value character varying) OWNER TO postgres;

--
-- Name: whatthebabyisdrinking_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION whatthebabyisdrinking_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying;BEGIN SELECT CASE value WHEN 'MILK' THEN 1 WHEN 'BABY_RECIPE' THEN 2 WHEN 'OTHER' THEN 3 ELSE NULL END INTO result;RETURN result;END;$$;


ALTER FUNCTION extraction.whatthebabyisdrinking_mapping(value character varying) OWNER TO postgres;

--
-- Name: whichhand_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION whichhand_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'RIGTH' THEN 1 WHEN 'LEFT' THEN 2 WHEN 'BOTH' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.whichhand_mapping(value character varying) OWNER TO postgres;

--
-- Name: wichhandjob_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION wichhandjob_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'RIGTH' THEN 1 WHEN 'LEFT' THEN 2 WHEN 'BOTH_HANDS' THEN 3 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.wichhandjob_mapping(value character varying) OWNER TO postgres;

--
-- Name: withanxiety_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION withanxiety_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES_HAPPENS' THEN 1 WHEN 'YES_SOMETIMES' THEN 2 WHEN 'SOMETIMES_HAPPENS' THEN 3 WHEN 'NO_WAY' THEN 4 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.withanxiety_mapping(value character varying) OWNER TO postgres;

--
-- Name: yesno_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION yesno_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES' THEN 1 WHEN 'NO' THEN 0 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.yesno_mapping(value character varying) OWNER TO postgres;

--
-- Name: yesnoupper_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION yesnoupper_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value  WHEN 'NO' THEN 0  WHEN 'YES' THEN 1 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.yesnoupper_mapping(value character varying) OWNER TO postgres;

--
-- Name: yesnouppercasecorrectposition_mapping(character varying); Type: FUNCTION; Schema: extraction; Owner: postgres
--

CREATE FUNCTION yesnouppercasecorrectposition_mapping(value character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE result character varying; BEGIN SELECT CASE value WHEN 'YES' THEN 1 WHEN 'NO' THEN 0 ELSE NULL END INTO result; RETURN result; END; $$;


ALTER FUNCTION extraction.yesnouppercasecorrectposition_mapping(value character varying) OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: populate_one_user_permissions(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION populate_one_user_permissions(user_code character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$ DECLARE user_entry public.user%ROWTYPE; prm_grid_id integer; functionality_name character varying; common_functionalities character varying[]; admin_functionalities character varying[]; BEGIN common_functionalities := ARRAY['ACTIVITY_VIEW', 'CONTACTS_VIEW', 'PARTICIPANT_DATA_VIEW', 'COMMENTS_VIEW', 'REPORTS_VIEW', 'ADD_PARTICIPANT_VIEW']; admin_functionalities := ARRAY['RANDOMIZATION_VIEW', 'LAB_VIEW', 'USERS_VIEW', 'SELECTOR_CENTER', 'CRYOTUBE_FILTER', 'INELIGIBILITY_VIEW']; FOR user_entry IN SELECT * FROM public.user WHERE code = user_code LOOP IF user_entry.fieldcenter = 'ADM' THEN INSERT INTO permission_grid(profile, user_id) VALUES ('ADMIN', user_entry.id); ELSE INSERT INTO permission_grid(profile, user_id) VALUES ('DATA_ENTRY', user_entry.id); END IF; SELECT max(id) FROM permission_grid INTO prm_grid_id; FOR functionality_name IN SELECT unnest(common_functionalities) LOOP INSERT INTO permission(functionality, type_execution, permission_grid_id) VALUES (functionality_name, 'EXECUTION', prm_grid_id); END LOOP; IF user_entry.fieldcenter = 'ADM' THEN FOR functionality_name IN SELECT unnest(admin_functionalities) LOOP INSERT INTO permission(functionality, type_execution, permission_grid_id) VALUES (functionality_name, 'EXECUTION', prm_grid_id); END LOOP; ELSE FOR functionality_name IN SELECT unnest(admin_functionalities) LOOP INSERT INTO permission(functionality, type_execution, permission_grid_id) VALUES (functionality_name, 'NOT_PREVIEW', prm_grid_id); END LOOP; END IF; END LOOP; END; $$;


ALTER FUNCTION public.populate_one_user_permissions(user_code character varying) OWNER TO postgres;

--
-- Name: populate_users_permissions(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION populate_users_permissions() RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE user_entry public.user%ROWTYPE; prm_grid_id integer; affected_rows INTEGER; BEGIN affected_rows := 0; FOR user_entry IN SELECT * FROM public.user LOOP PERFORM populate_one_user_permissions(user_entry.code); affected_rows := affected_rows + 1; END LOOP; RETURN affected_rows; END; $$;


ALTER FUNCTION public.populate_users_permissions() OWNER TO postgres;

--
-- Name: setup_activities_sequences(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION setup_activities_sequences() RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE sql_script TEXT; affected_rows INTEGER; BEGIN affected_rows := 0; FOR sql_script IN SELECT 'ALTER TABLE ' || tc.table_schema || '.' || tc.table_name || ' ALTER COLUMN id SET DEFAULT nextval(''survey_activity_seq''::regclass);' FROM information_schema.table_constraints AS tc JOIN information_schema.key_column_usage AS kcu ON tc.constraint_name = kcu.constraint_name JOIN information_schema.constraint_column_usage AS ccu ON ccu.constraint_name = tc.constraint_name WHERE tc.table_schema IN ('coorte','lab') /* Lista de esquemas que contém as tabelas de entidades que são subclasses de SurveyActivity */ AND tc.constraint_type = 'FOREIGN KEY' AND ccu.table_name = 'activity' AND ccu.column_name = 'id' ORDER BY tc.table_schema, tc.table_name LOOP RAISE NOTICE '%', sql_script; EXECUTE sql_script; affected_rows := affected_rows + 1; END LOOP; RETURN affected_rows; END; $$;


ALTER FUNCTION public.setup_activities_sequences() OWNER TO postgres;

--
-- Name: setup_table_sequences(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION setup_table_sequences() RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE sql_script TEXT; affected_rows INTEGER; BEGIN affected_rows := 0; FOR sql_script IN SELECT 'ALTER TABLE ' || t.table_schema || '.' || t.table_name || ' ALTER COLUMN id SET DEFAULT nextval(''' || s.sequence_schema || '.' || s.sequence_name || '''::regclass);' FROM information_schema.tables AS t JOIN information_schema.sequences AS s ON s.sequence_name = t.table_name || '_seq' WHERE t.table_schema NOT IN ('pg_catalog','information_schema') /* Sempre exclua da busca estes esquemas que são de tabelas de configuração do PostgreSQL !!! */ ORDER BY t.table_schema, t.table_name LOOP RAISE NOTICE '%', sql_script; EXECUTE sql_script; affected_rows := affected_rows + 1; END LOOP; RETURN affected_rows; END; $$;


ALTER FUNCTION public.setup_table_sequences() OWNER TO postgres;

--
-- Name: survey_activity_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE survey_activity_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_activity_seq OWNER TO postgres;

SET search_path = coorte, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: aaf_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE aaf_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aafa1 real,
    aafa1_metadata character varying(255),
    aafa1_metadata_comment text,
    aafa5c boolean,
    aafa5c_metadata character varying(255),
    aafa5c_metadata_comment text,
    aafa5 boolean,
    aafa5_metadata character varying(255),
    aafa5_metadata_comment text,
    aafa3 real,
    aafa3_metadata character varying(255),
    aafa3_metadata_comment text,
    aafa2 character varying(255),
    aafa2_metadata character varying(255),
    aafa2_metadata_comment text,
    aafa7 real,
    aafa7_metadata character varying(255),
    aafa7_metadata_comment text,
    aafa4 boolean,
    aafa4_metadata character varying(255),
    aafa4_metadata_comment text,
    aafa6a boolean,
    aafa6a_metadata character varying(255),
    aafa6a_metadata_comment text,
    aafa5a boolean,
    aafa5a_metadata character varying(255),
    aafa5a_metadata_comment text,
    aafa5b boolean,
    aafa5b_metadata character varying(255),
    aafa5b_metadata_comment text,
    aafa6b boolean,
    aafa6b_metadata character varying(255),
    aafa6b_metadata_comment text,
    aafa4c boolean,
    aafa4c_metadata character varying(255),
    aafa4c_metadata_comment text,
    aafa8 boolean,
    aafa8_metadata character varying(255),
    aafa8_metadata_comment text,
    aafa6 boolean,
    aafa6_metadata character varying(255),
    aafa6_metadata_comment text,
    aafa4b boolean,
    aafa4b_metadata character varying(255),
    aafa4b_metadata_comment text,
    aafa4a boolean,
    aafa4a_metadata character varying(255),
    aafa4a_metadata_comment text,
    aafa6bq text,
    aafa5cq text,
    aafa5cq_metadata character varying(255),
    aafa5cq_metadata_comment text,
    aafa6bq_metadata character varying(255),
    aafa6bq_metadata_comment text,
    aafa4cq text,
    aafa4cq_metadata character varying(255),
    aafa4cq_metadata_comment text,
    aafa2a text,
    aafa2a_metadata character varying(255),
    aafa2a_metadata_comment text,
    aafa8a text,
    aafa8a_metadata character varying(255),
    aafa8a_metadata_comment text
);


ALTER TABLE coorte.aaf_a OWNER TO postgres;

--
-- Name: ace_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE ace_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    acea7b boolean,
    acea7b_metadata character varying(255),
    acea7b_metadata_comment text,
    acea1 text,
    acea1_metadata character varying(255),
    acea1_metadata_comment text,
    acea4d timestamp without time zone,
    acea4d_metadata character varying(255),
    acea4d_metadata_comment text,
    acea2 timestamp without time zone,
    acea2_metadata character varying(255),
    acea2_metadata_comment text,
    acea5d timestamp without time zone,
    acea5d_metadata character varying(255),
    acea5d_metadata_comment text,
    acea6 timestamp without time zone,
    acea6_metadata character varying(255),
    acea6_metadata_comment text,
    acea7a boolean,
    acea7a_metadata character varying(255),
    acea7a_metadata_comment text,
    acea10 integer,
    acea10_metadata character varying(255),
    acea10_metadata_comment text,
    acea7c boolean,
    acea7c_metadata character varying(255),
    acea7c_metadata_comment text,
    acea7cq text,
    acea7cq_metadata character varying(255),
    acea7cq_metadata_comment text,
    acea9 integer,
    acea9_metadata character varying(255),
    acea9_metadata_comment text,
    acea3 character varying(255),
    acea3_metadata character varying(255),
    acea3_metadata_comment text,
    acea7 boolean,
    acea7_metadata character varying(255),
    acea7_metadata_comment text,
    acea8 integer,
    acea8_metadata character varying(255),
    acea8_metadata_comment text,
    acea4h integer,
    acea4_metadata character varying(255),
    acea4_metadata_comment text,
    acea4m integer,
    acea5h integer,
    acea5_metadata character varying(255),
    acea5_metadata_comment text,
    acea5m integer
);


ALTER TABLE coorte.ace_a OWNER TO postgres;

--
-- Name: aces_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE aces_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    acesa7b boolean,
    acesa7b_metadata character varying(255),
    acesa7b_metadata_comment text,
    acesa1 text,
    acesa1_metadata character varying(255),
    acesa1_metadata_comment text,
    acesa4d timestamp without time zone,
    acesa4d_metadata character varying(255),
    acesa4d_metadata_comment text,
    acesa2 timestamp without time zone,
    acesa2_metadata character varying(255),
    acesa2_metadata_comment text,
    acesa5d timestamp without time zone,
    acesa5d_metadata character varying(255),
    acesa5d_metadata_comment text,
    acesa6 timestamp without time zone,
    acesa6_metadata character varying(255),
    acesa6_metadata_comment text,
    acesa7a boolean,
    acesa7a_metadata character varying(255),
    acesa7a_metadata_comment text,
    acesa7c boolean,
    acesa7c_metadata character varying(255),
    acesa7c_metadata_comment text,
    acesa7cq text,
    acesa7cq_metadata character varying(255),
    acesa7cq_metadata_comment text,
    acesa3 character varying(255),
    acesa3_metadata character varying(255),
    acesa3_metadata_comment text,
    acesa7 boolean,
    acesa7_metadata character varying(255),
    acesa7_metadata_comment text,
    acesa4h integer,
    acesa4_metadata character varying(255),
    acesa4_metadata_comment text,
    acesa4m integer,
    acesa5h integer,
    acesa5_metadata character varying(255),
    acesa5_metadata_comment text,
    acesa5m integer
);


ALTER TABLE coorte.aces_a OWNER TO postgres;

--
-- Name: afi_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE afi_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    afia2 integer,
    afia2_metadata character varying(255),
    afia2_metadata_comment text,
    afia3 integer,
    afia3_metadata character varying(255),
    afia3_metadata_comment text,
    afia4 integer,
    afia4_metadata character varying(255),
    afia4_metadata_comment text,
    afia1 integer,
    afia1_metadata character varying(255),
    afia1_metadata_comment text,
    afia5 integer,
    afia5_metadata character varying(255),
    afia5_metadata_comment text,
    afia2a integer,
    afia2a_metadata character varying(255),
    afia2a_metadata_comment text,
    afia3a integer,
    afia3a_metadata character varying(255),
    afia3a_metadata_comment text,
    afia6h integer,
    afia6_metadata character varying(255),
    afia6_metadata_comment text,
    afia6m integer,
    afia7h integer,
    afia7_metadata character varying(255),
    afia7_metadata_comment text,
    afia7m integer,
    afia4a integer,
    afia4a_metadata character varying(255),
    afia4a_metadata_comment text,
    afia1a integer,
    afia1a_metadata character varying(255),
    afia1a_metadata_comment text,
    afia5a integer,
    afia5a_metadata character varying(255),
    afia5a_metadata_comment text,
    afia8h integer,
    afia8_metadata character varying(255),
    afia8_metadata_comment text,
    afia8m integer,
    afia9h integer,
    afia9_metadata character varying(255),
    afia9_metadata_comment text,
    afia9m integer,
    afia10h integer,
    afia10_metadata character varying(255),
    afia10_metadata_comment text,
    afia10m integer,
    afia11h integer,
    afia11_metadata character varying(255),
    afia11_metadata_comment text,
    afia11m integer
);


ALTER TABLE coorte.afi_a OWNER TO postgres;

--
-- Name: afis_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE afis_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    afisa2 integer,
    afisa2_metadata character varying(255),
    afisa2_metadata_comment text,
    afisa3 integer,
    afisa3_metadata character varying(255),
    afisa3_metadata_comment text,
    afisa4 integer,
    afisa4_metadata character varying(255),
    afisa4_metadata_comment text,
    afisa1 integer,
    afisa1_metadata character varying(255),
    afisa1_metadata_comment text,
    afisa5 integer,
    afisa5_metadata character varying(255),
    afisa5_metadata_comment text,
    afisa2a integer,
    afisa2a_metadata character varying(255),
    afisa2a_metadata_comment text,
    afisa3a integer,
    afisa3a_metadata character varying(255),
    afisa3a_metadata_comment text,
    afisa6h integer,
    afisa6_metadata character varying(255),
    afisa6_metadata_comment text,
    afisa6m integer,
    afisa7h integer,
    afisa7_metadata character varying(255),
    afisa7_metadata_comment text,
    afisa7m integer,
    afisa4a integer,
    afisa4a_metadata character varying(255),
    afisa4a_metadata_comment text,
    afisa1a integer,
    afisa1a_metadata character varying(255),
    afisa1a_metadata_comment text,
    afisa5a integer,
    afisa5a_metadata character varying(255),
    afisa5a_metadata_comment text,
    afisa8h integer,
    afisa8_metadata character varying(255),
    afisa8_metadata_comment text,
    afisa8m integer,
    afisa9h integer,
    afisa9_metadata character varying(255),
    afisa9_metadata_comment text,
    afisa9m integer,
    afisa10h integer,
    afisa10_metadata character varying(255),
    afisa10_metadata_comment text,
    afisa10m integer,
    afisa11h integer,
    afisa11_metadata character varying(255),
    afisa11_metadata_comment text,
    afisa11m integer
);


ALTER TABLE coorte.afis_a OWNER TO postgres;

--
-- Name: age_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE age_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    agea1 text,
    agea1_metadata character varying(255),
    agea1_metadata_comment text,
    agea21 boolean,
    agea21_metadata character varying(255),
    agea21_metadata_comment text,
    agea2a text,
    agea2a_metadata character varying(255),
    agea2a_metadata_comment text,
    agea2b text,
    agea2b_metadata character varying(255),
    agea2b_metadata_comment text,
    agea24 boolean,
    agea24_metadata character varying(255),
    agea24_metadata_comment text,
    agea3 text,
    agea3_metadata character varying(255),
    agea3_metadata_comment text,
    agea25 boolean,
    agea22 boolean,
    agea22_metadata character varying(255),
    agea22_metadata_comment text,
    agea25_metadata character varying(255),
    agea25_metadata_comment text,
    agea11 boolean,
    agea11_metadata character varying(255),
    agea11_metadata_comment text,
    agea13 boolean,
    agea13_metadata character varying(255),
    agea13_metadata_comment text,
    agea12 boolean,
    agea12_metadata character varying(255),
    agea12_metadata_comment text,
    agea23 boolean,
    agea23_metadata character varying(255),
    agea23_metadata_comment text,
    agea2c text,
    agea2c_metadata character varying(255),
    agea2c_metadata_comment text
);


ALTER TABLE coorte.age_a OWNER TO postgres;

--
-- Name: alb_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE alb_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    alba6a1 boolean,
    alba7a1 boolean,
    alba7a1_metadata character varying(255),
    alba7a1_metadata_comment text,
    alba7a1g boolean,
    alba7a1g_metadata character varying(255),
    alba7a1g_metadata_comment text,
    alba7a1g2 boolean,
    alba7a1g2_metadata character varying(255),
    alba7a1g2_metadata_comment text,
    alba8a1 boolean,
    alba8a1_metadata character varying(255),
    alba8a1_metadata_comment text,
    alba8a1g boolean,
    alba8a1g_metadata character varying(255),
    alba8a1g_metadata_comment text,
    alba8a1g2 boolean,
    alba8a1g2_metadata character varying(255),
    alba8a1g2_metadata_comment text,
    alba6a1_metadata character varying(255),
    alba6a1_metadata_comment text,
    alba6a1g boolean,
    alba6a1g_metadata character varying(255),
    alba6a1g_metadata_comment text,
    alba6a1g2 boolean,
    alba6a1g2_metadata character varying(255),
    alba6a1g2_metadata_comment text,
    alba6b1 boolean,
    alba7b1 boolean,
    alba7b1_metadata character varying(255),
    alba7b1_metadata_comment text,
    alba7b1g boolean,
    alba7b1g_metadata character varying(255),
    alba7b1g_metadata_comment text,
    alba7b1g2 boolean,
    alba7b1g2_metadata character varying(255),
    alba7b1g2_metadata_comment text,
    alba8b1 boolean,
    alba8b1_metadata character varying(255),
    alba8b1_metadata_comment text,
    alba8b1g boolean,
    alba8b1g_metadata character varying(255),
    alba8b1g_metadata_comment text,
    alba8b1g2 boolean,
    alba8b1g2_metadata character varying(255),
    alba8b1g2_metadata_comment text,
    alba6b1_metadata character varying(255),
    alba6b1_metadata_comment text,
    alba6b1g boolean,
    alba6b1g_metadata character varying(255),
    alba6b1g_metadata_comment text,
    alba6b1g2 boolean,
    alba6b1g2_metadata character varying(255),
    alba6b1g2_metadata_comment text,
    alba1g character varying(255),
    alba1g_metadata character varying(255),
    alba1g_metadata_comment text,
    alba1g2 character varying(255),
    alba1g2_metadata character varying(255),
    alba1g2_metadata_comment text,
    alba1ag integer,
    alba1ag_metadata character varying(255),
    alba1ag_metadata_comment text,
    alba1ag2 integer,
    alba1ag2_metadata character varying(255),
    alba1ag2_metadata_comment text,
    alba10a integer,
    alba10a_metadata character varying(255),
    alba10a_metadata_comment text,
    alba1a integer,
    alba1a_metadata character varying(255),
    alba1a_metadata_comment text,
    alba6aa integer,
    alba7aa integer,
    alba7aa_metadata character varying(255),
    alba7aa_metadata_comment text,
    alba7aag integer,
    alba7aag_metadata character varying(255),
    alba7aag_metadata_comment text,
    alba7aag2 integer,
    alba7aag2_metadata character varying(255),
    alba7aag2_metadata_comment text,
    alba8aa integer,
    alba8aa_metadata character varying(255),
    alba8aa_metadata_comment text,
    alba8aag integer,
    alba8aag_metadata character varying(255),
    alba8aag_metadata_comment text,
    alba8aag2 integer,
    alba8aag2_metadata character varying(255),
    alba8aag2_metadata_comment text,
    alba6aa_metadata character varying(255),
    alba6aa_metadata_comment text,
    alba6aag integer,
    alba6aag_metadata character varying(255),
    alba6aag_metadata_comment text,
    alba6aag2 integer,
    alba6aag2_metadata character varying(255),
    alba6aag2_metadata_comment text,
    alba6bb integer,
    alba7bb integer,
    alba7bb_metadata character varying(255),
    alba7bb_metadata_comment text,
    alba7bbg integer,
    alba7bbg_metadata character varying(255),
    alba7bbg_metadata_comment text,
    alba7bbg2 integer,
    alba7bbg2_metadata character varying(255),
    alba7bbg2_metadata_comment text,
    alba8bb integer,
    alba8bb_metadata character varying(255),
    alba8bb_metadata_comment text,
    alba8bbg integer,
    alba8bbg_metadata character varying(255),
    alba8bbg_metadata_comment text,
    alba8bbg2 integer,
    alba8bbg2_metadata character varying(255),
    alba8bbg2_metadata_comment text,
    alba6bb_metadata character varying(255),
    alba6bb_metadata_comment text,
    alba6bbg integer,
    alba6bbg_metadata character varying(255),
    alba6bbg_metadata_comment text,
    alba6bbg2 integer,
    alba6bbg2_metadata character varying(255),
    alba6bbg2_metadata_comment text,
    alba4 integer,
    alba4_metadata character varying(255),
    alba4_metadata_comment text,
    alba5g integer,
    alba5g_metadata character varying(255),
    alba5g_metadata_comment text,
    alba5g2 integer,
    alba5g2_metadata character varying(255),
    alba5g2_metadata_comment text,
    alba5 integer,
    alba5_metadata character varying(255),
    alba5_metadata_comment text,
    alba6c1 boolean,
    alba7c1 boolean,
    alba7c1_metadata character varying(255),
    alba7c1_metadata_comment text,
    alba7c1g boolean,
    alba7c1g_metadata character varying(255),
    alba7c1g_metadata_comment text,
    alba7c1g2 boolean,
    alba7c1g2_metadata character varying(255),
    alba7c1g2_metadata_comment text,
    alba6c1_metadata character varying(255),
    alba6c1_metadata_comment text,
    alba6c1g boolean,
    alba6c1g_metadata character varying(255),
    alba6c1g_metadata_comment text,
    alba6c1g2 boolean,
    alba6c1g2_metadata character varying(255),
    alba6c1g2_metadata_comment text,
    alba8c1 boolean,
    alba8c1_metadata character varying(255),
    alba8c1_metadata_comment text,
    alba8c1g boolean,
    alba8c1g_metadata character varying(255),
    alba8c1g_metadata_comment text,
    alba8c1g2 boolean,
    alba8c1g2_metadata character varying(255),
    alba8c1g2_metadata_comment text,
    alba3g character varying(255),
    alba3g_metadata character varying(255),
    alba3g_metadata_comment text,
    alba3g2 character varying(255),
    alba3g2_metadata character varying(255),
    alba3g2_metadata_comment text,
    alba2a1 boolean,
    alba2a10 boolean,
    alba2a10_metadata character varying(255),
    alba2a10_metadata_comment text,
    alba2a11 boolean,
    alba2a11_metadata character varying(255),
    alba2a11_metadata_comment text,
    alba2a12 boolean,
    alba2a12_metadata character varying(255),
    alba2a12_metadata_comment text,
    alba2a13 boolean,
    alba2a13_metadata character varying(255),
    alba2a13_metadata_comment text,
    alba2a14 boolean,
    alba2a14_metadata character varying(255),
    alba2a14_metadata_comment text,
    alba2a15 boolean,
    alba2a15_metadata character varying(255),
    alba2a15_metadata_comment text,
    alba2a16 boolean,
    alba2a16_metadata character varying(255),
    alba2a16_metadata_comment text,
    alba2a17 boolean,
    alba2a17_metadata character varying(255),
    alba2a17_metadata_comment text,
    alba2a18 boolean,
    alba2a18_metadata character varying(255),
    alba2a18_metadata_comment text,
    alba2a19 boolean,
    alba2a19_metadata character varying(255),
    alba2a19_metadata_comment text,
    alba2a1_metadata character varying(255),
    alba2a1_metadata_comment text,
    alba2a2 boolean,
    alba2a20 boolean,
    alba2a20_metadata character varying(255),
    alba2a20_metadata_comment text,
    alba2a20q text,
    alba2a20q_metadata character varying(255),
    alba2a20q_metadata_comment text,
    alba2a2_metadata character varying(255),
    alba2a2_metadata_comment text,
    alba2a3 boolean,
    alba2a3_metadata character varying(255),
    alba2a3_metadata_comment text,
    alba2a4 boolean,
    alba2a4_metadata character varying(255),
    alba2a4_metadata_comment text,
    alba2a5 boolean,
    alba2a5_metadata character varying(255),
    alba2a5_metadata_comment text,
    alba2a6 boolean,
    alba2a6_metadata character varying(255),
    alba2a6_metadata_comment text,
    alba2a7 boolean,
    alba2a7_metadata character varying(255),
    alba2a7_metadata_comment text,
    alba2a8 boolean,
    alba2a8_metadata character varying(255),
    alba2a8_metadata_comment text,
    alba2a9 boolean,
    alba2a9_metadata character varying(255),
    alba2a9_metadata_comment text,
    alba2group_metadata character varying(255),
    alba2group_metadata_comment text,
    alba3 character varying(255),
    alba3_metadata character varying(255),
    alba3_metadata_comment text,
    alba1 character varying(255),
    alba1_metadata character varying(255),
    alba1_metadata_comment text,
    alba10 character varying(255),
    alba10_metadata character varying(255),
    alba10_metadata_comment text,
    alba4g integer,
    alba4g_metadata character varying(255),
    alba4g_metadata_comment text,
    alba4g2 integer,
    alba4g2_metadata character varying(255),
    alba4g2_metadata_comment text,
    alba9 integer,
    alba9_metadata character varying(255),
    alba9_metadata_comment text,
    alba9g integer,
    alba9g_metadata character varying(255),
    alba9g_metadata_comment text,
    alba9g2 integer,
    alba9g2_metadata character varying(255),
    alba9g2_metadata_comment text,
    alba7dd text,
    alba7dd_metadata character varying(255),
    alba7dd_metadata_comment text,
    alba7dg text,
    alba7dg_metadata character varying(255),
    alba7dg_metadata_comment text,
    alba7dg2 text,
    alba7dg2_metadata character varying(255),
    alba7dg2_metadata_comment text,
    alba7cc character varying(255),
    alba7cc_metadata character varying(255),
    alba7cc_metadata_comment text,
    alba7cg character varying(255),
    alba7cg_metadata character varying(255),
    alba7cg_metadata_comment text,
    alba7cg2 character varying(255),
    alba7cg2_metadata character varying(255),
    alba7cg2_metadata_comment text,
    alba2 character varying(255),
    alba2_metadata character varying(255),
    alba2_metadata_comment text
);


ALTER TABLE coorte.alb_a OWNER TO postgres;

--
-- Name: albs_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE albs_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    albsa6a1 boolean,
    albsa7a1 boolean,
    albsa7a1_metadata character varying(255),
    albsa7a1_metadata_comment text,
    albsa7a1g boolean,
    albsa7a1g_metadata character varying(255),
    albsa7a1g_metadata_comment text,
    albsa7a1g2 boolean,
    albsa7a1g2_metadata character varying(255),
    albsa7a1g2_metadata_comment text,
    albsa8a1 boolean,
    albsa8a1_metadata character varying(255),
    albsa8a1_metadata_comment text,
    albsa8a1g boolean,
    albsa8a1g_metadata character varying(255),
    albsa8a1g_metadata_comment text,
    albsa8a1g2 boolean,
    albsa8a1g2_metadata character varying(255),
    albsa8a1g2_metadata_comment text,
    albsa6a1_metadata character varying(255),
    albsa6a1_metadata_comment text,
    albsa6a1g boolean,
    albsa6a1g_metadata character varying(255),
    albsa6a1g_metadata_comment text,
    albsa6a1g2 boolean,
    albsa6a1g2_metadata character varying(255),
    albsa6a1g2_metadata_comment text,
    albsa6b1 boolean,
    albsa7b1 boolean,
    albsa7b1_metadata character varying(255),
    albsa7b1_metadata_comment text,
    albsa7b1g boolean,
    albsa7b1g_metadata character varying(255),
    albsa7b1g_metadata_comment text,
    albsa7b1g2 boolean,
    albsa7b1g2_metadata character varying(255),
    albsa7b1g2_metadata_comment text,
    albsa8b1 boolean,
    albsa8b1_metadata character varying(255),
    albsa8b1_metadata_comment text,
    albsa8b1g boolean,
    albsa8b1g_metadata character varying(255),
    albsa8b1g_metadata_comment text,
    albsa8b1g2 boolean,
    albsa8b1g2_metadata character varying(255),
    albsa8b1g2_metadata_comment text,
    albsa6b1_metadata character varying(255),
    albsa6b1_metadata_comment text,
    albsa6b1g boolean,
    albsa6b1g_metadata character varying(255),
    albsa6b1g_metadata_comment text,
    albsa6b1g2 boolean,
    albsa6b1g2_metadata character varying(255),
    albsa6b1g2_metadata_comment text,
    albsa1g character varying(255),
    albsa1g_metadata character varying(255),
    albsa1g_metadata_comment text,
    albsa1g2 character varying(255),
    albsa1g2_metadata character varying(255),
    albsa1g2_metadata_comment text,
    albsa1ag integer,
    albsa1ag_metadata character varying(255),
    albsa1ag_metadata_comment text,
    albsa1ag2 integer,
    albsa1ag2_metadata character varying(255),
    albsa1ag2_metadata_comment text,
    albsa10a integer,
    albsa10a_metadata character varying(255),
    albsa10a_metadata_comment text,
    albsa1a integer,
    albsa1a_metadata character varying(255),
    albsa1a_metadata_comment text,
    albsa6aa integer,
    albsa7aa integer,
    albsa7aa_metadata character varying(255),
    albsa7aa_metadata_comment text,
    albsa7aag integer,
    albsa7aag_metadata character varying(255),
    albsa7aag_metadata_comment text,
    albsa7aag2 integer,
    albsa7aag2_metadata character varying(255),
    albsa7aag2_metadata_comment text,
    albsa8aa integer,
    albsa8aa_metadata character varying(255),
    albsa8aa_metadata_comment text,
    albsa8aag integer,
    albsa8aag_metadata character varying(255),
    albsa8aag_metadata_comment text,
    albsa8aag2 integer,
    albsa8aag2_metadata character varying(255),
    albsa8aag2_metadata_comment text,
    albsa6aa_metadata character varying(255),
    albsa6aa_metadata_comment text,
    albsa6aag integer,
    albsa6aag_metadata character varying(255),
    albsa6aag_metadata_comment text,
    albsa6aag2 integer,
    albsa6aag2_metadata character varying(255),
    albsa6aag2_metadata_comment text,
    albsa6bb integer,
    albsa7bb integer,
    albsa7bb_metadata character varying(255),
    albsa7bb_metadata_comment text,
    albsa7bbg integer,
    albsa7bbg_metadata character varying(255),
    albsa7bbg_metadata_comment text,
    albsa7bbg2 integer,
    albsa7bbg2_metadata character varying(255),
    albsa7bbg2_metadata_comment text,
    albsa8bb integer,
    albsa8bb_metadata character varying(255),
    albsa8bb_metadata_comment text,
    albsa8bbg integer,
    albsa8bbg_metadata character varying(255),
    albsa8bbg_metadata_comment text,
    albsa8bbg2 integer,
    albsa8bbg2_metadata character varying(255),
    albsa8bbg2_metadata_comment text,
    albsa6bb_metadata character varying(255),
    albsa6bb_metadata_comment text,
    albsa6bbg integer,
    albsa6bbg_metadata character varying(255),
    albsa6bbg_metadata_comment text,
    albsa6bbg2 integer,
    albsa6bbg2_metadata character varying(255),
    albsa6bbg2_metadata_comment text,
    albsa4 integer,
    albsa4_metadata character varying(255),
    albsa4_metadata_comment text,
    albsa5g integer,
    albsa5g_metadata character varying(255),
    albsa5g_metadata_comment text,
    albsa5g2 integer,
    albsa5g2_metadata character varying(255),
    albsa5g2_metadata_comment text,
    albsa5 integer,
    albsa5_metadata character varying(255),
    albsa5_metadata_comment text,
    albsa6c1 boolean,
    albsa7c1 boolean,
    albsa7c1_metadata character varying(255),
    albsa7c1_metadata_comment text,
    albsa7c1g boolean,
    albsa7c1g_metadata character varying(255),
    albsa7c1g_metadata_comment text,
    albsa7c1g2 boolean,
    albsa7c1g2_metadata character varying(255),
    albsa7c1g2_metadata_comment text,
    albsa6c1_metadata character varying(255),
    albsa6c1_metadata_comment text,
    albsa6c1g boolean,
    albsa6c1g_metadata character varying(255),
    albsa6c1g_metadata_comment text,
    albsa6c1g2 boolean,
    albsa6c1g2_metadata character varying(255),
    albsa6c1g2_metadata_comment text,
    albsa8c1 boolean,
    albsa8c1_metadata character varying(255),
    albsa8c1_metadata_comment text,
    albsa8c1g boolean,
    albsa8c1g_metadata character varying(255),
    albsa8c1g_metadata_comment text,
    albsa8c1g2 boolean,
    albsa8c1g2_metadata character varying(255),
    albsa8c1g2_metadata_comment text,
    albsa3g character varying(255),
    albsa3g_metadata character varying(255),
    albsa3g_metadata_comment text,
    albsa3g2 character varying(255),
    albsa3g2_metadata character varying(255),
    albsa3g2_metadata_comment text,
    albsa2a1 boolean,
    albsa2a10 boolean,
    albsa2a10_metadata character varying(255),
    albsa2a10_metadata_comment text,
    albsa2a11 boolean,
    albsa2a11_metadata character varying(255),
    albsa2a11_metadata_comment text,
    albsa2a12 boolean,
    albsa2a12_metadata character varying(255),
    albsa2a12_metadata_comment text,
    albsa2a13 boolean,
    albsa2a13_metadata character varying(255),
    albsa2a13_metadata_comment text,
    albsa2a14 boolean,
    albsa2a14_metadata character varying(255),
    albsa2a14_metadata_comment text,
    albsa2a15 boolean,
    albsa2a15_metadata character varying(255),
    albsa2a15_metadata_comment text,
    albsa2a16 boolean,
    albsa2a16_metadata character varying(255),
    albsa2a16_metadata_comment text,
    albsa2a17 boolean,
    albsa2a17_metadata character varying(255),
    albsa2a17_metadata_comment text,
    albsa2a18 boolean,
    albsa2a18_metadata character varying(255),
    albsa2a18_metadata_comment text,
    albsa2a19 boolean,
    albsa2a19_metadata character varying(255),
    albsa2a19_metadata_comment text,
    albsa2a1_metadata character varying(255),
    albsa2a1_metadata_comment text,
    albsa2a2 boolean,
    albsa2a20 boolean,
    albsa2a20_metadata character varying(255),
    albsa2a20_metadata_comment text,
    albsa2a20q text,
    albsa2a20q_metadata character varying(255),
    albsa2a20q_metadata_comment text,
    albsa2a2_metadata character varying(255),
    albsa2a2_metadata_comment text,
    albsa2a3 boolean,
    albsa2a3_metadata character varying(255),
    albsa2a3_metadata_comment text,
    albsa2a4 boolean,
    albsa2a4_metadata character varying(255),
    albsa2a4_metadata_comment text,
    albsa2a5 boolean,
    albsa2a5_metadata character varying(255),
    albsa2a5_metadata_comment text,
    albsa2a6 boolean,
    albsa2a6_metadata character varying(255),
    albsa2a6_metadata_comment text,
    albsa2a7 boolean,
    albsa2a7_metadata character varying(255),
    albsa2a7_metadata_comment text,
    albsa2a8 boolean,
    albsa2a8_metadata character varying(255),
    albsa2a8_metadata_comment text,
    albsa2a9 boolean,
    albsa2a9_metadata character varying(255),
    albsa2a9_metadata_comment text,
    albsa2group_metadata character varying(255),
    albsa2group_metadata_comment text,
    albsa3 character varying(255),
    albsa3_metadata character varying(255),
    albsa3_metadata_comment text,
    albsa1 character varying(255),
    albsa1_metadata character varying(255),
    albsa1_metadata_comment text,
    albsa10 character varying(255),
    albsa10_metadata character varying(255),
    albsa10_metadata_comment text,
    albsa4g integer,
    albsa4g_metadata character varying(255),
    albsa4g_metadata_comment text,
    albsa4g2 integer,
    albsa4g2_metadata character varying(255),
    albsa4g2_metadata_comment text,
    albsa9 integer,
    albsa9_metadata character varying(255),
    albsa9_metadata_comment text,
    albsa9g integer,
    albsa9g_metadata character varying(255),
    albsa9g_metadata_comment text,
    albsa9g2 integer,
    albsa9g2_metadata character varying(255),
    albsa9g2_metadata_comment text,
    albsa7dd text,
    albsa7dd_metadata character varying(255),
    albsa7dd_metadata_comment text,
    albsa7dg text,
    albsa7dg_metadata character varying(255),
    albsa7dg_metadata_comment text,
    albsa7dg2 text,
    albsa7dg2_metadata character varying(255),
    albsa7dg2_metadata_comment text,
    albsa7cc character varying(255),
    albsa7cc_metadata character varying(255),
    albsa7cc_metadata_comment text,
    albsa7cg character varying(255),
    albsa7cg_metadata character varying(255),
    albsa7cg_metadata_comment text,
    albsa7cg2 character varying(255),
    albsa7cg2_metadata character varying(255),
    albsa7cg2_metadata_comment text,
    albsa2 character varying(255),
    albsa2_metadata character varying(255),
    albsa2_metadata_comment text
);


ALTER TABLE coorte.albs_a OWNER TO postgres;

--
-- Name: ant_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE ant_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    anta5 real,
    anta5_metadata character varying(255),
    anta5_metadata_comment text,
    anta7d integer,
    anta7d_metadata character varying(255),
    anta7d_metadata_comment text,
    anta7f integer,
    anta7f_metadata character varying(255),
    anta7f_metadata_comment text,
    anta7e integer,
    anta7e_metadata character varying(255),
    anta7e_metadata_comment text,
    anta2 real,
    anta2_metadata character varying(255),
    anta2_metadata_comment text,
    anta1 real,
    anta1_metadata character varying(255),
    anta1_metadata_comment text,
    antaobs boolean,
    antaobs_metadata character varying(255),
    antaobs_metadata_comment text,
    anta6 real,
    anta6_metadata character varying(255),
    anta6_metadata_comment text,
    anta8a integer,
    anta8a_metadata character varying(255),
    anta8a_metadata_comment text,
    anta8c integer,
    anta8c_metadata character varying(255),
    anta8c_metadata_comment text,
    anta8b integer,
    anta8b_metadata character varying(255),
    anta8b_metadata_comment text,
    anta9 real,
    anta9_metadata character varying(255),
    anta9_metadata_comment text,
    antaobs1 boolean,
    antaobs1_metadata character varying(255),
    antaobs1_metadata_comment text,
    antacomh integer,
    antacom_metadata character varying(255),
    antacom_metadata_comment text,
    antacomm integer,
    anta4 real,
    anta4_metadata character varying(255),
    anta4_metadata_comment text,
    anta3 real,
    anta3_metadata character varying(255),
    anta3_metadata_comment text,
    anta7a integer,
    anta7a_metadata character varying(255),
    anta7a_metadata_comment text,
    anta7c integer,
    anta7c_metadata character varying(255),
    anta7c_metadata_comment text,
    anta7b integer,
    anta7b_metadata character varying(255),
    anta7b_metadata_comment text,
    antacom1 text,
    antacom1_metadata character varying(255),
    antacom1_metadata_comment text
);


ALTER TABLE coorte.ant_a OWNER TO postgres;

--
-- Name: ants_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE ants_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    antsa5 real,
    antsa5_metadata character varying(255),
    antsa5_metadata_comment text,
    antsa7d integer,
    antsa7d_metadata character varying(255),
    antsa7d_metadata_comment text,
    antsa7f integer,
    antsa7f_metadata character varying(255),
    antsa7f_metadata_comment text,
    antsa7e integer,
    antsa7e_metadata character varying(255),
    antsa7e_metadata_comment text,
    antsa2 real,
    antsa2_metadata character varying(255),
    antsa2_metadata_comment text,
    antsa1 real,
    antsa1_metadata character varying(255),
    antsa1_metadata_comment text,
    antsaobs boolean,
    antsaobs_metadata character varying(255),
    antsaobs_metadata_comment text,
    antsa8a integer,
    antsa8a_metadata character varying(255),
    antsa8a_metadata_comment text,
    antsa8c integer,
    antsa8c_metadata character varying(255),
    antsa8c_metadata_comment text,
    antsa8b integer,
    antsa8b_metadata character varying(255),
    antsa8b_metadata_comment text,
    antsacomh integer,
    antsacom_metadata character varying(255),
    antsacom_metadata_comment text,
    antsacomm integer,
    antsaobs1 boolean,
    antsaobs1_metadata character varying(255),
    antsaobs1_metadata_comment text,
    antsa7a integer,
    antsa7a_metadata character varying(255),
    antsa7a_metadata_comment text,
    antsa7c integer,
    antsa7c_metadata character varying(255),
    antsa7c_metadata_comment text,
    antsa7b integer,
    antsa7b_metadata character varying(255),
    antsa7b_metadata_comment text,
    antsa9 real,
    antsa9_metadata character varying(255),
    antsa9_metadata_comment text,
    antsacom1 text,
    antsacom1_metadata character varying(255),
    antsacom1_metadata_comment text
);


ALTER TABLE coorte.ants_a OWNER TO postgres;

--
-- Name: bia_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE bia_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    biaa11a boolean,
    biaa11a_metadata character varying(255),
    biaa11a_metadata_comment text,
    biaa8 character varying(255),
    biaa8_metadata character varying(255),
    biaa8_metadata_comment text,
    biaa8a timestamp without time zone,
    biaa8a_metadata character varying(255),
    biaa8a_metadata_comment text,
    biaa7 character varying(255),
    biaa7_metadata character varying(255),
    biaa7_metadata_comment text,
    biaa4 character varying(255),
    biaa4_metadata character varying(255),
    biaa4_metadata_comment text,
    biaa6 character varying(255),
    biaa6_metadata character varying(255),
    biaa6_metadata_comment text,
    biaa1 character varying(255),
    biaa1_metadata character varying(255),
    biaa1_metadata_comment text,
    biaa10 real,
    biaa10_metadata character varying(255),
    biaa10_metadata_comment text,
    biaa9 real,
    biaa9_metadata character varying(255),
    biaa9_metadata_comment text,
    biaa3 character varying(255),
    biaa3_metadata character varying(255),
    biaa3_metadata_comment text,
    biaa11b boolean,
    biaa11b_metadata character varying(255),
    biaa11b_metadata_comment text,
    biaa11c boolean,
    biaa11c_metadata character varying(255),
    biaa11c_metadata_comment text,
    biaa2 character varying(255),
    biaa2_metadata character varying(255),
    biaa2_metadata_comment text,
    biaa5 character varying(255),
    biaa5_metadata character varying(255),
    biaa5_metadata_comment text,
    biaa11 boolean,
    biaa11_metadata character varying(255),
    biaa11_metadata_comment text,
    biaa11cq text,
    biaa11cq_metadata character varying(255),
    biaa11cq_metadata_comment text
);


ALTER TABLE coorte.bia_a OWNER TO postgres;

--
-- Name: coa_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE coa_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    coaa1 character varying(255),
    coaa1_metadata character varying(255),
    coaa1_metadata_comment text,
    coaa2a character varying(255),
    coaa2a_metadata character varying(255),
    coaa2a_metadata_comment text,
    coaa2b character varying(255),
    coaa2b_metadata character varying(255),
    coaa2b_metadata_comment text
);


ALTER TABLE coorte.coa_a OWNER TO postgres;

--
-- Name: csts_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE csts_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    cstsa5_metadata character varying(255),
    cstsa5_metadata_comment text,
    cstsa6_metadata character varying(255),
    cstsa6_metadata_comment text,
    cstsa4_metadata character varying(255),
    cstsa4_metadata_comment text,
    cstsa2a boolean,
    cstsa2a_metadata character varying(255),
    cstsa2a_metadata_comment text,
    cstsa2b boolean,
    cstsa2b_metadata character varying(255),
    cstsa2b_metadata_comment text,
    cstsa2c boolean,
    cstsa2c_metadata character varying(255),
    cstsa2c_metadata_comment text,
    cstsa2d boolean,
    cstsa2d_metadata character varying(255),
    cstsa2d_metadata_comment text,
    qc_group character varying(255),
    cstsa1ah integer,
    cstsa1a_metadata character varying(255),
    cstsa1a_metadata_comment text,
    cstsa1am integer,
    cstsa2dq text,
    cstsa2dq_metadata character varying(255),
    cstsa2dq_metadata_comment text,
    fluoridetube30_id integer,
    geltube30_id integer,
    geltube30cq_id integer
);


ALTER TABLE coorte.csts_a OWNER TO postgres;

--
-- Name: dso_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE dso_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    dsoa1 character varying(255),
    dsoa1_metadata character varying(255),
    dsoa1_metadata_comment text,
    dsoa2 timestamp without time zone,
    dsoa2_metadata character varying(255),
    dsoa2_metadata_comment text,
    dsoa3 timestamp without time zone,
    dsoa3_metadata character varying(255),
    dsoa3_metadata_comment text,
    dsoa4 timestamp without time zone,
    dsoa4_metadata character varying(255),
    dsoa4_metadata_comment text,
    dsoa5 timestamp without time zone,
    dsoa5_metadata character varying(255),
    dsoa5_metadata_comment text,
    dsoa6 timestamp without time zone,
    dsoa6_metadata character varying(255),
    dsoa6_metadata_comment text,
    dsoa7 timestamp without time zone,
    dsoa7_metadata character varying(255),
    dsoa7_metadata_comment text,
    dsoa8 timestamp without time zone,
    dsoa8_metadata character varying(255),
    dsoa8_metadata_comment text,
    dsoa9 timestamp without time zone,
    dsoa9_metadata character varying(255),
    dsoa9_metadata_comment text,
    dsoa1a integer,
    dsoa1a_metadata character varying(255),
    dsoa1a_metadata_comment text,
    dsoa2c integer,
    dsoa2c_metadata character varying(255),
    dsoa2c_metadata_comment text,
    dsoa3c integer,
    dsoa3c_metadata character varying(255),
    dsoa3c_metadata_comment text,
    dsoa4c integer,
    dsoa4c_metadata character varying(255),
    dsoa4c_metadata_comment text,
    dsoa5c integer,
    dsoa5c_metadata character varying(255),
    dsoa5c_metadata_comment text,
    dsoa6c integer,
    dsoa6c_metadata character varying(255),
    dsoa6c_metadata_comment text,
    dsoa7c integer,
    dsoa7c_metadata character varying(255),
    dsoa7c_metadata_comment text,
    dsoa8c integer,
    dsoa8c_metadata character varying(255),
    dsoa8c_metadata_comment text,
    dsoa9c integer,
    dsoa9c_metadata character varying(255),
    dsoa9c_metadata_comment text,
    dsoa2dih integer,
    dsoa2di_metadata character varying(255),
    dsoa2di_metadata_comment text,
    dsoa2dim integer,
    dsoa2dfh integer,
    dsoa2df_metadata character varying(255),
    dsoa2df_metadata_comment text,
    dsoa2dfm integer,
    dsoa3dih integer,
    dsoa3di_metadata character varying(255),
    dsoa3di_metadata_comment text,
    dsoa3dim integer,
    dsoa3dfh integer,
    dsoa3df_metadata character varying(255),
    dsoa3df_metadata_comment text,
    dsoa3dfm integer,
    dsoa4dih integer,
    dsoa4di_metadata character varying(255),
    dsoa4di_metadata_comment text,
    dsoa4dim integer,
    dsoa4dfh integer,
    dsoa4df_metadata character varying(255),
    dsoa4df_metadata_comment text,
    dsoa4dfm integer,
    dsoa5dih integer,
    dsoa5di_metadata character varying(255),
    dsoa5di_metadata_comment text,
    dsoa5dim integer,
    dsoa5dfh integer,
    dsoa5df_metadata character varying(255),
    dsoa5df_metadata_comment text,
    dsoa5dfm integer,
    dsoa6dih integer,
    dsoa6di_metadata character varying(255),
    dsoa6di_metadata_comment text,
    dsoa6dim integer,
    dsoa6dfh integer,
    dsoa6df_metadata character varying(255),
    dsoa6df_metadata_comment text,
    dsoa6dfm integer,
    dsoa7dih integer,
    dsoa7di_metadata character varying(255),
    dsoa7di_metadata_comment text,
    dsoa7dim integer,
    dsoa7dfh integer,
    dsoa7df_metadata character varying(255),
    dsoa7df_metadata_comment text,
    dsoa7dfm integer,
    dsoa8dih integer,
    dsoa8di_metadata character varying(255),
    dsoa8di_metadata_comment text,
    dsoa8dim integer,
    dsoa8dfh integer,
    dsoa8df_metadata character varying(255),
    dsoa8df_metadata_comment text,
    dsoa8dfm integer,
    dsoa9dih integer,
    dsoa9di_metadata character varying(255),
    dsoa9di_metadata_comment text,
    dsoa9dim integer,
    dsoa9dfh integer,
    dsoa9df_metadata character varying(255),
    dsoa9df_metadata_comment text,
    dsoa9dfm integer,
    dsoa2eih integer,
    dsoa2ei_metadata character varying(255),
    dsoa2ei_metadata_comment text,
    dsoa2eim integer,
    dsoa2efh integer,
    dsoa2ef_metadata character varying(255),
    dsoa2ef_metadata_comment text,
    dsoa2efm integer,
    dsoa3eih integer,
    dsoa3ei_metadata character varying(255),
    dsoa3ei_metadata_comment text,
    dsoa3eim integer,
    dsoa3efh integer,
    dsoa3ef_metadata character varying(255),
    dsoa3ef_metadata_comment text,
    dsoa3efm integer,
    dsoa4eih integer,
    dsoa4ei_metadata character varying(255),
    dsoa4ei_metadata_comment text,
    dsoa4eim integer,
    dsoa4efh integer,
    dsoa4ef_metadata character varying(255),
    dsoa4ef_metadata_comment text,
    dsoa4efm integer,
    dsoa5eih integer,
    dsoa5ei_metadata character varying(255),
    dsoa5ei_metadata_comment text,
    dsoa5eim integer,
    dsoa5efh integer,
    dsoa5ef_metadata character varying(255),
    dsoa5ef_metadata_comment text,
    dsoa5efm integer,
    dsoa6eih integer,
    dsoa6ei_metadata character varying(255),
    dsoa6ei_metadata_comment text,
    dsoa6eim integer,
    dsoa6efh integer,
    dsoa6ef_metadata character varying(255),
    dsoa6ef_metadata_comment text,
    dsoa6efm integer,
    dsoa7eih integer,
    dsoa7ei_metadata character varying(255),
    dsoa7ei_metadata_comment text,
    dsoa7eim integer,
    dsoa7efh integer,
    dsoa7ef_metadata character varying(255),
    dsoa7ef_metadata_comment text,
    dsoa7efm integer,
    dsoa8eih integer,
    dsoa8ei_metadata character varying(255),
    dsoa8ei_metadata_comment text,
    dsoa8eim integer,
    dsoa8efh integer,
    dsoa8ef_metadata character varying(255),
    dsoa8ef_metadata_comment text,
    dsoa8efm integer,
    dsoa9eih integer,
    dsoa9ei_metadata character varying(255),
    dsoa9ei_metadata_comment text,
    dsoa9eim integer,
    dsoa9efh integer,
    dsoa9ef_metadata character varying(255),
    dsoa9ef_metadata_comment text,
    dsoa9efm integer,
    dsoa2fih integer,
    dsoa2fi_metadata character varying(255),
    dsoa2fi_metadata_comment text,
    dsoa2fim integer,
    dsoa2ffh integer,
    dsoa2ff_metadata character varying(255),
    dsoa2ff_metadata_comment text,
    dsoa2ffm integer,
    dsoa3fih integer,
    dsoa3fi_metadata character varying(255),
    dsoa3fi_metadata_comment text,
    dsoa3fim integer,
    dsoa3ffh integer,
    dsoa3ff_metadata character varying(255),
    dsoa3ff_metadata_comment text,
    dsoa3ffm integer,
    dsoa4fih integer,
    dsoa4fi_metadata character varying(255),
    dsoa4fi_metadata_comment text,
    dsoa4fim integer,
    dsoa4ffh integer,
    dsoa4ff_metadata character varying(255),
    dsoa4ff_metadata_comment text,
    dsoa4ffm integer,
    dsoa5fih integer,
    dsoa5fi_metadata character varying(255),
    dsoa5fi_metadata_comment text,
    dsoa5fim integer,
    dsoa5ffh integer,
    dsoa5ff_metadata character varying(255),
    dsoa5ff_metadata_comment text,
    dsoa5ffm integer,
    dsoa6fih integer,
    dsoa6fi_metadata character varying(255),
    dsoa6fi_metadata_comment text,
    dsoa6fim integer,
    dsoa6ffh integer,
    dsoa6ff_metadata character varying(255),
    dsoa6ff_metadata_comment text,
    dsoa6ffm integer,
    dsoa7fih integer,
    dsoa7fi_metadata character varying(255),
    dsoa7fi_metadata_comment text,
    dsoa7fim integer,
    dsoa7ffh integer,
    dsoa7ff_metadata character varying(255),
    dsoa7ff_metadata_comment text,
    dsoa7ffm integer,
    dsoa8fih integer,
    dsoa8fi_metadata character varying(255),
    dsoa8fi_metadata_comment text,
    dsoa8fim integer,
    dsoa8ffh integer,
    dsoa8ff_metadata character varying(255),
    dsoa8ff_metadata_comment text,
    dsoa8ffm integer,
    dsoa9fih integer,
    dsoa9fi_metadata character varying(255),
    dsoa9fi_metadata_comment text,
    dsoa9fim integer,
    dsoa9ffh integer,
    dsoa9ff_metadata character varying(255),
    dsoa9ff_metadata_comment text,
    dsoa9ffm integer,
    dsoa2gih integer,
    dsoa2gi_metadata character varying(255),
    dsoa2gi_metadata_comment text,
    dsoa2gim integer,
    dsoa2gfh integer,
    dsoa2gf_metadata character varying(255),
    dsoa2gf_metadata_comment text,
    dsoa2gfm integer,
    dsoa3gih integer,
    dsoa3gi_metadata character varying(255),
    dsoa3gi_metadata_comment text,
    dsoa3gim integer,
    dsoa3gfh integer,
    dsoa3gf_metadata character varying(255),
    dsoa3gf_metadata_comment text,
    dsoa3gfm integer,
    dsoa4gih integer,
    dsoa4gi_metadata character varying(255),
    dsoa4gi_metadata_comment text,
    dsoa4gim integer,
    dsoa4gfh integer,
    dsoa4gf_metadata character varying(255),
    dsoa4gf_metadata_comment text,
    dsoa4gfm integer,
    dsoa5gih integer,
    dsoa5gi_metadata character varying(255),
    dsoa5gi_metadata_comment text,
    dsoa5gim integer,
    dsoa5gfh integer,
    dsoa5gf_metadata character varying(255),
    dsoa5gf_metadata_comment text,
    dsoa5gfm integer,
    dsoa6gih integer,
    dsoa6gi_metadata character varying(255),
    dsoa6gi_metadata_comment text,
    dsoa6gim integer,
    dsoa6gfh integer,
    dsoa6gf_metadata character varying(255),
    dsoa6gf_metadata_comment text,
    dsoa6gfm integer,
    dsoa7gih integer,
    dsoa7gi_metadata character varying(255),
    dsoa7gi_metadata_comment text,
    dsoa7gim integer,
    dsoa7gfh integer,
    dsoa7gf_metadata character varying(255),
    dsoa7gf_metadata_comment text,
    dsoa7gfm integer,
    dsoa8gih integer,
    dsoa8gi_metadata character varying(255),
    dsoa8gi_metadata_comment text,
    dsoa8gim integer,
    dsoa8gfh integer,
    dsoa8gf_metadata character varying(255),
    dsoa8gf_metadata_comment text,
    dsoa8gfm integer,
    dsoa9gih integer,
    dsoa9gi_metadata character varying(255),
    dsoa9gi_metadata_comment text,
    dsoa9gim integer,
    dsoa9gfh integer,
    dsoa9gf_metadata character varying(255),
    dsoa9gf_metadata_comment text,
    dsoa9gfm integer,
    dsoa2hih integer,
    dsoa2hi_metadata character varying(255),
    dsoa2hi_metadata_comment text,
    dsoa2him integer,
    dsoa2hfh integer,
    dsoa2hf_metadata character varying(255),
    dsoa2hf_metadata_comment text,
    dsoa2hfm integer,
    dsoa3hih integer,
    dsoa3hi_metadata character varying(255),
    dsoa3hi_metadata_comment text,
    dsoa3him integer,
    dsoa3hfh integer,
    dsoa3hf_metadata character varying(255),
    dsoa3hf_metadata_comment text,
    dsoa3hfm integer,
    dsoa4hih integer,
    dsoa4hi_metadata character varying(255),
    dsoa4hi_metadata_comment text,
    dsoa4him integer,
    dsoa4hfh integer,
    dsoa4hf_metadata character varying(255),
    dsoa4hf_metadata_comment text,
    dsoa4hfm integer,
    dsoa5hih integer,
    dsoa5hi_metadata character varying(255),
    dsoa5hi_metadata_comment text,
    dsoa5him integer,
    dsoa5hfh integer,
    dsoa5hf_metadata character varying(255),
    dsoa5hf_metadata_comment text,
    dsoa5hfm integer,
    dsoa6hih integer,
    dsoa6hi_metadata character varying(255),
    dsoa6hi_metadata_comment text,
    dsoa6him integer,
    dsoa6hfh integer,
    dsoa6hf_metadata character varying(255),
    dsoa6hf_metadata_comment text,
    dsoa6hfm integer,
    dsoa7hih integer,
    dsoa7hi_metadata character varying(255),
    dsoa7hi_metadata_comment text,
    dsoa7him integer,
    dsoa7hfh integer,
    dsoa7hf_metadata character varying(255),
    dsoa7hf_metadata_comment text,
    dsoa7hfm integer,
    dsoa8hih integer,
    dsoa8hi_metadata character varying(255),
    dsoa8hi_metadata_comment text,
    dsoa8him integer,
    dsoa8hfh integer,
    dsoa8hf_metadata character varying(255),
    dsoa8hf_metadata_comment text,
    dsoa8hfm integer,
    dsoa9hih integer,
    dsoa9hi_metadata character varying(255),
    dsoa9hi_metadata_comment text,
    dsoa9him integer,
    dsoa9hfh integer,
    dsoa9hf_metadata character varying(255),
    dsoa9hf_metadata_comment text,
    dsoa9hfm integer,
    dsoa2iih integer,
    dsoa2ii_metadata character varying(255),
    dsoa2ii_metadata_comment text,
    dsoa2iim integer,
    dsoa2ifh integer,
    dsoa2if_metadata character varying(255),
    dsoa2if_metadata_comment text,
    dsoa2ifm integer,
    dsoa3iih integer,
    dsoa3ii_metadata character varying(255),
    dsoa3ii_metadata_comment text,
    dsoa3iim integer,
    dsoa3ifh integer,
    dsoa3if_metadata character varying(255),
    dsoa3if_metadata_comment text,
    dsoa3ifm integer,
    dsoa4iih integer,
    dsoa4ii_metadata character varying(255),
    dsoa4ii_metadata_comment text,
    dsoa4iim integer,
    dsoa4ifh integer,
    dsoa4if_metadata character varying(255),
    dsoa4if_metadata_comment text,
    dsoa4ifm integer,
    dsoa5iih integer,
    dsoa5ii_metadata character varying(255),
    dsoa5ii_metadata_comment text,
    dsoa5iim integer,
    dsoa5ifh integer,
    dsoa5if_metadata character varying(255),
    dsoa5if_metadata_comment text,
    dsoa5ifm integer,
    dsoa6iih integer,
    dsoa6ii_metadata character varying(255),
    dsoa6ii_metadata_comment text,
    dsoa6iim integer,
    dsoa6ifh integer,
    dsoa6if_metadata character varying(255),
    dsoa6if_metadata_comment text,
    dsoa6ifm integer,
    dsoa7iih integer,
    dsoa7ii_metadata character varying(255),
    dsoa7ii_metadata_comment text,
    dsoa7iim integer,
    dsoa7ifh integer,
    dsoa7if_metadata character varying(255),
    dsoa7if_metadata_comment text,
    dsoa7ifm integer,
    dsoa8iih integer,
    dsoa8ii_metadata character varying(255),
    dsoa8ii_metadata_comment text,
    dsoa8iim integer,
    dsoa8ifh integer,
    dsoa8if_metadata character varying(255),
    dsoa8if_metadata_comment text,
    dsoa8ifm integer,
    dsoa9iih integer,
    dsoa9ii_metadata character varying(255),
    dsoa9ii_metadata_comment text,
    dsoa9iim integer,
    dsoa9ifh integer,
    dsoa9if_metadata character varying(255),
    dsoa9if_metadata_comment text,
    dsoa9ifm integer,
    dsoa2jih integer,
    dsoa2ji_metadata character varying(255),
    dsoa2ji_metadata_comment text,
    dsoa2jim integer,
    dsoa2jfh integer,
    dsoa2jf_metadata character varying(255),
    dsoa2jf_metadata_comment text,
    dsoa2jfm integer,
    dsoa3jih integer,
    dsoa3ji_metadata character varying(255),
    dsoa3ji_metadata_comment text,
    dsoa3jim integer,
    dsoa3jfh integer,
    dsoa3jf_metadata character varying(255),
    dsoa3jf_metadata_comment text,
    dsoa3jfm integer,
    dsoa4jih integer,
    dsoa4ji_metadata character varying(255),
    dsoa4ji_metadata_comment text,
    dsoa4jim integer,
    dsoa4jfh integer,
    dsoa4jf_metadata character varying(255),
    dsoa4jf_metadata_comment text,
    dsoa4jfm integer,
    dsoa5jih integer,
    dsoa5ji_metadata character varying(255),
    dsoa5ji_metadata_comment text,
    dsoa5jim integer,
    dsoa5jfh integer,
    dsoa5jf_metadata character varying(255),
    dsoa5jf_metadata_comment text,
    dsoa5jfm integer,
    dsoa6jih integer,
    dsoa6ji_metadata character varying(255),
    dsoa6ji_metadata_comment text,
    dsoa6jim integer,
    dsoa6jfh integer,
    dsoa6jf_metadata character varying(255),
    dsoa6jf_metadata_comment text,
    dsoa6jfm integer,
    dsoa7jih integer,
    dsoa7ji_metadata character varying(255),
    dsoa7ji_metadata_comment text,
    dsoa7jim integer,
    dsoa7jfh integer,
    dsoa7jf_metadata character varying(255),
    dsoa7jf_metadata_comment text,
    dsoa7jfm integer,
    dsoa8jih integer,
    dsoa8ji_metadata character varying(255),
    dsoa8ji_metadata_comment text,
    dsoa8jim integer,
    dsoa8jfh integer,
    dsoa8jf_metadata character varying(255),
    dsoa8jf_metadata_comment text,
    dsoa8jfm integer,
    dsoa9jih integer,
    dsoa9ji_metadata character varying(255),
    dsoa9ji_metadata_comment text,
    dsoa9jim integer,
    dsoa9jfh integer,
    dsoa9jf_metadata character varying(255),
    dsoa9jf_metadata_comment text,
    dsoa9jfm integer,
    dsoa2kih integer,
    dsoa2ki_metadata character varying(255),
    dsoa2ki_metadata_comment text,
    dsoa2kim integer,
    dsoa2kfh integer,
    dsoa2kf_metadata character varying(255),
    dsoa2kf_metadata_comment text,
    dsoa2kfm integer,
    dsoa3kih integer,
    dsoa3ki_metadata character varying(255),
    dsoa3ki_metadata_comment text,
    dsoa3kim integer,
    dsoa3kfh integer,
    dsoa3kf_metadata character varying(255),
    dsoa3kf_metadata_comment text,
    dsoa3kfm integer,
    dsoa4kih integer,
    dsoa4ki_metadata character varying(255),
    dsoa4ki_metadata_comment text,
    dsoa4kim integer,
    dsoa4kfh integer,
    dsoa4kf_metadata character varying(255),
    dsoa4kf_metadata_comment text,
    dsoa4kfm integer,
    dsoa5kih integer,
    dsoa5ki_metadata character varying(255),
    dsoa5ki_metadata_comment text,
    dsoa5kim integer,
    dsoa5kfh integer,
    dsoa5kf_metadata character varying(255),
    dsoa5kf_metadata_comment text,
    dsoa5kfm integer,
    dsoa6kih integer,
    dsoa6ki_metadata character varying(255),
    dsoa6ki_metadata_comment text,
    dsoa6kim integer,
    dsoa6kfh integer,
    dsoa6kf_metadata character varying(255),
    dsoa6kf_metadata_comment text,
    dsoa6kfm integer,
    dsoa7kih integer,
    dsoa7ki_metadata character varying(255),
    dsoa7ki_metadata_comment text,
    dsoa7kim integer,
    dsoa7kfh integer,
    dsoa7kf_metadata character varying(255),
    dsoa7kf_metadata_comment text,
    dsoa7kfm integer,
    dsoa8kih integer,
    dsoa8ki_metadata character varying(255),
    dsoa8ki_metadata_comment text,
    dsoa8kim integer,
    dsoa8kfh integer,
    dsoa8kf_metadata character varying(255),
    dsoa8kf_metadata_comment text,
    dsoa8kfm integer,
    dsoa9kih integer,
    dsoa9ki_metadata character varying(255),
    dsoa9ki_metadata_comment text,
    dsoa9kim integer,
    dsoa9kfh integer,
    dsoa9kf_metadata character varying(255),
    dsoa9kf_metadata_comment text,
    dsoa9kfm integer,
    dsoa2b character varying(255),
    dsoa2b_metadata character varying(255),
    dsoa2b_metadata_comment text,
    dsoa3b character varying(255),
    dsoa3b_metadata character varying(255),
    dsoa3b_metadata_comment text,
    dsoa4b character varying(255),
    dsoa4b_metadata character varying(255),
    dsoa4b_metadata_comment text,
    dsoa5b character varying(255),
    dsoa5b_metadata character varying(255),
    dsoa5b_metadata_comment text,
    dsoa6b character varying(255),
    dsoa6b_metadata character varying(255),
    dsoa6b_metadata_comment text,
    dsoa7b character varying(255),
    dsoa7b_metadata character varying(255),
    dsoa7b_metadata_comment text,
    dsoa8b character varying(255),
    dsoa8b_metadata character varying(255),
    dsoa8b_metadata_comment text,
    dsoa9b character varying(255),
    dsoa9b_metadata character varying(255),
    dsoa9b_metadata_comment text,
    dsoa2lh integer,
    dsoa2l_metadata character varying(255),
    dsoa2l_metadata_comment text,
    dsoa2lm integer,
    dsoa3lh integer,
    dsoa3l_metadata character varying(255),
    dsoa3l_metadata_comment text,
    dsoa3lm integer,
    dsoa4lh integer,
    dsoa4l_metadata character varying(255),
    dsoa4l_metadata_comment text,
    dsoa4lm integer,
    dsoa5lh integer,
    dsoa5l_metadata character varying(255),
    dsoa5l_metadata_comment text,
    dsoa5lm integer,
    dsoa6lh integer,
    dsoa6l_metadata character varying(255),
    dsoa6l_metadata_comment text,
    dsoa6lm integer,
    dsoa7lh integer,
    dsoa7l_metadata character varying(255),
    dsoa7l_metadata_comment text,
    dsoa7lm integer,
    dsoa8lh integer,
    dsoa8l_metadata character varying(255),
    dsoa8l_metadata_comment text,
    dsoa8lm integer,
    dsoa9lh integer,
    dsoa9l_metadata character varying(255),
    dsoa9l_metadata_comment text,
    dsoa9lm integer,
    dsoa2ah integer,
    dsoa2a_metadata character varying(255),
    dsoa2a_metadata_comment text,
    dsoa2am integer,
    dsoa3ah integer,
    dsoa3a_metadata character varying(255),
    dsoa3a_metadata_comment text,
    dsoa3am integer,
    dsoa4ah integer,
    dsoa4a_metadata character varying(255),
    dsoa4a_metadata_comment text,
    dsoa4am integer,
    dsoa5ah integer,
    dsoa5a_metadata character varying(255),
    dsoa5a_metadata_comment text,
    dsoa5am integer,
    dsoa6ah integer,
    dsoa6a_metadata character varying(255),
    dsoa6a_metadata_comment text,
    dsoa6am integer,
    dsoa7ah integer,
    dsoa7a_metadata character varying(255),
    dsoa7a_metadata_comment text,
    dsoa7am integer,
    dsoa8ah integer,
    dsoa8a_metadata character varying(255),
    dsoa8a_metadata_comment text,
    dsoa8am integer,
    dsoa9ah integer,
    dsoa9a_metadata character varying(255),
    dsoa9a_metadata_comment text,
    dsoa9am integer
);


ALTER TABLE coorte.dso_a OWNER TO postgres;

--
-- Name: dsos_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE dsos_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    dsosa1 character varying(255),
    dsosa1_metadata character varying(255),
    dsosa1_metadata_comment text,
    dsosa2 timestamp without time zone,
    dsosa2_metadata character varying(255),
    dsosa2_metadata_comment text,
    dsosa3 timestamp without time zone,
    dsosa3_metadata character varying(255),
    dsosa3_metadata_comment text,
    dsosa4 timestamp without time zone,
    dsosa4_metadata character varying(255),
    dsosa4_metadata_comment text,
    dsosa5 timestamp without time zone,
    dsosa5_metadata character varying(255),
    dsosa5_metadata_comment text,
    dsosa6 timestamp without time zone,
    dsosa6_metadata character varying(255),
    dsosa6_metadata_comment text,
    dsosa7 timestamp without time zone,
    dsosa7_metadata character varying(255),
    dsosa7_metadata_comment text,
    dsosa8 timestamp without time zone,
    dsosa8_metadata character varying(255),
    dsosa8_metadata_comment text,
    dsosa9 timestamp without time zone,
    dsosa9_metadata character varying(255),
    dsosa9_metadata_comment text,
    dsosa1a integer,
    dsosa1a_metadata character varying(255),
    dsosa1a_metadata_comment text,
    dsosa2c integer,
    dsosa2c_metadata character varying(255),
    dsosa2c_metadata_comment text,
    dsosa3c integer,
    dsosa3c_metadata character varying(255),
    dsosa3c_metadata_comment text,
    dsosa4c integer,
    dsosa4c_metadata character varying(255),
    dsosa4c_metadata_comment text,
    dsosa5c integer,
    dsosa5c_metadata character varying(255),
    dsosa5c_metadata_comment text,
    dsosa6c integer,
    dsosa6c_metadata character varying(255),
    dsosa6c_metadata_comment text,
    dsosa7c integer,
    dsosa7c_metadata character varying(255),
    dsosa7c_metadata_comment text,
    dsosa8c integer,
    dsosa8c_metadata character varying(255),
    dsosa8c_metadata_comment text,
    dsosa9c integer,
    dsosa9c_metadata character varying(255),
    dsosa9c_metadata_comment text,
    dsosa2dih integer,
    dsosa2di_metadata character varying(255),
    dsosa2di_metadata_comment text,
    dsosa2dim integer,
    dsosa2dfh integer,
    dsosa2df_metadata character varying(255),
    dsosa2df_metadata_comment text,
    dsosa2dfm integer,
    dsosa3dih integer,
    dsosa3di_metadata character varying(255),
    dsosa3di_metadata_comment text,
    dsosa3dim integer,
    dsosa3dfh integer,
    dsosa3df_metadata character varying(255),
    dsosa3df_metadata_comment text,
    dsosa3dfm integer,
    dsosa4dih integer,
    dsosa4di_metadata character varying(255),
    dsosa4di_metadata_comment text,
    dsosa4dim integer,
    dsosa4dfh integer,
    dsosa4df_metadata character varying(255),
    dsosa4df_metadata_comment text,
    dsosa4dfm integer,
    dsosa5dih integer,
    dsosa5di_metadata character varying(255),
    dsosa5di_metadata_comment text,
    dsosa5dim integer,
    dsosa5dfh integer,
    dsosa5df_metadata character varying(255),
    dsosa5df_metadata_comment text,
    dsosa5dfm integer,
    dsosa6dih integer,
    dsosa6di_metadata character varying(255),
    dsosa6di_metadata_comment text,
    dsosa6dim integer,
    dsosa6dfh integer,
    dsosa6df_metadata character varying(255),
    dsosa6df_metadata_comment text,
    dsosa6dfm integer,
    dsosa7dih integer,
    dsosa7di_metadata character varying(255),
    dsosa7di_metadata_comment text,
    dsosa7dim integer,
    dsosa7dfh integer,
    dsosa7df_metadata character varying(255),
    dsosa7df_metadata_comment text,
    dsosa7dfm integer,
    dsosa8dih integer,
    dsosa8di_metadata character varying(255),
    dsosa8di_metadata_comment text,
    dsosa8dim integer,
    dsosa8dfh integer,
    dsosa8df_metadata character varying(255),
    dsosa8df_metadata_comment text,
    dsosa8dfm integer,
    dsosa9dih integer,
    dsosa9di_metadata character varying(255),
    dsosa9di_metadata_comment text,
    dsosa9dim integer,
    dsosa9dfh integer,
    dsosa9df_metadata character varying(255),
    dsosa9df_metadata_comment text,
    dsosa9dfm integer,
    dsosa2eih integer,
    dsosa2ei_metadata character varying(255),
    dsosa2ei_metadata_comment text,
    dsosa2eim integer,
    dsosa2efh integer,
    dsosa2ef_metadata character varying(255),
    dsosa2ef_metadata_comment text,
    dsosa2efm integer,
    dsosa3eih integer,
    dsosa3ei_metadata character varying(255),
    dsosa3ei_metadata_comment text,
    dsosa3eim integer,
    dsosa3efh integer,
    dsosa3ef_metadata character varying(255),
    dsosa3ef_metadata_comment text,
    dsosa3efm integer,
    dsosa4eih integer,
    dsosa4ei_metadata character varying(255),
    dsosa4ei_metadata_comment text,
    dsosa4eim integer,
    dsosa4efh integer,
    dsosa4ef_metadata character varying(255),
    dsosa4ef_metadata_comment text,
    dsosa4efm integer,
    dsosa5eih integer,
    dsosa5ei_metadata character varying(255),
    dsosa5ei_metadata_comment text,
    dsosa5eim integer,
    dsosa5efh integer,
    dsosa5ef_metadata character varying(255),
    dsosa5ef_metadata_comment text,
    dsosa5efm integer,
    dsosa6eih integer,
    dsosa6ei_metadata character varying(255),
    dsosa6ei_metadata_comment text,
    dsosa6eim integer,
    dsosa6efh integer,
    dsosa6ef_metadata character varying(255),
    dsosa6ef_metadata_comment text,
    dsosa6efm integer,
    dsosa7eih integer,
    dsosa7ei_metadata character varying(255),
    dsosa7ei_metadata_comment text,
    dsosa7eim integer,
    dsosa7efh integer,
    dsosa7ef_metadata character varying(255),
    dsosa7ef_metadata_comment text,
    dsosa7efm integer,
    dsosa8eih integer,
    dsosa8ei_metadata character varying(255),
    dsosa8ei_metadata_comment text,
    dsosa8eim integer,
    dsosa8efh integer,
    dsosa8ef_metadata character varying(255),
    dsosa8ef_metadata_comment text,
    dsosa8efm integer,
    dsosa9eih integer,
    dsosa9ei_metadata character varying(255),
    dsosa9ei_metadata_comment text,
    dsosa9eim integer,
    dsosa9efh integer,
    dsosa9ef_metadata character varying(255),
    dsosa9ef_metadata_comment text,
    dsosa9efm integer,
    dsosa2fih integer,
    dsosa2fi_metadata character varying(255),
    dsosa2fi_metadata_comment text,
    dsosa2fim integer,
    dsosa2ffh integer,
    dsosa2ff_metadata character varying(255),
    dsosa2ff_metadata_comment text,
    dsosa2ffm integer,
    dsosa3fih integer,
    dsosa3fi_metadata character varying(255),
    dsosa3fi_metadata_comment text,
    dsosa3fim integer,
    dsosa3ffh integer,
    dsosa3ff_metadata character varying(255),
    dsosa3ff_metadata_comment text,
    dsosa3ffm integer,
    dsosa4fih integer,
    dsosa4fi_metadata character varying(255),
    dsosa4fi_metadata_comment text,
    dsosa4fim integer,
    dsosa4ffh integer,
    dsosa4ff_metadata character varying(255),
    dsosa4ff_metadata_comment text,
    dsosa4ffm integer,
    dsosa5fih integer,
    dsosa5fi_metadata character varying(255),
    dsosa5fi_metadata_comment text,
    dsosa5fim integer,
    dsosa5ffh integer,
    dsosa5ff_metadata character varying(255),
    dsosa5ff_metadata_comment text,
    dsosa5ffm integer,
    dsosa6fih integer,
    dsosa6fi_metadata character varying(255),
    dsosa6fi_metadata_comment text,
    dsosa6fim integer,
    dsosa6ffh integer,
    dsosa6ff_metadata character varying(255),
    dsosa6ff_metadata_comment text,
    dsosa6ffm integer,
    dsosa7fih integer,
    dsosa7fi_metadata character varying(255),
    dsosa7fi_metadata_comment text,
    dsosa7fim integer,
    dsosa7ffh integer,
    dsosa7ff_metadata character varying(255),
    dsosa7ff_metadata_comment text,
    dsosa7ffm integer,
    dsosa8fih integer,
    dsosa8fi_metadata character varying(255),
    dsosa8fi_metadata_comment text,
    dsosa8fim integer,
    dsosa8ffh integer,
    dsosa8ff_metadata character varying(255),
    dsosa8ff_metadata_comment text,
    dsosa8ffm integer,
    dsosa9fih integer,
    dsosa9fi_metadata character varying(255),
    dsosa9fi_metadata_comment text,
    dsosa9fim integer,
    dsosa9ffh integer,
    dsosa9ff_metadata character varying(255),
    dsosa9ff_metadata_comment text,
    dsosa9ffm integer,
    dsosa2gih integer,
    dsosa2gi_metadata character varying(255),
    dsosa2gi_metadata_comment text,
    dsosa2gim integer,
    dsosa2gfh integer,
    dsosa2gf_metadata character varying(255),
    dsosa2gf_metadata_comment text,
    dsosa2gfm integer,
    dsosa3gih integer,
    dsosa3gi_metadata character varying(255),
    dsosa3gi_metadata_comment text,
    dsosa3gim integer,
    dsosa3gfh integer,
    dsosa3gf_metadata character varying(255),
    dsosa3gf_metadata_comment text,
    dsosa3gfm integer,
    dsosa4gih integer,
    dsosa4gi_metadata character varying(255),
    dsosa4gi_metadata_comment text,
    dsosa4gim integer,
    dsosa4gfh integer,
    dsosa4gf_metadata character varying(255),
    dsosa4gf_metadata_comment text,
    dsosa4gfm integer,
    dsosa5gih integer,
    dsosa5gi_metadata character varying(255),
    dsosa5gi_metadata_comment text,
    dsosa5gim integer,
    dsosa5gfh integer,
    dsosa5gf_metadata character varying(255),
    dsosa5gf_metadata_comment text,
    dsosa5gfm integer,
    dsosa6gih integer,
    dsosa6gi_metadata character varying(255),
    dsosa6gi_metadata_comment text,
    dsosa6gim integer,
    dsosa6gfh integer,
    dsosa6gf_metadata character varying(255),
    dsosa6gf_metadata_comment text,
    dsosa6gfm integer,
    dsosa7gih integer,
    dsosa7gi_metadata character varying(255),
    dsosa7gi_metadata_comment text,
    dsosa7gim integer,
    dsosa7gfh integer,
    dsosa7gf_metadata character varying(255),
    dsosa7gf_metadata_comment text,
    dsosa7gfm integer,
    dsosa8gih integer,
    dsosa8gi_metadata character varying(255),
    dsosa8gi_metadata_comment text,
    dsosa8gim integer,
    dsosa8gfh integer,
    dsosa8gf_metadata character varying(255),
    dsosa8gf_metadata_comment text,
    dsosa8gfm integer,
    dsosa9gih integer,
    dsosa9gi_metadata character varying(255),
    dsosa9gi_metadata_comment text,
    dsosa9gim integer,
    dsosa9gfh integer,
    dsosa9gf_metadata character varying(255),
    dsosa9gf_metadata_comment text,
    dsosa9gfm integer,
    dsosa2hih integer,
    dsosa2hi_metadata character varying(255),
    dsosa2hi_metadata_comment text,
    dsosa2him integer,
    dsosa2hfh integer,
    dsosa2hf_metadata character varying(255),
    dsosa2hf_metadata_comment text,
    dsosa2hfm integer,
    dsosa3hih integer,
    dsosa3hi_metadata character varying(255),
    dsosa3hi_metadata_comment text,
    dsosa3him integer,
    dsosa3hfh integer,
    dsosa3hf_metadata character varying(255),
    dsosa3hf_metadata_comment text,
    dsosa3hfm integer,
    dsosa4hih integer,
    dsosa4hi_metadata character varying(255),
    dsosa4hi_metadata_comment text,
    dsosa4him integer,
    dsosa4hfh integer,
    dsosa4hf_metadata character varying(255),
    dsosa4hf_metadata_comment text,
    dsosa4hfm integer,
    dsosa5hih integer,
    dsosa5hi_metadata character varying(255),
    dsosa5hi_metadata_comment text,
    dsosa5him integer,
    dsosa5hfh integer,
    dsosa5hf_metadata character varying(255),
    dsosa5hf_metadata_comment text,
    dsosa5hfm integer,
    dsosa6hih integer,
    dsosa6hi_metadata character varying(255),
    dsosa6hi_metadata_comment text,
    dsosa6him integer,
    dsosa6hfh integer,
    dsosa6hf_metadata character varying(255),
    dsosa6hf_metadata_comment text,
    dsosa6hfm integer,
    dsosa7hih integer,
    dsosa7hi_metadata character varying(255),
    dsosa7hi_metadata_comment text,
    dsosa7him integer,
    dsosa7hfh integer,
    dsosa7hf_metadata character varying(255),
    dsosa7hf_metadata_comment text,
    dsosa7hfm integer,
    dsosa8hih integer,
    dsosa8hi_metadata character varying(255),
    dsosa8hi_metadata_comment text,
    dsosa8him integer,
    dsosa8hfh integer,
    dsosa8hf_metadata character varying(255),
    dsosa8hf_metadata_comment text,
    dsosa8hfm integer,
    dsosa9hih integer,
    dsosa9hi_metadata character varying(255),
    dsosa9hi_metadata_comment text,
    dsosa9him integer,
    dsosa9hfh integer,
    dsosa9hf_metadata character varying(255),
    dsosa9hf_metadata_comment text,
    dsosa9hfm integer,
    dsosa2iih integer,
    dsosa2ii_metadata character varying(255),
    dsosa2ii_metadata_comment text,
    dsosa2iim integer,
    dsosa2ifh integer,
    dsosa2if_metadata character varying(255),
    dsosa2if_metadata_comment text,
    dsosa2ifm integer,
    dsosa3iih integer,
    dsosa3ii_metadata character varying(255),
    dsosa3ii_metadata_comment text,
    dsosa3iim integer,
    dsosa3ifh integer,
    dsosa3if_metadata character varying(255),
    dsosa3if_metadata_comment text,
    dsosa3ifm integer,
    dsosa4iih integer,
    dsosa4ii_metadata character varying(255),
    dsosa4ii_metadata_comment text,
    dsosa4iim integer,
    dsosa4ifh integer,
    dsosa4if_metadata character varying(255),
    dsosa4if_metadata_comment text,
    dsosa4ifm integer,
    dsosa5iih integer,
    dsosa5ii_metadata character varying(255),
    dsosa5ii_metadata_comment text,
    dsosa5iim integer,
    dsosa5ifh integer,
    dsosa5if_metadata character varying(255),
    dsosa5if_metadata_comment text,
    dsosa5ifm integer,
    dsosa6iih integer,
    dsosa6ii_metadata character varying(255),
    dsosa6ii_metadata_comment text,
    dsosa6iim integer,
    dsosa6ifh integer,
    dsosa6if_metadata character varying(255),
    dsosa6if_metadata_comment text,
    dsosa6ifm integer,
    dsosa7iih integer,
    dsosa7ii_metadata character varying(255),
    dsosa7ii_metadata_comment text,
    dsosa7iim integer,
    dsosa7ifh integer,
    dsosa7if_metadata character varying(255),
    dsosa7if_metadata_comment text,
    dsosa7ifm integer,
    dsosa8iih integer,
    dsosa8ii_metadata character varying(255),
    dsosa8ii_metadata_comment text,
    dsosa8iim integer,
    dsosa8ifh integer,
    dsosa8if_metadata character varying(255),
    dsosa8if_metadata_comment text,
    dsosa8ifm integer,
    dsosa9iih integer,
    dsosa9ii_metadata character varying(255),
    dsosa9ii_metadata_comment text,
    dsosa9iim integer,
    dsosa9ifh integer,
    dsosa9if_metadata character varying(255),
    dsosa9if_metadata_comment text,
    dsosa9ifm integer,
    dsosa2jih integer,
    dsosa2ji_metadata character varying(255),
    dsosa2ji_metadata_comment text,
    dsosa2jim integer,
    dsosa2jfh integer,
    dsosa2jf_metadata character varying(255),
    dsosa2jf_metadata_comment text,
    dsosa2jfm integer,
    dsosa3jih integer,
    dsosa3ji_metadata character varying(255),
    dsosa3ji_metadata_comment text,
    dsosa3jim integer,
    dsosa3jfh integer,
    dsosa3jf_metadata character varying(255),
    dsosa3jf_metadata_comment text,
    dsosa3jfm integer,
    dsosa4jih integer,
    dsosa4ji_metadata character varying(255),
    dsosa4ji_metadata_comment text,
    dsosa4jim integer,
    dsosa4jfh integer,
    dsosa4jf_metadata character varying(255),
    dsosa4jf_metadata_comment text,
    dsosa4jfm integer,
    dsosa5jih integer,
    dsosa5ji_metadata character varying(255),
    dsosa5ji_metadata_comment text,
    dsosa5jim integer,
    dsosa5jfh integer,
    dsosa5jf_metadata character varying(255),
    dsosa5jf_metadata_comment text,
    dsosa5jfm integer,
    dsosa6jih integer,
    dsosa6ji_metadata character varying(255),
    dsosa6ji_metadata_comment text,
    dsosa6jim integer,
    dsosa6jfh integer,
    dsosa6jf_metadata character varying(255),
    dsosa6jf_metadata_comment text,
    dsosa6jfm integer,
    dsosa7jih integer,
    dsosa7ji_metadata character varying(255),
    dsosa7ji_metadata_comment text,
    dsosa7jim integer,
    dsosa7jfh integer,
    dsosa7jf_metadata character varying(255),
    dsosa7jf_metadata_comment text,
    dsosa7jfm integer,
    dsosa8jih integer,
    dsosa8ji_metadata character varying(255),
    dsosa8ji_metadata_comment text,
    dsosa8jim integer,
    dsosa8jfh integer,
    dsosa8jf_metadata character varying(255),
    dsosa8jf_metadata_comment text,
    dsosa8jfm integer,
    dsosa9jih integer,
    dsosa9ji_metadata character varying(255),
    dsosa9ji_metadata_comment text,
    dsosa9jim integer,
    dsosa9jfh integer,
    dsosa9jf_metadata character varying(255),
    dsosa9jf_metadata_comment text,
    dsosa9jfm integer,
    dsosa2kih integer,
    dsosa2ki_metadata character varying(255),
    dsosa2ki_metadata_comment text,
    dsosa2kim integer,
    dsosa2kfh integer,
    dsosa2kf_metadata character varying(255),
    dsosa2kf_metadata_comment text,
    dsosa2kfm integer,
    dsosa3kih integer,
    dsosa3ki_metadata character varying(255),
    dsosa3ki_metadata_comment text,
    dsosa3kim integer,
    dsosa3kfh integer,
    dsosa3kf_metadata character varying(255),
    dsosa3kf_metadata_comment text,
    dsosa3kfm integer,
    dsosa4kih integer,
    dsosa4ki_metadata character varying(255),
    dsosa4ki_metadata_comment text,
    dsosa4kim integer,
    dsosa4kfh integer,
    dsosa4kf_metadata character varying(255),
    dsosa4kf_metadata_comment text,
    dsosa4kfm integer,
    dsosa5kih integer,
    dsosa5ki_metadata character varying(255),
    dsosa5ki_metadata_comment text,
    dsosa5kim integer,
    dsosa5kfh integer,
    dsosa5kf_metadata character varying(255),
    dsosa5kf_metadata_comment text,
    dsosa5kfm integer,
    dsosa6kih integer,
    dsosa6ki_metadata character varying(255),
    dsosa6ki_metadata_comment text,
    dsosa6kim integer,
    dsosa6kfh integer,
    dsosa6kf_metadata character varying(255),
    dsosa6kf_metadata_comment text,
    dsosa6kfm integer,
    dsosa7kih integer,
    dsosa7ki_metadata character varying(255),
    dsosa7ki_metadata_comment text,
    dsosa7kim integer,
    dsosa7kfh integer,
    dsosa7kf_metadata character varying(255),
    dsosa7kf_metadata_comment text,
    dsosa7kfm integer,
    dsosa8kih integer,
    dsosa8ki_metadata character varying(255),
    dsosa8ki_metadata_comment text,
    dsosa8kim integer,
    dsosa8kfh integer,
    dsosa8kf_metadata character varying(255),
    dsosa8kf_metadata_comment text,
    dsosa8kfm integer,
    dsosa9kih integer,
    dsosa9ki_metadata character varying(255),
    dsosa9ki_metadata_comment text,
    dsosa9kim integer,
    dsosa9kfh integer,
    dsosa9kf_metadata character varying(255),
    dsosa9kf_metadata_comment text,
    dsosa9kfm integer,
    dsosa2b character varying(255),
    dsosa2b_metadata character varying(255),
    dsosa2b_metadata_comment text,
    dsosa3b character varying(255),
    dsosa3b_metadata character varying(255),
    dsosa3b_metadata_comment text,
    dsosa4b character varying(255),
    dsosa4b_metadata character varying(255),
    dsosa4b_metadata_comment text,
    dsosa5b character varying(255),
    dsosa5b_metadata character varying(255),
    dsosa5b_metadata_comment text,
    dsosa6b character varying(255),
    dsosa6b_metadata character varying(255),
    dsosa6b_metadata_comment text,
    dsosa7b character varying(255),
    dsosa7b_metadata character varying(255),
    dsosa7b_metadata_comment text,
    dsosa8b character varying(255),
    dsosa8b_metadata character varying(255),
    dsosa8b_metadata_comment text,
    dsosa9b character varying(255),
    dsosa9b_metadata character varying(255),
    dsosa9b_metadata_comment text,
    dsosa2lh integer,
    dsosa2l_metadata character varying(255),
    dsosa2l_metadata_comment text,
    dsosa2lm integer,
    dsosa3lh integer,
    dsosa3l_metadata character varying(255),
    dsosa3l_metadata_comment text,
    dsosa3lm integer,
    dsosa4lh integer,
    dsosa4l_metadata character varying(255),
    dsosa4l_metadata_comment text,
    dsosa4lm integer,
    dsosa5lh integer,
    dsosa5l_metadata character varying(255),
    dsosa5l_metadata_comment text,
    dsosa5lm integer,
    dsosa6lh integer,
    dsosa6l_metadata character varying(255),
    dsosa6l_metadata_comment text,
    dsosa6lm integer,
    dsosa7lh integer,
    dsosa7l_metadata character varying(255),
    dsosa7l_metadata_comment text,
    dsosa7lm integer,
    dsosa8lh integer,
    dsosa8l_metadata character varying(255),
    dsosa8l_metadata_comment text,
    dsosa8lm integer,
    dsosa9lh integer,
    dsosa9l_metadata character varying(255),
    dsosa9l_metadata_comment text,
    dsosa9lm integer,
    dsosa2ah integer,
    dsosa2a_metadata character varying(255),
    dsosa2a_metadata_comment text,
    dsosa2am integer,
    dsosa3ah integer,
    dsosa3a_metadata character varying(255),
    dsosa3a_metadata_comment text,
    dsosa3am integer,
    dsosa4ah integer,
    dsosa4a_metadata character varying(255),
    dsosa4a_metadata_comment text,
    dsosa4am integer,
    dsosa5ah integer,
    dsosa5a_metadata character varying(255),
    dsosa5a_metadata_comment text,
    dsosa5am integer,
    dsosa6ah integer,
    dsosa6a_metadata character varying(255),
    dsosa6a_metadata_comment text,
    dsosa6am integer,
    dsosa7ah integer,
    dsosa7a_metadata character varying(255),
    dsosa7a_metadata_comment text,
    dsosa7am integer,
    dsosa8ah integer,
    dsosa8a_metadata character varying(255),
    dsosa8a_metadata_comment text,
    dsosa8am integer,
    dsosa9ah integer,
    dsosa9a_metadata character varying(255),
    dsosa9a_metadata_comment text,
    dsosa9am integer
);


ALTER TABLE coorte.dsos_a OWNER TO postgres;

--
-- Name: edg_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE edg_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    edga10 character varying(255),
    edga10_metadata character varying(255),
    edga10_metadata_comment text,
    edga5 character varying(255),
    edga5_metadata character varying(255),
    edga5_metadata_comment text,
    edga2 character varying(255),
    edga2_metadata character varying(255),
    edga2_metadata_comment text,
    edga3 character varying(255),
    edga3_metadata character varying(255),
    edga3_metadata_comment text,
    edga1 character varying(255),
    edga1_metadata character varying(255),
    edga1_metadata_comment text,
    edga6 character varying(255),
    edga6_metadata character varying(255),
    edga6_metadata_comment text,
    edga9 character varying(255),
    edga9_metadata character varying(255),
    edga9_metadata_comment text,
    edga7 character varying(255),
    edga7_metadata character varying(255),
    edga7_metadata_comment text,
    edga8 character varying(255),
    edga8_metadata character varying(255),
    edga8_metadata_comment text,
    edga4 character varying(255),
    edga4_metadata character varying(255),
    edga4_metadata_comment text
);


ALTER TABLE coorte.edg_a OWNER TO postgres;

--
-- Name: edgs_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE edgs_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    edgsa10 character varying(255),
    edgsa10_metadata character varying(255),
    edgsa10_metadata_comment text,
    edgsa5 character varying(255),
    edgsa5_metadata character varying(255),
    edgsa5_metadata_comment text,
    edgsa2 character varying(255),
    edgsa2_metadata character varying(255),
    edgsa2_metadata_comment text,
    edgsa3 character varying(255),
    edgsa3_metadata character varying(255),
    edgsa3_metadata_comment text,
    edgsa1 character varying(255),
    edgsa1_metadata character varying(255),
    edgsa1_metadata_comment text,
    edgsa6 character varying(255),
    edgsa6_metadata character varying(255),
    edgsa6_metadata_comment text,
    edgsa9 character varying(255),
    edgsa9_metadata character varying(255),
    edgsa9_metadata_comment text,
    edgsa7 character varying(255),
    edgsa7_metadata character varying(255),
    edgsa7_metadata_comment text,
    edgsa8 character varying(255),
    edgsa8_metadata character varying(255),
    edgsa8_metadata_comment text,
    edgsa4 character varying(255),
    edgsa4_metadata character varying(255),
    edgsa4_metadata_comment text
);


ALTER TABLE coorte.edgs_a OWNER TO postgres;

--
-- Name: elc_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE elc_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    elca1 character varying(255),
    elca1_metadata character varying(255),
    elca1_metadata_comment text,
    elca4 character varying(255),
    elca4_metadata character varying(255),
    elca4_metadata_comment text,
    elca3 character varying(255),
    elca3_metadata character varying(255),
    elca3_metadata_comment text,
    elca4a character varying(255),
    elca4a_metadata character varying(255),
    elca4a_metadata_comment text,
    elca2 integer,
    elca2_metadata character varying(255),
    elca2_metadata_comment text
);


ALTER TABLE coorte.elc_a OWNER TO postgres;

--
-- Name: enc_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE enc_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    enca2b integer,
    enca2b_metadata character varying(255),
    enca2b_metadata_comment text,
    enca11 boolean,
    enca11_metadata character varying(255),
    enca11_metadata_comment text,
    enca2a integer,
    enca2a_metadata character varying(255),
    enca2a_metadata_comment text,
    enca1 text,
    enca1_metadata character varying(255),
    enca1_metadata_comment text
);


ALTER TABLE coorte.enc_a OWNER TO postgres;

--
-- Name: exas_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE exas_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    exasa4a timestamp without time zone,
    exasa4a_metadata character varying(255),
    exasa4a_metadata_comment text,
    exasa1a timestamp without time zone,
    exasa1a_metadata character varying(255),
    exasa1a_metadata_comment text,
    exasa3a timestamp without time zone,
    exasa3a_metadata character varying(255),
    exasa3a_metadata_comment text,
    exasa5a timestamp without time zone,
    exasa5a_metadata character varying(255),
    exasa5a_metadata_comment text,
    exasa2a timestamp without time zone,
    exasa2a_metadata character varying(255),
    exasa2a_metadata_comment text,
    exasa4b text,
    exasa4b_metadata character varying(255),
    exasa4b_metadata_comment text,
    exasa1b text,
    exasa1b_metadata character varying(255),
    exasa1b_metadata_comment text,
    exasa3b text,
    exasa3b_metadata character varying(255),
    exasa3b_metadata_comment text,
    exasa5b text,
    exasa5b_metadata character varying(255),
    exasa5b_metadata_comment text,
    exasa2b text,
    exasa2b_metadata character varying(255),
    exasa2b_metadata_comment text,
    exasa4c integer,
    exasa4c_metadata character varying(255),
    exasa4c_metadata_comment text,
    exasa1c real,
    exasa1c_metadata character varying(255),
    exasa1c_metadata_comment text,
    exasa3c real,
    exasa3c_metadata character varying(255),
    exasa3c_metadata_comment text,
    exasa5c integer,
    exasa5c_metadata character varying(255),
    exasa5c_metadata_comment text,
    exasa2c real,
    exasa2c_metadata character varying(255),
    exasa2c_metadata_comment text,
    exasa4 boolean,
    exasa4_metadata character varying(255),
    exasa4_metadata_comment text,
    exasa1 boolean,
    exasa1_metadata character varying(255),
    exasa1_metadata_comment text,
    exasa3 boolean,
    exasa3_metadata character varying(255),
    exasa3_metadata_comment text,
    exasa5 boolean,
    exasa5_metadata character varying(255),
    exasa5_metadata_comment text,
    exasa2 boolean,
    exasa2_metadata character varying(255),
    exasa2_metadata_comment text
);


ALTER TABLE coorte.exas_a OWNER TO postgres;

--
-- Name: exp_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE exp_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    expa4c real,
    expa4c_metadata character varying(255),
    expa4c_metadata_comment text,
    expa1c real,
    expa1c_metadata character varying(255),
    expa1c_metadata_comment text,
    expa3c real,
    expa3c_metadata character varying(255),
    expa3c_metadata_comment text,
    expa5c real,
    expa5c_metadata character varying(255),
    expa5c_metadata_comment text,
    expa2c real,
    expa2c_metadata character varying(255),
    expa2c_metadata_comment text,
    expa1a timestamp without time zone,
    expa4a timestamp without time zone,
    expa4a_metadata character varying(255),
    expa4a_metadata_comment text,
    expa1a_metadata character varying(255),
    expa1a_metadata_comment text,
    expa3a timestamp without time zone,
    expa3a_metadata character varying(255),
    expa3a_metadata_comment text,
    expa5a timestamp without time zone,
    expa5a_metadata character varying(255),
    expa5a_metadata_comment text,
    expa2a timestamp without time zone,
    expa2a_metadata character varying(255),
    expa2a_metadata_comment text,
    expa4 boolean,
    expa4_metadata character varying(255),
    expa4_metadata_comment text,
    expa1 boolean,
    expa1_metadata character varying(255),
    expa1_metadata_comment text,
    expa1b text,
    expa4b text,
    expa4b_metadata character varying(255),
    expa4b_metadata_comment text,
    expa1b_metadata character varying(255),
    expa1b_metadata_comment text,
    expa3b text,
    expa3b_metadata character varying(255),
    expa3b_metadata_comment text,
    expa5b text,
    expa5b_metadata character varying(255),
    expa5b_metadata_comment text,
    expa2b text,
    expa2b_metadata character varying(255),
    expa2b_metadata_comment text,
    expa3 boolean,
    expa3_metadata character varying(255),
    expa3_metadata_comment text,
    expa5 boolean,
    expa5_metadata character varying(255),
    expa5_metadata_comment text,
    expa2 boolean,
    expa2_metadata character varying(255),
    expa2_metadata_comment text
);


ALTER TABLE coorte.exp_a OWNER TO postgres;

--
-- Name: fci_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE fci_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    fcia39 character varying(255),
    fcia39_metadata character varying(255),
    fcia39_metadata_comment text,
    fcia40 character varying(255),
    fcia40_metadata character varying(255),
    fcia40_metadata_comment text,
    fcia31 character varying(255),
    fcia31_metadata character varying(255),
    fcia31_metadata_comment text,
    fcia22 character varying(255),
    fcia22_metadata character varying(255),
    fcia22_metadata_comment text,
    fcia5 character varying(255),
    fcia5_metadata character varying(255),
    fcia5_metadata_comment text,
    fcia26 character varying(255),
    fcia26_metadata character varying(255),
    fcia26_metadata_comment text,
    fcia25 character varying(255),
    fcia25_metadata character varying(255),
    fcia25_metadata_comment text,
    fcia12 character varying(255),
    fcia12_metadata character varying(255),
    fcia12_metadata_comment text,
    fcia21 character varying(255),
    fcia21_metadata character varying(255),
    fcia21_metadata_comment text,
    fcia35 character varying(255),
    fcia19 character varying(255),
    fcia19_metadata character varying(255),
    fcia19_metadata_comment text,
    fcia35_metadata character varying(255),
    fcia35_metadata_comment text,
    fcia17 character varying(255),
    fcia17_metadata character varying(255),
    fcia17_metadata_comment text,
    fcia16 character varying(255),
    fcia16_metadata character varying(255),
    fcia16_metadata_comment text,
    fcia18 character varying(255),
    fcia18_metadata character varying(255),
    fcia18_metadata_comment text,
    fcia8 character varying(255),
    fcia8_metadata character varying(255),
    fcia8_metadata_comment text,
    fcia28 character varying(255),
    fcia28_metadata character varying(255),
    fcia28_metadata_comment text,
    fcia24 character varying(255),
    fcia24_metadata character varying(255),
    fcia24_metadata_comment text,
    fcia2 character varying(255),
    fcia2_metadata character varying(255),
    fcia2_metadata_comment text,
    fcia15 character varying(255),
    fcia15_metadata character varying(255),
    fcia15_metadata_comment text,
    fcia27 character varying(255),
    fcia27_metadata character varying(255),
    fcia27_metadata_comment text,
    fcia13 character varying(255),
    fcia13_metadata character varying(255),
    fcia13_metadata_comment text,
    fcia32 character varying(255),
    fcia32_metadata character varying(255),
    fcia32_metadata_comment text,
    fcia29 character varying(255),
    fcia29_metadata character varying(255),
    fcia29_metadata_comment text,
    fcia14 character varying(255),
    fcia14_metadata character varying(255),
    fcia14_metadata_comment text,
    fcia38 character varying(255),
    fcia38_metadata character varying(255),
    fcia38_metadata_comment text,
    fcia36 character varying(255),
    fcia36_metadata character varying(255),
    fcia36_metadata_comment text,
    fcia3 character varying(255),
    fcia3_metadata character varying(255),
    fcia3_metadata_comment text,
    fcia34 character varying(255),
    fcia34_metadata character varying(255),
    fcia34_metadata_comment text,
    fcia10 character varying(255),
    fcia10_metadata character varying(255),
    fcia10_metadata_comment text,
    fcia4 character varying(255),
    fcia4_metadata character varying(255),
    fcia4_metadata_comment text,
    fcia6 character varying(255),
    fcia6_metadata character varying(255),
    fcia6_metadata_comment text,
    fcia30 character varying(255),
    fcia30_metadata character varying(255),
    fcia30_metadata_comment text,
    fcia20 character varying(255),
    fcia20_metadata character varying(255),
    fcia20_metadata_comment text,
    fcia23 character varying(255),
    fcia23_metadata character varying(255),
    fcia23_metadata_comment text,
    fcia9 character varying(255),
    fcia9_metadata character varying(255),
    fcia9_metadata_comment text,
    fcia37 character varying(255),
    fcia37_metadata character varying(255),
    fcia37_metadata_comment text,
    fcia7 character varying(255),
    fcia7_metadata character varying(255),
    fcia7_metadata_comment text,
    fcia33 character varying(255),
    fcia33_metadata character varying(255),
    fcia33_metadata_comment text,
    fcia11 character varying(255),
    fcia11_metadata character varying(255),
    fcia11_metadata_comment text,
    fcia31a character varying(255),
    fcia31a_metadata character varying(255),
    fcia31a_metadata_comment text,
    fcia22a character varying(255),
    fcia22a_metadata character varying(255),
    fcia22a_metadata_comment text,
    fcia5a character varying(255),
    fcia5a_metadata character varying(255),
    fcia5a_metadata_comment text,
    fcia26a character varying(255),
    fcia26a_metadata character varying(255),
    fcia26a_metadata_comment text,
    fcia25a character varying(255),
    fcia25a_metadata character varying(255),
    fcia25a_metadata_comment text,
    fcia12a character varying(255),
    fcia12a_metadata character varying(255),
    fcia12a_metadata_comment text,
    fcia21a character varying(255),
    fcia21a_metadata character varying(255),
    fcia21a_metadata_comment text,
    fcia35a character varying(255),
    fcia19a character varying(255),
    fcia19a_metadata character varying(255),
    fcia19a_metadata_comment text,
    fcia35a_metadata character varying(255),
    fcia35a_metadata_comment text,
    fcia17a character varying(255),
    fcia17a_metadata character varying(255),
    fcia17a_metadata_comment text,
    fcia16a character varying(255),
    fcia16a_metadata character varying(255),
    fcia16a_metadata_comment text,
    fcia18a character varying(255),
    fcia18a_metadata character varying(255),
    fcia18a_metadata_comment text,
    fcia8a character varying(255),
    fcia8a_metadata character varying(255),
    fcia8a_metadata_comment text,
    fcia28a character varying(255),
    fcia28a_metadata character varying(255),
    fcia28a_metadata_comment text,
    fcia24a character varying(255),
    fcia24a_metadata character varying(255),
    fcia24a_metadata_comment text,
    fcia15a character varying(255),
    fcia15a_metadata character varying(255),
    fcia15a_metadata_comment text,
    fcia27a character varying(255),
    fcia27a_metadata character varying(255),
    fcia27a_metadata_comment text,
    fcia13a character varying(255),
    fcia13a_metadata character varying(255),
    fcia13a_metadata_comment text,
    fcia32a character varying(255),
    fcia32a_metadata character varying(255),
    fcia32a_metadata_comment text,
    fcia29a character varying(255),
    fcia29a_metadata character varying(255),
    fcia29a_metadata_comment text,
    fcia14a character varying(255),
    fcia14a_metadata character varying(255),
    fcia14a_metadata_comment text,
    fcia36a character varying(255),
    fcia36a_metadata character varying(255),
    fcia36a_metadata_comment text,
    fcia3a character varying(255),
    fcia3a_metadata character varying(255),
    fcia3a_metadata_comment text,
    fcia34a character varying(255),
    fcia34a_metadata character varying(255),
    fcia34a_metadata_comment text,
    fcia6a character varying(255),
    fcia6a_metadata character varying(255),
    fcia6a_metadata_comment text,
    fcia11a character varying(255),
    fcia11a_metadata character varying(255),
    fcia11a_metadata_comment text,
    fcia30a character varying(255),
    fcia30a_metadata character varying(255),
    fcia30a_metadata_comment text,
    fcia20a character varying(255),
    fcia20a_metadata character varying(255),
    fcia20a_metadata_comment text,
    fcia23a character varying(255),
    fcia23a_metadata character varying(255),
    fcia23a_metadata_comment text,
    fcia9a character varying(255),
    fcia9a_metadata character varying(255),
    fcia9a_metadata_comment text,
    fcia37a character varying(255),
    fcia37a_metadata character varying(255),
    fcia37a_metadata_comment text,
    fcia10a character varying(255),
    fcia10a_metadata character varying(255),
    fcia10a_metadata_comment text,
    fcia7a character varying(255),
    fcia7a_metadata character varying(255),
    fcia7a_metadata_comment text,
    fcia33a character varying(255),
    fcia33a_metadata character varying(255),
    fcia33a_metadata_comment text,
    fcia38b character varying(255),
    fcia38b_metadata character varying(255),
    fcia38b_metadata_comment text,
    fcia1b integer,
    fcia1b_metadata character varying(255),
    fcia1b_metadata_comment text,
    fcia1a text,
    fcia1a_metadata character varying(255),
    fcia1a_metadata_comment text,
    fcia39a text,
    fcia39a_metadata character varying(255),
    fcia39a_metadata_comment text,
    fcia38a text,
    fcia38a_metadata character varying(255),
    fcia38a_metadata_comment text,
    fcia1 character varying(255),
    fcia1_metadata character varying(255),
    fcia1_metadata_comment text,
    fcia4a character varying(255),
    fcia4a_metadata character varying(255),
    fcia4a_metadata_comment text,
    fcia2a character varying(255),
    fcia2a_metadata character varying(255),
    fcia2a_metadata_comment text,
    fcia1c character varying(255),
    fcia1c_metadata character varying(255),
    fcia1c_metadata_comment text,
    fcia40a text,
    fcia40a_metadata character varying(255),
    fcia40a_metadata_comment text
);


ALTER TABLE coorte.fci_a OWNER TO postgres;

--
-- Name: for_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE for_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    fora7 boolean,
    fora7_metadata character varying(255),
    fora7_metadata_comment text,
    fora7b boolean,
    fora7b_metadata character varying(255),
    fora7b_metadata_comment text,
    fora1 character varying(255),
    fora1_metadata character varying(255),
    fora1_metadata_comment text,
    fora1a character varying(255),
    fora1a_metadata character varying(255),
    fora1a_metadata_comment text,
    fora3d integer,
    fora3d_metadata character varying(255),
    fora3d_metadata_comment text,
    fora3e integer,
    fora3e_metadata character varying(255),
    fora3e_metadata_comment text,
    fora3f integer,
    fora3f_metadata character varying(255),
    fora3f_metadata_comment text,
    fora6b boolean,
    fora6b_metadata character varying(255),
    fora6b_metadata_comment text,
    fora6a boolean,
    fora6a_metadata character varying(255),
    fora6a_metadata_comment text,
    fora7c boolean,
    fora6c boolean,
    fora6c_metadata character varying(255),
    fora6c_metadata_comment text,
    fora7c_metadata character varying(255),
    fora7c_metadata_comment text,
    fora6 boolean,
    fora6_metadata character varying(255),
    fora6_metadata_comment text,
    fora3a integer,
    fora3a_metadata character varying(255),
    fora3a_metadata_comment text,
    fora3b integer,
    fora3b_metadata character varying(255),
    fora3b_metadata_comment text,
    fora3c integer,
    fora3c_metadata character varying(255),
    fora3c_metadata_comment text,
    fora7a boolean,
    fora7a_metadata character varying(255),
    fora7a_metadata_comment text,
    fora7cq text,
    fora6cq text,
    fora6cq_metadata character varying(255),
    fora6cq_metadata_comment text,
    fora2 character varying(255),
    fora2_metadata character varying(255),
    fora2_metadata_comment text,
    fora7cq_metadata character varying(255),
    fora7cq_metadata_comment text
);


ALTER TABLE coorte.for_a OWNER TO postgres;

--
-- Name: gst_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE gst_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    gsta34 character varying(255),
    gsta34_metadata character varying(255),
    gsta34_metadata_comment text,
    gsta42a character varying(255),
    gsta42a_metadata character varying(255),
    gsta42a_metadata_comment text,
    gsta35e integer,
    gsta35e_metadata character varying(255),
    gsta35e_metadata_comment text,
    gsta33 character varying(255),
    gsta33_metadata character varying(255),
    gsta33_metadata_comment text,
    gsta39 integer,
    gsta39_metadata character varying(255),
    gsta39_metadata_comment text,
    gsta39a integer,
    gsta39a_metadata character varying(255),
    gsta39a_metadata_comment text,
    gsta16 character varying(255),
    gsta16_metadata character varying(255),
    gsta16_metadata_comment text,
    gsta8 character varying(255),
    gsta8_metadata character varying(255),
    gsta8_metadata_comment text,
    gsta10 character varying(255),
    gsta10_metadata character varying(255),
    gsta10_metadata_comment text,
    gsta26 character varying(255),
    gsta26_metadata character varying(255),
    gsta26_metadata_comment text,
    gsta35o integer,
    gsta35o_metadata character varying(255),
    gsta35o_metadata_comment text,
    gsta35oa character varying(255),
    gsta35oa_metadata character varying(255),
    gsta35oa_metadata_comment text,
    gsta18 character varying(255),
    gsta18_metadata character varying(255),
    gsta18_metadata_comment text,
    gsta28 character varying(255),
    gsta28_metadata character varying(255),
    gsta28_metadata_comment text,
    gsta35j integer,
    gsta35j_metadata character varying(255),
    gsta35j_metadata_comment text,
    gsta35i integer,
    gsta35i_metadata character varying(255),
    gsta35i_metadata_comment text,
    gsta7 integer,
    gsta7_metadata character varying(255),
    gsta7_metadata_comment text,
    gsta17 character varying(255),
    gsta17_metadata character varying(255),
    gsta17_metadata_comment text,
    gsta3 character varying(255),
    gsta3a integer,
    gsta3a_metadata character varying(255),
    gsta3a_metadata_comment text,
    gsta3_metadata character varying(255),
    gsta3_metadata_comment text,
    gsta19e integer,
    gsta19e_metadata character varying(255),
    gsta19e_metadata_comment text,
    gsta19a integer,
    gsta19a_metadata character varying(255),
    gsta19a_metadata_comment text,
    gsta9 integer,
    gsta9_metadata character varying(255),
    gsta9_metadata_comment text,
    gsta11 integer,
    gsta11_metadata character varying(255),
    gsta11_metadata_comment text,
    gsta35p integer,
    gsta35p_metadata character varying(255),
    gsta35p_metadata_comment text,
    gsta19d integer,
    gsta19d_metadata character varying(255),
    gsta19d_metadata_comment text,
    gsta35h integer,
    gsta35h_metadata character varying(255),
    gsta35h_metadata_comment text,
    gsta35c1 real,
    gsta35c1_metadata character varying(255),
    gsta35c1_metadata_comment text,
    gsta35c integer,
    gsta35c_metadata character varying(255),
    gsta35c_metadata_comment text,
    gsta23 character varying(255),
    gsta23_metadata character varying(255),
    gsta23_metadata_comment text,
    gsta35l integer,
    gsta35l_metadata character varying(255),
    gsta35l_metadata_comment text,
    gsta37 integer,
    gsta37_metadata character varying(255),
    gsta37_metadata_comment text,
    gsta37a integer,
    gsta37a_metadata character varying(255),
    gsta37a_metadata_comment text,
    gsta42 character varying(255),
    gsta43 character varying(255),
    gsta43_metadata character varying(255),
    gsta43_metadata_comment text,
    gsta42_metadata character varying(255),
    gsta42_metadata_comment text,
    gsta43a character varying(255),
    gsta43a_metadata character varying(255),
    gsta43a_metadata_comment text,
    gsta24 character varying(255),
    gsta24_metadata character varying(255),
    gsta24_metadata_comment text,
    gsta44 text,
    gsta44_metadata character varying(255),
    gsta44_metadata_comment text,
    gsta13 integer,
    gsta13_metadata character varying(255),
    gsta13_metadata_comment text,
    gsta21a integer,
    gsta21a_metadata character varying(255),
    gsta21a_metadata_comment text,
    gsta22a integer,
    gsta22a_metadata character varying(255),
    gsta22a_metadata_comment text,
    gsta12 integer,
    gsta12_metadata character varying(255),
    gsta12_metadata_comment text,
    gsta35g integer,
    gsta35g_metadata character varying(255),
    gsta35g_metadata_comment text,
    gsta21 character varying(255),
    gsta21_metadata character varying(255),
    gsta21_metadata_comment text,
    gsta35d integer,
    gsta35d_metadata character varying(255),
    gsta35d_metadata_comment text,
    gsta35d1 real,
    gsta35d1_metadata character varying(255),
    gsta35d1_metadata_comment text,
    gsta14 timestamp without time zone,
    gsta14_metadata character varying(255),
    gsta14_metadata_comment text,
    gsta25 character varying(255),
    gsta25_metadata character varying(255),
    gsta25_metadata_comment text,
    gsta5 character varying(255),
    gsta5_metadata character varying(255),
    gsta5_metadata_comment text,
    gsta38 integer,
    gsta38_metadata character varying(255),
    gsta38_metadata_comment text,
    gsta38a integer,
    gsta38a_metadata character varying(255),
    gsta38a_metadata_comment text,
    gsta35f integer,
    gsta35f_metadata character varying(255),
    gsta35f_metadata_comment text,
    gsta30 character varying(255),
    gsta30_metadata character varying(255),
    gsta30_metadata_comment text,
    gsta29 character varying(255),
    gsta29_metadata character varying(255),
    gsta29_metadata_comment text,
    gsta6 character varying(255),
    gsta6_metadata character varying(255),
    gsta6_metadata_comment text,
    gsta1 character varying(255),
    gsta1_metadata character varying(255),
    gsta1_metadata_comment text,
    gsta2 character varying(255),
    gsta2_metadata character varying(255),
    gsta2_metadata_comment text,
    gsta20 real,
    gsta20_metadata character varying(255),
    gsta20_metadata_comment text,
    gsta4 character varying(255),
    gsta4_metadata character varying(255),
    gsta4_metadata_comment text,
    gsta41 character varying(255),
    gsta41_metadata character varying(255),
    gsta41_metadata_comment text,
    gsta35m integer,
    gsta35m_metadata character varying(255),
    gsta35m_metadata_comment text,
    gsta35n integer,
    gsta35n_metadata character varying(255),
    gsta35n_metadata_comment text,
    gsta35k integer,
    gsta35k_metadata character varying(255),
    gsta35k_metadata_comment text,
    gsta35a1 character varying(255),
    gsta35a1_metadata character varying(255),
    gsta35a1_metadata_comment text,
    gsta35a integer,
    gsta35a_metadata character varying(255),
    gsta35a_metadata_comment text,
    gsta19b integer,
    gsta19b_metadata character varying(255),
    gsta19b_metadata_comment text,
    gsta27 character varying(255),
    gsta27_metadata character varying(255),
    gsta27_metadata_comment text,
    gsta19f integer,
    gsta19f_metadata character varying(255),
    gsta19f_metadata_comment text,
    gsta31 character varying(255),
    gsta31_metadata character varying(255),
    gsta31_metadata_comment text,
    gsta22 character varying(255),
    gsta22_metadata character varying(255),
    gsta22_metadata_comment text,
    gsta15 character varying(255),
    gsta15_metadata character varying(255),
    gsta15_metadata_comment text,
    gsta19c integer,
    gsta19c_metadata character varying(255),
    gsta19c_metadata_comment text,
    gsta32 character varying(255),
    gsta32_metadata character varying(255),
    gsta32_metadata_comment text,
    gsta35b integer,
    gsta35b_metadata character varying(255),
    gsta35b_metadata_comment text,
    gsta35b1 character varying(255),
    gsta35b1_metadata character varying(255),
    gsta35b1_metadata_comment text,
    gsta36a integer,
    gsta36a_metadata character varying(255),
    gsta36a_metadata_comment text,
    gsta40 integer,
    gsta40_metadata character varying(255),
    gsta40_metadata_comment text,
    gsta40a integer,
    gsta40a_metadata character varying(255),
    gsta40a_metadata_comment text,
    gsta36 integer,
    gsta36_metadata character varying(255),
    gsta36_metadata_comment text,
    gsta23b character varying(255),
    gsta23b_metadata character varying(255),
    gsta23b_metadata_comment text,
    gsta23a character varying(255),
    gsta23a_metadata character varying(255),
    gsta23a_metadata_comment text,
    gsta4a character varying(255),
    gsta4a_metadata character varying(255),
    gsta4a_metadata_comment text
);


ALTER TABLE coorte.gst_a OWNER TO postgres;

--
-- Name: gst_b; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE gst_b (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    gstb42a character varying(255),
    gstb42a_metadata character varying(255),
    gstb42a_metadata_comment text,
    gstb35e integer,
    gstb35e_metadata character varying(255),
    gstb35e_metadata_comment text,
    gstb39 integer,
    gstb39_metadata character varying(255),
    gstb39_metadata_comment text,
    gstb16 character varying(255),
    gstb16_metadata character varying(255),
    gstb16_metadata_comment text,
    gstb8 character varying(255),
    gstb8_metadata character varying(255),
    gstb8_metadata_comment text,
    gstb10 character varying(255),
    gstb10_metadata character varying(255),
    gstb10_metadata_comment text,
    gstb35o integer,
    gstb35o_metadata character varying(255),
    gstb35o_metadata_comment text,
    gstb35oa character varying(255),
    gstb35oa_metadata character varying(255),
    gstb35oa_metadata_comment text,
    gstb35j integer,
    gstb35j_metadata character varying(255),
    gstb35j_metadata_comment text,
    gstb35i integer,
    gstb35i_metadata character varying(255),
    gstb35i_metadata_comment text,
    gstb7 integer,
    gstb7_metadata character varying(255),
    gstb7_metadata_comment text,
    gstb17 character varying(255),
    gstb17_metadata character varying(255),
    gstb17_metadata_comment text,
    gstb3 character varying(255),
    gstb3a integer,
    gstb3a_metadata character varying(255),
    gstb3a_metadata_comment text,
    gstb3_metadata character varying(255),
    gstb3_metadata_comment text,
    gstb9 integer,
    gstb9_metadata character varying(255),
    gstb9_metadata_comment text,
    gstb11 integer,
    gstb11_metadata character varying(255),
    gstb11_metadata_comment text,
    gstb35p integer,
    gstb35p_metadata character varying(255),
    gstb35p_metadata_comment text,
    gstb35h integer,
    gstb35h_metadata character varying(255),
    gstb35h_metadata_comment text,
    gstb35c1 real,
    gstb35c1_metadata character varying(255),
    gstb35c1_metadata_comment text,
    gstb35c integer,
    gstb35c_metadata character varying(255),
    gstb35c_metadata_comment text,
    gstb18 character varying(255),
    gstb18_metadata character varying(255),
    gstb18_metadata_comment text,
    gstb23 character varying(255),
    gstb23_metadata character varying(255),
    gstb23_metadata_comment text,
    gstb35l integer,
    gstb35l_metadata character varying(255),
    gstb35l_metadata_comment text,
    gstb37 integer,
    gstb37_metadata character varying(255),
    gstb37_metadata_comment text,
    gstb37a integer,
    gstb37a_metadata character varying(255),
    gstb37a_metadata_comment text,
    gstb42 character varying(255),
    gstb43 character varying(255),
    gstb43_metadata character varying(255),
    gstb43_metadata_comment text,
    gstb42_metadata character varying(255),
    gstb42_metadata_comment text,
    gstb43a character varying(255),
    gstb43a_metadata character varying(255),
    gstb43a_metadata_comment text,
    gstb24 character varying(255),
    gstb24_metadata character varying(255),
    gstb24_metadata_comment text,
    gstb44 text,
    gstb44_metadata character varying(255),
    gstb44_metadata_comment text,
    gstb13 integer,
    gstb13_metadata character varying(255),
    gstb13_metadata_comment text,
    gstb21a integer,
    gstb21a_metadata character varying(255),
    gstb21a_metadata_comment text,
    gstb22a integer,
    gstb22a_metadata character varying(255),
    gstb22a_metadata_comment text,
    gstb19a integer,
    gstb19j integer,
    gstb19j_metadata character varying(255),
    gstb19j_metadata_comment text,
    gstb19b integer,
    gstb19b_metadata character varying(255),
    gstb19b_metadata_comment text,
    gstb19c integer,
    gstb19c_metadata character varying(255),
    gstb19c_metadata_comment text,
    gstb19d integer,
    gstb19d_metadata character varying(255),
    gstb19d_metadata_comment text,
    gstb19e integer,
    gstb19e_metadata character varying(255),
    gstb19e_metadata_comment text,
    gstb19f integer,
    gstb19f_metadata character varying(255),
    gstb19f_metadata_comment text,
    gstb19g integer,
    gstb19g_metadata character varying(255),
    gstb19g_metadata_comment text,
    gstb19h integer,
    gstb19h_metadata character varying(255),
    gstb19h_metadata_comment text,
    gstb19i integer,
    gstb19i_metadata character varying(255),
    gstb19i_metadata_comment text,
    gstb19a_metadata character varying(255),
    gstb19a_metadata_comment text,
    gstb12 integer,
    gstb12_metadata character varying(255),
    gstb12_metadata_comment text,
    gstb39a integer,
    gstb39a_metadata character varying(255),
    gstb39a_metadata_comment text,
    gstb35g integer,
    gstb35g_metadata character varying(255),
    gstb35g_metadata_comment text,
    gstb21 character varying(255),
    gstb21_metadata character varying(255),
    gstb21_metadata_comment text,
    gstb35d integer,
    gstb35d_metadata character varying(255),
    gstb35d_metadata_comment text,
    gstb35d1 real,
    gstb35d1_metadata character varying(255),
    gstb35d1_metadata_comment text,
    gstb14 timestamp without time zone,
    gstb14_metadata character varying(255),
    gstb14_metadata_comment text,
    gstb5 character varying(255),
    gstb5_metadata character varying(255),
    gstb5_metadata_comment text,
    gstb38 integer,
    gstb38_metadata character varying(255),
    gstb38_metadata_comment text,
    gstb38a integer,
    gstb38a_metadata character varying(255),
    gstb38a_metadata_comment text,
    gstb35f integer,
    gstb35f_metadata character varying(255),
    gstb35f_metadata_comment text,
    gstb6 character varying(255),
    gstb6_metadata character varying(255),
    gstb6_metadata_comment text,
    gstb1 character varying(255),
    gstb1_metadata character varying(255),
    gstb1_metadata_comment text,
    gstb2 character varying(255),
    gstb2_metadata character varying(255),
    gstb2_metadata_comment text,
    gstb20 real,
    gstb20_metadata character varying(255),
    gstb20_metadata_comment text,
    gstb4 character varying(255),
    gstb4_metadata character varying(255),
    gstb4_metadata_comment text,
    gstb41 character varying(255),
    gstb41_metadata character varying(255),
    gstb41_metadata_comment text,
    gstb35m integer,
    gstb35m_metadata character varying(255),
    gstb35m_metadata_comment text,
    gstb35n integer,
    gstb35n_metadata character varying(255),
    gstb35n_metadata_comment text,
    gstb35k integer,
    gstb35k_metadata character varying(255),
    gstb35k_metadata_comment text,
    gstb35a1 character varying(255),
    gstb35a1_metadata character varying(255),
    gstb35a1_metadata_comment text,
    gstb35a integer,
    gstb35a_metadata character varying(255),
    gstb35a_metadata_comment text,
    gstb22 character varying(255),
    gstb22_metadata character varying(255),
    gstb22_metadata_comment text,
    gstb15 character varying(255),
    gstb15_metadata character varying(255),
    gstb15_metadata_comment text,
    gstb35b integer,
    gstb35b_metadata character varying(255),
    gstb35b_metadata_comment text,
    gstb35b1 character varying(255),
    gstb35b1_metadata character varying(255),
    gstb35b1_metadata_comment text,
    gstb36a integer,
    gstb36a_metadata character varying(255),
    gstb36a_metadata_comment text,
    gstb40 integer,
    gstb40_metadata character varying(255),
    gstb40_metadata_comment text,
    gstb40a integer,
    gstb40a_metadata character varying(255),
    gstb40a_metadata_comment text,
    gstb36 integer,
    gstb36_metadata character varying(255),
    gstb36_metadata_comment text,
    gstb23b character varying(255),
    gstb23b_metadata character varying(255),
    gstb23b_metadata_comment text,
    gstb23a character varying(255),
    gstb23a_metadata character varying(255),
    gstb23a_metadata_comment text,
    gstb4a character varying(255),
    gstb4a_metadata character varying(255),
    gstb4a_metadata_comment text
);


ALTER TABLE coorte.gst_b OWNER TO postgres;

--
-- Name: iae_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE iae_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    iaea3a3 boolean,
    iaea3a3_metadata character varying(255),
    iaea3a3_metadata_comment text,
    iaea1 character varying(255),
    iaea1_metadata character varying(255),
    iaea1_metadata_comment text,
    iaea3a7 boolean,
    iaea3a7_metadata character varying(255),
    iaea3a7_metadata_comment text,
    iaea3a13 boolean,
    iaea3a13_metadata character varying(255),
    iaea3a13_metadata_comment text,
    iaea3a9 boolean,
    iaea3a9_metadata character varying(255),
    iaea3a9_metadata_comment text,
    iaea3a19 boolean,
    iaea3a19_metadata character varying(255),
    iaea3a19_metadata_comment text,
    iaea2 character varying(255),
    iaea2_metadata character varying(255),
    iaea2_metadata_comment text,
    iaea3a10 boolean,
    iaea3a10_metadata character varying(255),
    iaea3a10_metadata_comment text,
    iaea3a6 boolean,
    iaea3a6_metadata character varying(255),
    iaea3a6_metadata_comment text,
    iaea3a4 boolean,
    iaea3a4_metadata character varying(255),
    iaea3a4_metadata_comment text,
    iaea3a17 boolean,
    iaea3a17_metadata character varying(255),
    iaea3a17_metadata_comment text,
    iaea3a8 boolean,
    iaea3a8_metadata character varying(255),
    iaea3a8_metadata_comment text,
    iaea3a14 boolean,
    iaea3a14_metadata character varying(255),
    iaea3a14_metadata_comment text,
    iaea3a15 boolean,
    iaea3a15_metadata character varying(255),
    iaea3a15_metadata_comment text,
    iaea3a2 boolean,
    iaea3a2_metadata character varying(255),
    iaea3a2_metadata_comment text,
    iaea3a18 boolean,
    iaea3a18_metadata character varying(255),
    iaea3a18_metadata_comment text,
    iaea3a11 boolean,
    iaea3a11_metadata character varying(255),
    iaea3a11_metadata_comment text,
    iaea3a12 boolean,
    iaea3a12_metadata character varying(255),
    iaea3a12_metadata_comment text,
    iaea3a16 boolean,
    iaea3a16_metadata character varying(255),
    iaea3a16_metadata_comment text,
    iaea3a5 boolean,
    iaea3a5_metadata character varying(255),
    iaea3a5_metadata_comment text,
    iaea3a1 boolean,
    iaea3a1_metadata character varying(255),
    iaea3a1_metadata_comment text,
    iaea2a text,
    iaea2a_metadata character varying(255),
    iaea2a_metadata_comment text,
    iaea3a20 boolean,
    iaea3a20_metadata character varying(255),
    iaea3a20_metadata_comment text,
    iaea3a20q text,
    iaea3a20q_metadata character varying(255),
    iaea3a20q_metadata_comment text
);


ALTER TABLE coorte.iae_a OWNER TO postgres;

--
-- Name: iap_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE iap_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    iapa4a11 boolean,
    iapa4a11_metadata character varying(255),
    iapa4a11_metadata_comment text,
    iapa4a4 boolean,
    iapa4a4_metadata character varying(255),
    iapa4a4_metadata_comment text,
    iapa1 character varying(255),
    iapa1_metadata character varying(255),
    iapa1_metadata_comment text,
    iapa4a19 boolean,
    iapa4a19_metadata character varying(255),
    iapa4a19_metadata_comment text,
    iapa4a7 boolean,
    iapa4a7_metadata character varying(255),
    iapa4a7_metadata_comment text,
    iapa4a17 boolean,
    iapa4a17_metadata character varying(255),
    iapa4a17_metadata_comment text,
    iapa4a9 boolean,
    iapa4a9_metadata character varying(255),
    iapa4a9_metadata_comment text,
    iapa4a3 boolean,
    iapa4a3_metadata character varying(255),
    iapa4a3_metadata_comment text,
    iapa2 character varying(255),
    iapa2_metadata character varying(255),
    iapa2_metadata_comment text,
    iapa4a10 boolean,
    iapa4a10_metadata character varying(255),
    iapa4a10_metadata_comment text,
    iapa4a8 boolean,
    iapa4a8_metadata character varying(255),
    iapa4a8_metadata_comment text,
    iapa4a14 boolean,
    iapa4a14_metadata character varying(255),
    iapa4a14_metadata_comment text,
    iapa4a15 boolean,
    iapa4a15_metadata character varying(255),
    iapa4a15_metadata_comment text,
    iapa4a2 boolean,
    iapa4a2_metadata character varying(255),
    iapa4a2_metadata_comment text,
    iapa1a2 boolean,
    iapa1a2_metadata character varying(255),
    iapa1a2_metadata_comment text,
    iapa3a text,
    iapa3a_metadata character varying(255),
    iapa3a_metadata_comment text,
    iapa4a18 boolean,
    iapa4a18_metadata character varying(255),
    iapa4a18_metadata_comment text,
    iapa4a6 boolean,
    iapa4a6_metadata character varying(255),
    iapa4a6_metadata_comment text,
    iapa4a13 boolean,
    iapa4a13_metadata character varying(255),
    iapa4a13_metadata_comment text,
    iapa1a4 boolean,
    iapa1a4_metadata character varying(255),
    iapa1a4_metadata_comment text,
    iapa1a3 boolean,
    iapa1a3_metadata character varying(255),
    iapa1a3_metadata_comment text,
    iapa4a20q text,
    iapa4a20q_metadata character varying(255),
    iapa4a20q_metadata_comment text,
    iapa4a20 boolean,
    iapa4a20_metadata character varying(255),
    iapa4a20_metadata_comment text,
    iapa1a6 boolean,
    iapa1a6_metadata character varying(255),
    iapa1a6_metadata_comment text,
    iapa4a12 boolean,
    iapa4a12_metadata character varying(255),
    iapa4a12_metadata_comment text,
    iapa4a16 boolean,
    iapa4a16_metadata character varying(255),
    iapa4a16_metadata_comment text,
    iapa4a5 boolean,
    iapa4a5_metadata character varying(255),
    iapa4a5_metadata_comment text,
    iapa1a6q text,
    iapa1a6q_metadata character varying(255),
    iapa1a6q_metadata_comment text,
    iapa1a1 boolean,
    iapa1a1_metadata character varying(255),
    iapa1a1_metadata_comment text,
    iapa1a5 boolean,
    iapa1a5_metadata character varying(255),
    iapa1a5_metadata_comment text,
    iapa3 character varying(255),
    iapa3_metadata character varying(255),
    iapa3_metadata_comment text,
    iapa4a1 boolean,
    iapa4a1_metadata character varying(255),
    iapa4a1_metadata_comment text
);


ALTER TABLE coorte.iap_a OWNER TO postgres;

--
-- Name: iar_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE iar_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    iara3a3 boolean,
    iara3a3_metadata character varying(255),
    iara3a3_metadata_comment text,
    iara3a7 boolean,
    iara3a7_metadata character varying(255),
    iara3a7_metadata_comment text,
    iara3a8 boolean,
    iara3a8_metadata character varying(255),
    iara3a8_metadata_comment text,
    iara1 character varying(255),
    iara2 character varying(255),
    iara2_metadata character varying(255),
    iara2_metadata_comment text,
    iara1_metadata character varying(255),
    iara1_metadata_comment text,
    iara3a19 boolean,
    iara3a19_metadata character varying(255),
    iara3a19_metadata_comment text,
    iara3a17 boolean,
    iara3a17_metadata character varying(255),
    iara3a17_metadata_comment text,
    iara3a9 boolean,
    iara3a9_metadata character varying(255),
    iara3a9_metadata_comment text,
    iara3a15 boolean,
    iara3a15_metadata character varying(255),
    iara3a15_metadata_comment text,
    iara4 character varying(255),
    iara4_metadata character varying(255),
    iara4_metadata_comment text,
    iara3a12 boolean,
    iara3a12_metadata character varying(255),
    iara3a12_metadata_comment text,
    iara3a10 boolean,
    iara3a10_metadata character varying(255),
    iara3a10_metadata_comment text,
    iara3a2 boolean,
    iara3a2_metadata character varying(255),
    iara3a2_metadata_comment text,
    iara3a6 boolean,
    iara3a6_metadata character varying(255),
    iara3a6_metadata_comment text,
    iara3a18 boolean,
    iara3a18_metadata character varying(255),
    iara3a18_metadata_comment text,
    iara3a4 boolean,
    iara3a4_metadata character varying(255),
    iara3a4_metadata_comment text,
    iara3a20 boolean,
    iara3a20_metadata character varying(255),
    iara3a20_metadata_comment text,
    iara3a20q text,
    iara3a20q_metadata character varying(255),
    iara3a20q_metadata_comment text,
    iara3a11 boolean,
    iara3a11_metadata character varying(255),
    iara3a11_metadata_comment text,
    reasonfornotbreastfeedinggroup_metadata character varying(255),
    reasonfornotbreastfeedinggroup_metadata_comment text,
    iara3a14 boolean,
    iara3a14_metadata character varying(255),
    iara3a14_metadata_comment text,
    iara3a5 boolean,
    iara3a5_metadata character varying(255),
    iara3a5_metadata_comment text,
    iara3a1 boolean,
    iara3a1_metadata character varying(255),
    iara3a1_metadata_comment text,
    iara2a text,
    iara2a_metadata character varying(255),
    iara2a_metadata_comment text,
    iara3a16 boolean,
    iara3a16_metadata character varying(255),
    iara3a16_metadata_comment text,
    iara3a13 boolean,
    iara3a13_metadata character varying(255),
    iara3a13_metadata_comment text
);


ALTER TABLE coorte.iar_a OWNER TO postgres;

--
-- Name: imas_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE imas_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    imasa1 character varying(255),
    imasa1_metadata character varying(255),
    imasa1_metadata_comment text,
    imasa2 character varying(255),
    imasa2_metadata character varying(255),
    imasa2_metadata_comment text
);


ALTER TABLE coorte.imas_a OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: ine_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ine_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ine_a_seq OWNER TO postgres;

SET search_path = coorte, pg_catalog;

--
-- Name: ine_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE ine_a (
    id integer DEFAULT nextval('public.ine_a_seq'::regclass) NOT NULL,
    inea3 boolean,
    inea2 boolean,
    inea1 boolean,
    realization_date timestamp without time zone,
    ineacom3 character varying(255),
    ineacom1 character varying(255),
    participant_id integer,
    user_id integer
);


ALTER TABLE coorte.ine_a OWNER TO postgres;

--
-- Name: int_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE int_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    inta2 character varying(255),
    inta2_metadata character varying(255),
    inta2_metadata_comment text,
    inta3 character varying(255),
    inta3_metadata character varying(255),
    inta3_metadata_comment text,
    intaobs boolean,
    intacom character varying(255),
    intacom_metadata character varying(255),
    intacom_metadata_comment text,
    intaobs_metadata character varying(255),
    intaobs_metadata_comment text,
    inta3q character varying(255),
    inta3q_metadata character varying(255),
    inta3q_metadata_comment text,
    inta1 character varying(255),
    inta1_metadata character varying(255),
    inta1_metadata_comment text
);


ALTER TABLE coorte.int_a OWNER TO postgres;

--
-- Name: lap_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE lap_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    lapa20a text,
    lapa20a_metadata character varying(255),
    lapa20a_metadata_comment text,
    lapa20ag text,
    lapa20ag_metadata character varying(255),
    lapa20ag_metadata_comment text,
    lapa20ag2 text,
    lapa20ag2_metadata character varying(255),
    lapa20ag2_metadata_comment text,
    lapa12 character varying(255),
    lapa26a3 boolean,
    lapa26a3_metadata character varying(255),
    lapa26a3_metadata_comment text,
    lapa26a4 boolean,
    lapa26a4_metadata character varying(255),
    lapa26a4_metadata_comment text,
    lapa26a1 boolean,
    lapa26a1_metadata character varying(255),
    lapa26a1_metadata_comment text,
    lapa26a5 boolean,
    lapa26a5_metadata character varying(255),
    lapa26a5_metadata_comment text,
    lapa12_metadata character varying(255),
    lapa12_metadata_comment text,
    lapa26a6 boolean,
    lapa26a6_metadata character varying(255),
    lapa26a6_metadata_comment text,
    lapa26a2 boolean,
    lapa26a2_metadata character varying(255),
    lapa26a2_metadata_comment text,
    lapa19b character varying(255),
    lapa19b_metadata character varying(255),
    lapa19b_metadata_comment text,
    lapa25 character varying(255),
    lapa25_metadata character varying(255),
    lapa25_metadata_comment text,
    lapa17 timestamp without time zone,
    lapa17_metadata character varying(255),
    lapa17_metadata_comment text,
    lapa8 integer,
    lapa8_metadata character varying(255),
    lapa8_metadata_comment text,
    lapa8g integer,
    lapa8g_metadata character varying(255),
    lapa8g_metadata_comment text,
    lapa8g2 integer,
    lapa8g2_metadata character varying(255),
    lapa8g2_metadata_comment text,
    lapa26a6q text,
    lapa26a6q_metadata character varying(255),
    lapa26a6q_metadata_comment text,
    lapa28a text,
    lapa29a text,
    lapa29a_metadata character varying(255),
    lapa29a_metadata_comment text,
    lapa28a_metadata character varying(255),
    lapa28a_metadata_comment text,
    lapa30 real,
    lapa30_metadata character varying(255),
    lapa30_metadata_comment text,
    lapa26 character varying(255),
    lapa26_metadata character varying(255),
    lapa26_metadata_comment text,
    lapa27 character varying(255),
    lapa27_metadata character varying(255),
    lapa27_metadata_comment text,
    lapa29 character varying(255),
    lapa29_metadata character varying(255),
    lapa29_metadata_comment text,
    lapa28 character varying(255),
    lapa28_metadata character varying(255),
    lapa28_metadata_comment text,
    lapa19a1 boolean,
    lapa19a1_metadata character varying(255),
    lapa19a1_metadata_comment text,
    lapa12a3 boolean,
    lapa12a3_metadata character varying(255),
    lapa12a3_metadata_comment text,
    lapa3 character varying(255),
    lapa3_metadata character varying(255),
    lapa3_metadata_comment text,
    lapa11b integer,
    lapa11b_metadata character varying(255),
    lapa11b_metadata_comment text,
    lapa11bg integer,
    lapa11bg_metadata character varying(255),
    lapa11bg_metadata_comment text,
    lapa11bg2 integer,
    lapa11bg2_metadata character varying(255),
    lapa11bg2_metadata_comment text,
    lapa11a integer,
    lapa11a_metadata character varying(255),
    lapa11a_metadata_comment text,
    lapa11ag integer,
    lapa11ag_metadata character varying(255),
    lapa11ag_metadata_comment text,
    lapa11ag2 integer,
    lapa11ag2_metadata character varying(255),
    lapa11ag2_metadata_comment text,
    lapa18a integer,
    lapa18a_metadata character varying(255),
    lapa18a_metadata_comment text,
    lapa18ag integer,
    lapa18ag_metadata character varying(255),
    lapa18ag_metadata_comment text,
    lapa18ag2 integer,
    lapa18ag2_metadata character varying(255),
    lapa18ag2_metadata_comment text,
    gsta44 text,
    lapa5c character varying(255),
    lapa5c_metadata character varying(255),
    lapa5c_metadata_comment text,
    lapa5cg character varying(255),
    lapa5cg_metadata character varying(255),
    lapa5cg_metadata_comment text,
    lapa5cg2 character varying(255),
    lapa5cg2_metadata character varying(255),
    lapa5cg2_metadata_comment text,
    lapa23 character varying(255),
    lapa23_metadata character varying(255),
    lapa23_metadata_comment text,
    lapa12a4 boolean,
    lapa12a4_metadata character varying(255),
    lapa12a4_metadata_comment text,
    lapa24 text,
    lapa24_metadata character varying(255),
    lapa24_metadata_comment text,
    lapa12a6q text,
    lapa5 character varying(255),
    lapa5_metadata character varying(255),
    lapa5_metadata_comment text,
    lapa5g character varying(255),
    lapa5g_metadata character varying(255),
    lapa5g_metadata_comment text,
    lapa5g2 character varying(255),
    lapa5g2_metadata character varying(255),
    lapa5g2_metadata_comment text,
    prta5a integer,
    lapa5d text,
    lapa5b text,
    lapa5b_metadata character varying(255),
    lapa5b_metadata_comment text,
    lapa5bg text,
    lapa5bg_metadata character varying(255),
    lapa5bg_metadata_comment text,
    lapa5bg2 text,
    lapa5bg2_metadata character varying(255),
    lapa5bg2_metadata_comment text,
    lapa5d_metadata character varying(255),
    lapa5d_metadata_comment text,
    lapa5dg text,
    lapa5dg_metadata character varying(255),
    lapa5dg_metadata_comment text,
    lapa5dg2 text,
    lapa5dg2_metadata character varying(255),
    lapa5dg2_metadata_comment text,
    prta5a_metadata character varying(255),
    prta5a_metadata_comment text,
    lapa14a text,
    lapa15a text,
    lapa15a_metadata character varying(255),
    lapa15a_metadata_comment text,
    lapa14a_metadata character varying(255),
    lapa14a_metadata_comment text,
    lapa12a6q_metadata character varying(255),
    lapa12a6q_metadata_comment text,
    lapa19a2 boolean,
    lapa19a2_metadata character varying(255),
    lapa19a2_metadata_comment text,
    lapa12a1 boolean,
    lapa12a1_metadata character varying(255),
    lapa12a1_metadata_comment text,
    lapa12a5 boolean,
    lapa12a5_metadata character varying(255),
    lapa12a5_metadata_comment text,
    lapa19a3 boolean,
    lapa19a3_metadata character varying(255),
    lapa19a3_metadata_comment text,
    lapa18 character varying(255),
    lapa18_metadata character varying(255),
    lapa18_metadata_comment text,
    lapa18g character varying(255),
    lapa18g_metadata character varying(255),
    lapa18g_metadata_comment text,
    lapa18g2 character varying(255),
    lapa18g2_metadata character varying(255),
    lapa18g2_metadata_comment text,
    lapa19b3 boolean,
    lapa19b3_metadata character varying(255),
    lapa19b3_metadata_comment text,
    lapa19b3q text,
    lapa19b3q_metadata character varying(255),
    lapa19b3q_metadata_comment text,
    lapa19b1 boolean,
    lapa19b1_metadata character varying(255),
    lapa19b1_metadata_comment text,
    lapa19b2 boolean,
    lapa19b2_metadata character varying(255),
    lapa19b2_metadata_comment text,
    lapa16 real,
    lapa16_metadata character varying(255),
    lapa16_metadata_comment text,
    lapa9 real,
    lapa9_metadata character varying(255),
    lapa9_metadata_comment text,
    lapa9g real,
    lapa9g_metadata character varying(255),
    lapa9g_metadata_comment text,
    lapa9g2 real,
    lapa9g2_metadata character varying(255),
    lapa9g2_metadata_comment text,
    lapa2a text,
    lapa2a_metadata character varying(255),
    lapa2a_metadata_comment text,
    lapa3a timestamp without time zone,
    lapa3a_metadata character varying(255),
    lapa3a_metadata_comment text,
    lapa13 character varying(255),
    lapa13_metadata character varying(255),
    lapa13_metadata_comment text,
    lapa21 integer,
    lapa21_metadata character varying(255),
    lapa21_metadata_comment text,
    lapa21g integer,
    lapa21g_metadata character varying(255),
    lapa21g_metadata_comment text,
    lapa21g2 integer,
    lapa21g2_metadata character varying(255),
    lapa21g2_metadata_comment text,
    lapa12a6 boolean,
    lapa12a6_metadata character varying(255),
    lapa12a6_metadata_comment text,
    lapa1 character varying(255),
    lapa1_metadata character varying(255),
    lapa1_metadata_comment text,
    lapa10 real,
    lapa10_metadata character varying(255),
    lapa10_metadata_comment text,
    lapa10g real,
    lapa10g_metadata character varying(255),
    lapa10g_metadata_comment text,
    lapa10g2 real,
    lapa10g2_metadata character varying(255),
    lapa10g2_metadata_comment text,
    lapa12a2 boolean,
    lapa12a2_metadata character varying(255),
    lapa12a2_metadata_comment text,
    lapa19a4q text,
    lapa19a4q_metadata character varying(255),
    lapa19a4q_metadata_comment text,
    prta4 timestamp without time zone,
    lapa22 character varying(255),
    lapa22_metadata character varying(255),
    lapa22_metadata_comment text,
    lapa7 character varying(255),
    lapa7_metadata character varying(255),
    lapa7_metadata_comment text,
    lapa7g character varying(255),
    lapa7g_metadata character varying(255),
    lapa7g_metadata_comment text,
    lapa7g2 character varying(255),
    lapa7g2_metadata character varying(255),
    lapa7g2_metadata_comment text,
    lapa22a text,
    lapa22a_metadata character varying(255),
    lapa22a_metadata_comment text,
    lapa20 character varying(255),
    lapa20_metadata character varying(255),
    lapa20_metadata_comment text,
    lapa20g character varying(255),
    lapa20g_metadata character varying(255),
    lapa20g_metadata_comment text,
    lapa20g2 character varying(255),
    lapa20g2_metadata character varying(255),
    lapa20g2_metadata_comment text,
    prta5 character varying(255),
    prta5_metadata character varying(255),
    prta5_metadata_comment text,
    lapa2 character varying(255),
    lapa2_metadata character varying(255),
    lapa2_metadata_comment text,
    lapa4 text,
    lapa4_metadata character varying(255),
    lapa4_metadata_comment text,
    lapa4g text,
    lapa4g_metadata character varying(255),
    lapa4g_metadata_comment text,
    lapa4g2 text,
    lapa4g2_metadata character varying(255),
    lapa4g2_metadata_comment text,
    lapa25a text,
    lapa25a_metadata character varying(255),
    lapa25a_metadata_comment text,
    lapa5a text,
    lapa5a_metadata character varying(255),
    lapa5a_metadata_comment text,
    lapa5ag text,
    lapa5ag_metadata character varying(255),
    lapa5ag_metadata_comment text,
    lapa5ag2 text,
    lapa5ag2_metadata character varying(255),
    lapa5ag2_metadata_comment text,
    lapa6 text,
    lapa6_metadata character varying(255),
    lapa6_metadata_comment text,
    lapa6g text,
    lapa6g_metadata character varying(255),
    lapa6g_metadata_comment text,
    lapa6g2 text,
    lapa6g2_metadata character varying(255),
    lapa6g2_metadata_comment text,
    lapa19a character varying(255),
    lapa19a_metadata character varying(255),
    lapa19a_metadata_comment text,
    lapa19a4 boolean,
    lapa19a4_metadata character varying(255),
    lapa19a4_metadata_comment text,
    lapa15 character varying(255),
    lapa15_metadata character varying(255),
    lapa15_metadata_comment text,
    lapa14 character varying(255),
    lapa14_metadata character varying(255),
    lapa14_metadata_comment text,
    lapa18b character varying(255),
    lapa18b_metadata character varying(255),
    lapa18b_metadata_comment text
);


ALTER TABLE coorte.lap_a OWNER TO postgres;

--
-- Name: lap_b; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE lap_b (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    lapb22g integer,
    lapb22g_metadata character varying(255),
    lapb22g_metadata_comment text,
    lapb22g2 integer,
    lapb22g2_metadata character varying(255),
    lapb22g2_metadata_comment text,
    lapb21a character varying(255),
    lapb21a_metadata character varying(255),
    lapb21a_metadata_comment text,
    lapb12 character varying(255),
    lapb12_metadata character varying(255),
    lapb12_metadata_comment text,
    lapb20b character varying(255),
    lapb20b_metadata character varying(255),
    lapb20b_metadata_comment text,
    lapb8 integer,
    lapb8_metadata character varying(255),
    lapb8_metadata_comment text,
    lapb8g integer,
    lapb8g_metadata character varying(255),
    lapb8g_metadata_comment text,
    lapb8g2 integer,
    lapb8g2_metadata character varying(255),
    lapb8g2_metadata_comment text,
    lapb18 character varying(255),
    lapb18_metadata character varying(255),
    lapb18_metadata_comment text,
    lapb17 timestamp without time zone,
    lapb17_metadata character varying(255),
    lapb17_metadata_comment text,
    lapb32 timestamp without time zone,
    lapb32_metadata character varying(255),
    lapb32_metadata_comment text,
    lapb20a1 boolean,
    lapb20a1_metadata character varying(255),
    lapb20a1_metadata_comment text,
    lapb12a3 boolean,
    lapb12a3_metadata character varying(255),
    lapb12a3_metadata_comment text,
    lapb19 character varying(255),
    lapb19_metadata character varying(255),
    lapb19_metadata_comment text,
    lapb11b integer,
    lapb11b_metadata character varying(255),
    lapb11b_metadata_comment text,
    lapb11bg integer,
    lapb11bg_metadata character varying(255),
    lapb11bg_metadata_comment text,
    lapb11bg2 integer,
    lapb11bg2_metadata character varying(255),
    lapb11bg2_metadata_comment text,
    lapb11a integer,
    lapb11a_metadata character varying(255),
    lapb11a_metadata_comment text,
    lapb11ag integer,
    lapb11ag_metadata character varying(255),
    lapb11ag_metadata_comment text,
    lapb11ag2 integer,
    lapb11ag2_metadata character varying(255),
    lapb11ag2_metadata_comment text,
    lapb5c character varying(255),
    lapb5c_metadata character varying(255),
    lapb5c_metadata_comment text,
    lapb5cg character varying(255),
    lapb5cg_metadata character varying(255),
    lapb5cg_metadata_comment text,
    lapb5cg2 character varying(255),
    lapb5cg2_metadata character varying(255),
    lapb5cg2_metadata_comment text,
    lapb24 character varying(255),
    lapb24_metadata character varying(255),
    lapb24_metadata_comment text,
    lapb12a4 boolean,
    lapb12a4_metadata character varying(255),
    lapb12a4_metadata_comment text,
    lapb25 text,
    lapb25_metadata character varying(255),
    lapb25_metadata_comment text,
    lapb6 text,
    lapb6_metadata character varying(255),
    lapb6_metadata_comment text,
    lapb12a6q text,
    lapb5 character varying(255),
    lapb5_metadata character varying(255),
    lapb5_metadata_comment text,
    lapb5g character varying(255),
    lapb5g_metadata character varying(255),
    lapb5g_metadata_comment text,
    lapb5g2 character varying(255),
    lapb5g2_metadata character varying(255),
    lapb5g2_metadata_comment text,
    prta5a integer,
    lapb5d integer,
    lapb19ag integer,
    lapb19ag_metadata character varying(255),
    lapb19ag_metadata_comment text,
    lapb19ag2 integer,
    lapb19ag2_metadata character varying(255),
    lapb19ag2_metadata_comment text,
    lapb5bg integer,
    lapb5bg_metadata character varying(255),
    lapb5bg_metadata_comment text,
    lapb5bg2 integer,
    lapb5bg2_metadata character varying(255),
    lapb5bg2_metadata_comment text,
    lapb5d_metadata character varying(255),
    lapb5d_metadata_comment text,
    lapb19a integer,
    lapb19a_metadata character varying(255),
    lapb19a_metadata_comment text,
    lapb5dg integer,
    lapb5dg_metadata character varying(255),
    lapb5dg_metadata_comment text,
    lapb5dg2 integer,
    lapb5dg2_metadata character varying(255),
    lapb5dg2_metadata_comment text,
    lapb5b integer,
    lapb5b_metadata character varying(255),
    lapb5b_metadata_comment text,
    prta5a_metadata character varying(255),
    prta5a_metadata_comment text,
    lapb30a1 boolean,
    lapb30a1_metadata character varying(255),
    lapb30a1_metadata_comment text,
    lapb30a2 boolean,
    lapb30a2_metadata character varying(255),
    lapb30a2_metadata_comment text,
    lapb30a3 boolean,
    lapb30a3_metadata character varying(255),
    lapb30a3_metadata_comment text,
    lapb12a6q_metadata character varying(255),
    lapb12a6q_metadata_comment text,
    lapb20a4q text,
    lapb20a4q_metadata character varying(255),
    lapb20a4q_metadata_comment text,
    lapb14a3q text,
    lapb15a3q text,
    lapb15a3q_metadata character varying(255),
    lapb15a3q_metadata_comment text,
    lapb14a3q_metadata character varying(255),
    lapb14a3q_metadata_comment text,
    lapb12a1 boolean,
    lapb12a1_metadata character varying(255),
    lapb12a1_metadata_comment text,
    lapb12a5 boolean,
    lapb12a5_metadata character varying(255),
    lapb12a5_metadata_comment text,
    lapb14a1 boolean,
    lapb15a1 boolean,
    lapb15a1_metadata character varying(255),
    lapb15a1_metadata_comment text,
    lapb14a1_metadata character varying(255),
    lapb14a1_metadata_comment text,
    lapb20b1 boolean,
    lapb20b1_metadata character varying(255),
    lapb20b1_metadata_comment text,
    lapb16 real,
    lapb16_metadata character varying(255),
    lapb16_metadata_comment text,
    lapb31 real,
    lapb31_metadata character varying(255),
    lapb31_metadata_comment text,
    lapb9 real,
    lapb9_metadata character varying(255),
    lapb9_metadata_comment text,
    lapb9g real,
    lapb9g_metadata character varying(255),
    lapb9g_metadata_comment text,
    lapb9g2 real,
    lapb9g2_metadata character varying(255),
    lapb9g2_metadata_comment text,
    lapb29a1 boolean,
    lapb29a1_metadata character varying(255),
    lapb29a1_metadata_comment text,
    lapb29a2 boolean,
    lapb29a2_metadata character varying(255),
    lapb29a2_metadata_comment text,
    lapb29a3 boolean,
    lapb29a3_metadata character varying(255),
    lapb29a3_metadata_comment text,
    lapb14a2 boolean,
    lapb15a2 boolean,
    lapb15a2_metadata character varying(255),
    lapb15a2_metadata_comment text,
    lapb14a2_metadata character varying(255),
    lapb14a2_metadata_comment text,
    lapb4 text,
    lapb4_metadata character varying(255),
    lapb4_metadata_comment text,
    lapb13 character varying(255),
    lapb13_metadata character varying(255),
    lapb13_metadata_comment text,
    lapb20b2 boolean,
    lapb20b2_metadata character varying(255),
    lapb20b2_metadata_comment text,
    lapb20a2 boolean,
    lapb20a2_metadata character varying(255),
    lapb20a2_metadata_comment text,
    lapb22 integer,
    lapb22_metadata character varying(255),
    lapb22_metadata_comment text,
    lapb12a6 boolean,
    lapb12a6_metadata character varying(255),
    lapb12a6_metadata_comment text,
    lapb20b3 boolean,
    lapb20b3_metadata character varying(255),
    lapb20b3_metadata_comment text,
    lapb20a4 boolean,
    lapb20a4_metadata character varying(255),
    lapb20a4_metadata_comment text,
    lapb14a3 boolean,
    lapb15a3 boolean,
    lapb15a3_metadata character varying(255),
    lapb15a3_metadata_comment text,
    lapb14a3_metadata character varying(255),
    lapb14a3_metadata_comment text,
    lapb21aqg text,
    lapb21aqg_metadata character varying(255),
    lapb21aqg_metadata_comment text,
    lapb21aqg2 text,
    lapb21aqg2_metadata character varying(255),
    lapb21aqg2_metadata_comment text,
    lapb1 character varying(255),
    lapb1_metadata character varying(255),
    lapb1_metadata_comment text,
    lapb10 real,
    lapb10_metadata character varying(255),
    lapb10_metadata_comment text,
    lapb10g real,
    lapb10g_metadata character varying(255),
    lapb10g_metadata_comment text,
    lapb10g2 real,
    lapb10g2_metadata character varying(255),
    lapb10g2_metadata_comment text,
    lapb20bb character varying(255),
    lapb20bb_metadata character varying(255),
    lapb20bb_metadata_comment text,
    lapb12a2 boolean,
    lapb12a2_metadata character varying(255),
    lapb12a2_metadata_comment text,
    lapb3 timestamp without time zone,
    lapb3_metadata character varying(255),
    lapb3_metadata_comment text,
    lapb27 character varying(255),
    lapb27a3 boolean,
    lapb27a3_metadata character varying(255),
    lapb27a3_metadata_comment text,
    lapb27a4 boolean,
    lapb27a4_metadata character varying(255),
    lapb27a4_metadata_comment text,
    lapb27a1 boolean,
    lapb27a1_metadata character varying(255),
    lapb27a1_metadata_comment text,
    lapb27a5 boolean,
    lapb27a5_metadata character varying(255),
    lapb27a5_metadata_comment text,
    lapb27a6 boolean,
    lapb27a6_metadata character varying(255),
    lapb27a6_metadata_comment text,
    lapb27_metadata character varying(255),
    lapb27_metadata_comment text,
    lapb27a2 boolean,
    lapb27a2_metadata character varying(255),
    lapb27a2_metadata_comment text,
    lapb19c character varying(255),
    lapb19c_metadata character varying(255),
    lapb19c_metadata_comment text,
    lapb7 character varying(255),
    lapb7_metadata character varying(255),
    lapb7_metadata_comment text,
    lapb7g character varying(255),
    lapb7g_metadata character varying(255),
    lapb7g_metadata_comment text,
    lapb7g2 character varying(255),
    lapb7g2_metadata character varying(255),
    lapb7g2_metadata_comment text,
    lapb20a3 boolean,
    lapb20a3_metadata character varying(255),
    lapb20a3_metadata_comment text,
    lapb26 character varying(255),
    lapb26_metadata character varying(255),
    lapb26_metadata_comment text,
    lapb28 character varying(255),
    lapb28_metadata character varying(255),
    lapb28_metadata_comment text,
    lapb12a5q character varying(255),
    lapb12a5q_metadata character varying(255),
    lapb12a5q_metadata_comment text,
    lapb21 character varying(255),
    lapb21_metadata character varying(255),
    lapb21_metadata_comment text,
    lapb21g character varying(255),
    lapb21g_metadata character varying(255),
    lapb21g_metadata_comment text,
    lapb21g2 character varying(255),
    lapb21g2_metadata character varying(255),
    lapb21g2_metadata_comment text,
    lapb19g character varying(255),
    lapb19g_metadata character varying(255),
    lapb19g_metadata_comment text,
    lapb19g2 character varying(255),
    lapb19g2_metadata character varying(255),
    lapb19g2_metadata_comment text,
    prta5 character varying(255),
    prta5_metadata character varying(255),
    prta5_metadata_comment text,
    lapb4g text,
    lapb4g_metadata character varying(255),
    lapb4g_metadata_comment text,
    lapb4g2 text,
    lapb4g2_metadata character varying(255),
    lapb4g2_metadata_comment text,
    lapb5ag text,
    lapb5ag_metadata character varying(255),
    lapb5ag_metadata_comment text,
    lapb5ag2 text,
    lapb5ag2_metadata character varying(255),
    lapb5ag2_metadata_comment text,
    lapb5a text,
    lapb5a_metadata character varying(255),
    lapb5a_metadata_comment text,
    lapb21ag character varying(255),
    lapb21ag_metadata character varying(255),
    lapb21ag_metadata_comment text,
    lapb21ag2 character varying(255),
    lapb21ag2_metadata character varying(255),
    lapb21ag2_metadata_comment text,
    lapb6g text,
    lapb6g_metadata character varying(255),
    lapb6g_metadata_comment text,
    lapb6g2 text,
    lapb6g2_metadata character varying(255),
    lapb6g2_metadata_comment text,
    lapb26a text,
    lapb26a_metadata character varying(255),
    lapb26a_metadata_comment text,
    lapb30a3q text,
    lapb30a3q_metadata character varying(255),
    lapb30a3q_metadata_comment text,
    lapb27a6q text,
    lapb27a6q_metadata character varying(255),
    lapb27a6q_metadata_comment text,
    lapb20b3q text,
    lapb20b3q_metadata character varying(255),
    lapb20b3q_metadata_comment text,
    lapb29a3q text,
    lapb29a3q_metadata character varying(255),
    lapb29a3q_metadata_comment text,
    lapb21aq text,
    lapb21aq_metadata character varying(255),
    lapb21aq_metadata_comment text,
    lapb20a character varying(255),
    lapb20a_metadata character varying(255),
    lapb20a_metadata_comment text,
    lapb30 character varying(255),
    lapb30_metadata character varying(255),
    lapb30_metadata_comment text,
    lapb29 character varying(255),
    lapb15 character varying(255),
    lapb15_metadata character varying(255),
    lapb15_metadata_comment text,
    lapb14 character varying(255),
    lapb14_metadata character varying(255),
    lapb14_metadata_comment text,
    lapb29_metadata character varying(255),
    lapb29_metadata_comment text,
    lapb27a5q character varying(255),
    lapb27a5q_metadata character varying(255),
    lapb27a5q_metadata_comment text,
    lapb19b character varying(255),
    lapb19b_metadata character varying(255),
    lapb19b_metadata_comment text
);


ALTER TABLE coorte.lap_b OWNER TO postgres;

--
-- Name: lid_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE lid_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    lida14 character varying(255),
    lida14a text,
    lida14a_metadata character varying(255),
    lida14a_metadata_comment text,
    lida14_metadata character varying(255),
    lida14_metadata_comment text,
    lida1g text,
    lida1g_metadata character varying(255),
    lida1g_metadata_comment text,
    lida17 character varying(255),
    lida17a text,
    lida17a_metadata character varying(255),
    lida17a_metadata_comment text,
    lida17_metadata character varying(255),
    lida17_metadata_comment text,
    lida10 character varying(255),
    lida10a text,
    lida10a_metadata character varying(255),
    lida10a_metadata_comment text,
    lida10_metadata character varying(255),
    lida10_metadata_comment text,
    lida5 character varying(255),
    lida5_metadata character varying(255),
    lida5_metadata_comment text,
    lida11 character varying(255),
    lida11a text,
    lida11a_metadata character varying(255),
    lida11a_metadata_comment text,
    lida11_metadata character varying(255),
    lida11_metadata_comment text,
    lida13 character varying(255),
    lida13a text,
    lida13a_metadata character varying(255),
    lida13a_metadata_comment text,
    lida13_metadata character varying(255),
    lida13_metadata_comment text,
    lida5a1 boolean,
    lida5a1_metadata character varying(255),
    lida5a1_metadata_comment text,
    lida2a integer,
    lida2a_metadata character varying(255),
    lida2a_metadata_comment text,
    prta5 character varying(255),
    prta5_metadata character varying(255),
    prta5_metadata_comment text,
    lida6 character varying(255),
    lida6_metadata character varying(255),
    lida6_metadata_comment text,
    lida9 character varying(255),
    lida9a text,
    lida9a_metadata character varying(255),
    lida9a_metadata_comment text,
    lida9_metadata character varying(255),
    lida9_metadata_comment text,
    lida8 character varying(255),
    lida8_metadata character varying(255),
    lida8_metadata_comment text,
    lida16 character varying(255),
    lida16a text,
    lida16a_metadata character varying(255),
    lida16a_metadata_comment text,
    lida16_metadata character varying(255),
    lida16_metadata_comment text,
    prta5a integer,
    lida2ag integer,
    lida2ag2 integer,
    lida2ag2_metadata character varying(255),
    lida2ag2_metadata_comment text,
    lida2ag_metadata character varying(255),
    lida2ag_metadata_comment text,
    prta5a_metadata character varying(255),
    prta5a_metadata_comment text,
    lida3a integer,
    lida3a_metadata character varying(255),
    lida3a_metadata_comment text,
    lida7 character varying(255),
    lida7_metadata character varying(255),
    lida7_metadata_comment text,
    lida2 character varying(255),
    lida2_metadata character varying(255),
    lida2_metadata_comment text,
    lida2g character varying(255),
    lida2g_metadata character varying(255),
    lida2g_metadata_comment text,
    lida3g character varying(255),
    lida3g2 character varying(255),
    lida3g2_metadata character varying(255),
    lida3g2_metadata_comment text,
    lida3g_metadata character varying(255),
    lida3g_metadata_comment text,
    lida2g2 character varying(255),
    lida2g2_metadata character varying(255),
    lida2g2_metadata_comment text,
    lida1g2 text,
    lida1g2_metadata character varying(255),
    lida1g2_metadata_comment text,
    lida3 character varying(255),
    lida3_metadata character varying(255),
    lida3_metadata_comment text,
    lida1 text,
    lida1_metadata character varying(255),
    lida1_metadata_comment text,
    lida12 character varying(255),
    lida12a text,
    lida12a_metadata character varying(255),
    lida12a_metadata_comment text,
    lida12_metadata character varying(255),
    lida12_metadata_comment text,
    lida4 timestamp without time zone,
    lida4_metadata character varying(255),
    lida4_metadata_comment text,
    lida5a_metadata character varying(255),
    lida5a_metadata_comment text,
    lida5a2 boolean,
    lida5a2_metadata character varying(255),
    lida5a2_metadata_comment text,
    lida5a4 boolean,
    lida5a4_metadata character varying(255),
    lida5a4_metadata_comment text,
    lida8a text,
    lida8a_metadata character varying(255),
    lida8a_metadata_comment text,
    lida15 character varying(255),
    lida15a text,
    lida15a_metadata character varying(255),
    lida15a_metadata_comment text,
    lida15_metadata character varying(255),
    lida15_metadata_comment text,
    lida5a3 boolean,
    lida5a3_metadata character varying(255),
    lida5a3_metadata_comment text,
    lida7a character varying(255),
    lida7a_metadata character varying(255),
    lida7a_metadata_comment text,
    lida6a text,
    lapa4 text,
    lapa4g text,
    lapa4g2 text,
    lida7b text,
    lida7b_metadata character varying(255),
    lida7b_metadata_comment text,
    lida6a_metadata character varying(255),
    lida6a_metadata_comment text,
    lida4a real,
    lida4a_metadata character varying(255),
    lida4a_metadata_comment text,
    lida3ag integer,
    lida3ag2 integer,
    lida3ag2_metadata character varying(255),
    lida3ag2_metadata_comment text,
    lida3ag_metadata character varying(255),
    lida3ag_metadata_comment text,
    lida5aq text,
    lida5aq_metadata character varying(255),
    lida5aq_metadata_comment text
);


ALTER TABLE coorte.lid_a OWNER TO postgres;

--
-- Name: liu_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE liu_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    liua10c text,
    liua10c_metadata character varying(255),
    liua10c_metadata_comment text,
    liua4a integer,
    liua4a_metadata character varying(255),
    liua4a_metadata_comment text,
    liua4ag integer,
    liua4ag_metadata character varying(255),
    liua4ag_metadata_comment text,
    liua4ag2 integer,
    liua4ag2_metadata character varying(255),
    liua4ag2_metadata_comment text,
    liua1 character varying(255),
    liua1_metadata character varying(255),
    liua1_metadata_comment text,
    liua1g character varying(255),
    liua1g_metadata character varying(255),
    liua1g_metadata_comment text,
    liua1g2 character varying(255),
    liua1g2_metadata character varying(255),
    liua1g2_metadata_comment text,
    liua9c character varying(255),
    liua9c_metadata character varying(255),
    liua9c_metadata_comment text,
    liua9b timestamp without time zone,
    liua9b_metadata character varying(255),
    liua9b_metadata_comment text,
    liua9a timestamp without time zone,
    liua9a_metadata character varying(255),
    liua9a_metadata_comment text,
    liua9group_metadata character varying(255),
    liua9group_metadata_comment text,
    liua9b1 integer,
    liua9b1_metadata character varying(255),
    liua9b1_metadata_comment text,
    liua3a integer,
    liua3a_metadata character varying(255),
    liua3a_metadata_comment text,
    liua3ag integer,
    liua3ag_metadata character varying(255),
    liua3ag_metadata_comment text,
    liua3ag2 integer,
    liua3ag2_metadata character varying(255),
    liua3ag2_metadata_comment text,
    lapa4 text,
    lapa4g text,
    lapa4g2 text,
    liua22 boolean,
    liua22_metadata character varying(255),
    liua22_metadata_comment text,
    liua22g boolean,
    liua22g_metadata character varying(255),
    liua22g_metadata_comment text,
    liua22g2 boolean,
    liua22g2_metadata character varying(255),
    liua22g2_metadata_comment text,
    prta5a integer,
    liua1d integer,
    liua1d_metadata character varying(255),
    liua1d_metadata_comment text,
    liua1dg integer,
    liua1dg_metadata character varying(255),
    liua1dg_metadata_comment text,
    liua1dg2 integer,
    liua1dg2_metadata character varying(255),
    liua1dg2_metadata_comment text,
    prta5a_metadata character varying(255),
    prta5a_metadata_comment text,
    liua3 character varying(255),
    liua3_metadata character varying(255),
    liua3_metadata_comment text,
    liua3g character varying(255),
    liua3g_metadata character varying(255),
    liua3g_metadata_comment text,
    liua3g2 character varying(255),
    liua3g2_metadata character varying(255),
    liua3g2_metadata_comment text,
    liua5a real,
    liua5a_metadata character varying(255),
    liua5a_metadata_comment text,
    liua5 timestamp without time zone,
    liua5_metadata character varying(255),
    liua5_metadata_comment text,
    liua62q2 text,
    liua62q2_metadata character varying(255),
    liua62q2_metadata_comment text,
    liua91 boolean,
    liua91_metadata character varying(255),
    liua91_metadata_comment text,
    liua9b2 integer,
    liua9b2_metadata character varying(255),
    liua9b2_metadata_comment text,
    liua10a text,
    liua10a_metadata character varying(255),
    liua10a_metadata_comment text,
    liua23 boolean,
    liua23_metadata character varying(255),
    liua23_metadata_comment text,
    liua23g boolean,
    liua23g_metadata character varying(255),
    liua23g_metadata_comment text,
    liua23g2 boolean,
    liua23g2_metadata character varying(255),
    liua23g2_metadata_comment text,
    liua92 boolean,
    liua92_metadata character varying(255),
    liua92_metadata_comment text,
    liua8 character varying(255),
    liua8_metadata character varying(255),
    liua8_metadata_comment text,
    liua21 boolean,
    liua21_metadata character varying(255),
    liua21_metadata_comment text,
    liua21g boolean,
    liua21g_metadata character varying(255),
    liua21g_metadata_comment text,
    liua21g2 boolean,
    liua21g2_metadata character varying(255),
    liua21g2_metadata_comment text,
    liua10bh integer,
    liua10b_metadata character varying(255),
    liua10b_metadata_comment text,
    liua10bm integer,
    liua4 character varying(255),
    liua4_metadata character varying(255),
    liua4_metadata_comment text,
    liua4g character varying(255),
    liua4g_metadata character varying(255),
    liua4g_metadata_comment text,
    liua4g2 character varying(255),
    liua4g2_metadata character varying(255),
    liua4g2_metadata_comment text,
    prta5 character varying(255),
    prta5_metadata character varying(255),
    prta5_metadata_comment text,
    liua7 character varying(255),
    liua7_metadata character varying(255),
    liua7_metadata_comment text,
    liua1c character varying(255),
    liua1c_metadata character varying(255),
    liua1c_metadata_comment text,
    liua1cg character varying(255),
    liua1cg_metadata character varying(255),
    liua1cg_metadata_comment text,
    liua1cg2 character varying(255),
    liua1cg2_metadata character varying(255),
    liua1cg2_metadata_comment text,
    liua22q2 text,
    liua22q2_metadata character varying(255),
    liua22q2_metadata_comment text,
    liua22q2g text,
    liua22q2g_metadata character varying(255),
    liua22q2g_metadata_comment text,
    liua22q2g2 text,
    liua22q2g2_metadata character varying(255),
    liua22q2g2_metadata_comment text,
    liua1b integer,
    liua1b_metadata character varying(255),
    liua1b_metadata_comment text,
    liua1bg integer,
    liua1bg_metadata character varying(255),
    liua1bg_metadata_comment text,
    liua1bg2 integer,
    liua1bg2_metadata character varying(255),
    liua1bg2_metadata_comment text,
    liua62q1 text,
    liua62q1_metadata character varying(255),
    liua62q1_metadata_comment text,
    liua63q text,
    liua63q_metadata character varying(255),
    liua63q_metadata_comment text,
    liua22q1 text,
    liua22q1_metadata character varying(255),
    liua22q1_metadata_comment text,
    liua22q1g text,
    liua22q1g_metadata character varying(255),
    liua22q1g_metadata_comment text,
    liua22q1g2 text,
    liua22q1g2_metadata character varying(255),
    liua22q1g2_metadata_comment text,
    liua23q text,
    liua23q_metadata character varying(255),
    liua23q_metadata_comment text,
    liua23qg text,
    liua23qg_metadata character varying(255),
    liua23qg_metadata_comment text,
    liua23qg2 text,
    liua23qg2_metadata character varying(255),
    liua23qg2_metadata_comment text,
    liua1a text,
    liua1a_metadata character varying(255),
    liua1a_metadata_comment text,
    liua1ag text,
    liua1ag_metadata character varying(255),
    liua1ag_metadata_comment text,
    liua1ag2 text,
    liua1ag2_metadata character varying(255),
    liua1ag2_metadata_comment text,
    liua61q text,
    liua61q_metadata character varying(255),
    liua61q_metadata_comment text,
    liua21q text,
    liua21q_metadata character varying(255),
    liua21q_metadata_comment text,
    liua21qg text,
    liua21qg_metadata character varying(255),
    liua21qg_metadata_comment text,
    liua21qg2 text,
    liua21qg2_metadata character varying(255),
    liua21qg2_metadata_comment text,
    liua62 boolean,
    liua62_metadata character varying(255),
    liua62_metadata_comment text,
    liua63 boolean,
    liua63_metadata character varying(255),
    liua63_metadata_comment text,
    liua61 boolean,
    liua61_metadata character varying(255),
    liua61_metadata_comment text
);


ALTER TABLE coorte.liu_a OWNER TO postgres;

--
-- Name: liu_b; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE liu_b (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    liub4a integer,
    liub4a_metadata character varying(255),
    liub4a_metadata_comment text,
    liub4ag integer,
    liub4ag_metadata character varying(255),
    liub4ag_metadata_comment text,
    liub4ag2 integer,
    liub4ag2_metadata character varying(255),
    liub4ag2_metadata_comment text,
    liub1 character varying(255),
    liub1_metadata character varying(255),
    liub1_metadata_comment text,
    liub1g character varying(255),
    liub1g_metadata character varying(255),
    liub1g_metadata_comment text,
    liub1g2 character varying(255),
    liub1g2_metadata character varying(255),
    liub1g2_metadata_comment text,
    liub9a timestamp without time zone,
    liub9a_metadata character varying(255),
    liub9a_metadata_comment text,
    liub3a integer,
    liub3a_metadata character varying(255),
    liub3a_metadata_comment text,
    liub3ag integer,
    liub3ag_metadata character varying(255),
    liub3ag_metadata_comment text,
    liub3ag2 integer,
    liub3ag2_metadata character varying(255),
    liub3ag2_metadata_comment text,
    lap_version_4 text,
    lap_version_4g text,
    lap_version_4g2 text,
    liub22 boolean,
    liub22_metadata character varying(255),
    liub22_metadata_comment text,
    liub22g boolean,
    liub22g_metadata character varying(255),
    liub22g_metadata_comment text,
    liub22g2 boolean,
    liub22g2_metadata character varying(255),
    liub22g2_metadata_comment text,
    prta5a integer,
    liub1d integer,
    liub1d_metadata character varying(255),
    liub1d_metadata_comment text,
    liub1dg integer,
    liub1dg_metadata character varying(255),
    liub1dg_metadata_comment text,
    liub1dg2 integer,
    liub1dg2_metadata character varying(255),
    liub1dg2_metadata_comment text,
    prta5a_metadata character varying(255),
    prta5a_metadata_comment text,
    liub3 character varying(255),
    liub3_metadata character varying(255),
    liub3_metadata_comment text,
    liub3g character varying(255),
    liub3g_metadata character varying(255),
    liub3g_metadata_comment text,
    liub3g2 character varying(255),
    liub3g2_metadata character varying(255),
    liub3g2_metadata_comment text,
    liub5a real,
    liub5a_metadata character varying(255),
    liub5a_metadata_comment text,
    liub5 timestamp without time zone,
    liub5_metadata character varying(255),
    liub5_metadata_comment text,
    liub62q2 text,
    liub62q2_metadata character varying(255),
    liub62q2_metadata_comment text,
    liub91 boolean,
    liub91_metadata character varying(255),
    liub91_metadata_comment text,
    liub23 boolean,
    liub23_metadata character varying(255),
    liub23_metadata_comment text,
    liub23g boolean,
    liub23g_metadata character varying(255),
    liub23g_metadata_comment text,
    liub23g2 boolean,
    liub23g2_metadata character varying(255),
    liub23g2_metadata_comment text,
    liub92 boolean,
    liub92_metadata character varying(255),
    liub92_metadata_comment text,
    liub8 character varying(255),
    liub8_metadata character varying(255),
    liub8_metadata_comment text,
    liub21 boolean,
    liub21_metadata character varying(255),
    liub21_metadata_comment text,
    liub21g boolean,
    liub21g_metadata character varying(255),
    liub21g_metadata_comment text,
    liub21g2 boolean,
    liub21g2_metadata character varying(255),
    liub21g2_metadata_comment text,
    liub4 character varying(255),
    liub4_metadata character varying(255),
    liub4_metadata_comment text,
    liub4g character varying(255),
    liub4g_metadata character varying(255),
    liub4g_metadata_comment text,
    liub4g2 character varying(255),
    liub4g2_metadata character varying(255),
    liub4g2_metadata_comment text,
    prta5 character varying(255),
    prta5_metadata character varying(255),
    prta5_metadata_comment text,
    liub7 character varying(255),
    liub7_metadata character varying(255),
    liub7_metadata_comment text,
    liub1c character varying(255),
    liub1c_metadata character varying(255),
    liub1c_metadata_comment text,
    liub1cg character varying(255),
    liub1cg_metadata character varying(255),
    liub1cg_metadata_comment text,
    liub1cg2 character varying(255),
    liub1cg2_metadata character varying(255),
    liub1cg2_metadata_comment text,
    liub22q2 text,
    liub22q2_metadata character varying(255),
    liub22q2_metadata_comment text,
    liub22q2g text,
    liub22q2g_metadata character varying(255),
    liub22q2g_metadata_comment text,
    liub22q2g2 text,
    liub22q2g2_metadata character varying(255),
    liub22q2g2_metadata_comment text,
    liub1b integer,
    liub1b_metadata character varying(255),
    liub1b_metadata_comment text,
    liub1bg integer,
    liub1bg_metadata character varying(255),
    liub1bg_metadata_comment text,
    liub1bg2 integer,
    liub1bg2_metadata character varying(255),
    liub1bg2_metadata_comment text,
    liub62q1 text,
    liub62q1_metadata character varying(255),
    liub62q1_metadata_comment text,
    liub63q text,
    liub63q_metadata character varying(255),
    liub63q_metadata_comment text,
    liub22q1 text,
    liub22q1_metadata character varying(255),
    liub22q1_metadata_comment text,
    liub22q1g text,
    liub22q1g_metadata character varying(255),
    liub22q1g_metadata_comment text,
    liub22q1g2 text,
    liub22q1g2_metadata character varying(255),
    liub22q1g2_metadata_comment text,
    liub23q text,
    liub23q_metadata character varying(255),
    liub23q_metadata_comment text,
    liub23qg text,
    liub23qg_metadata character varying(255),
    liub23qg_metadata_comment text,
    liub23qg2 text,
    liub23qg2_metadata character varying(255),
    liub23qg2_metadata_comment text,
    liub1a text,
    liub1a_metadata character varying(255),
    liub1a_metadata_comment text,
    liub1ag text,
    liub1ag_metadata character varying(255),
    liub1ag_metadata_comment text,
    liub1ag2 text,
    liub1ag2_metadata character varying(255),
    liub1ag2_metadata_comment text,
    liub61q text,
    liub61q_metadata character varying(255),
    liub61q_metadata_comment text,
    liub21q text,
    liub21q_metadata character varying(255),
    liub21q_metadata_comment text,
    liub21qg text,
    liub21qg_metadata character varying(255),
    liub21qg_metadata_comment text,
    liub21qg2 text,
    liub21qg2_metadata character varying(255),
    liub21qg2_metadata_comment text,
    liub62 boolean,
    liub62_metadata character varying(255),
    liub62_metadata_comment text,
    liub63 boolean,
    liub63_metadata character varying(255),
    liub63_metadata_comment text,
    liub61 boolean,
    liub61_metadata character varying(255),
    liub61_metadata_comment text
);


ALTER TABLE coorte.liu_b OWNER TO postgres;

--
-- Name: pco_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE pco_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    pcoa1e character varying(255),
    pcoa1e_metadata character varying(255),
    pcoa1e_metadata_comment text,
    pcoa1d character varying(255),
    pcoa1d_metadata character varying(255),
    pcoa1d_metadata_comment text,
    pcoa1c character varying(255),
    pcoa1c_metadata character varying(255),
    pcoa1c_metadata_comment text,
    pcoa1b character varying(255),
    pcoa1b_metadata character varying(255),
    pcoa1b_metadata_comment text,
    pcoa1a character varying(255),
    pcoa1a_metadata character varying(255),
    pcoa1a_metadata_comment text
);


ALTER TABLE coorte.pco_a OWNER TO postgres;

--
-- Name: prd_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE prd_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    prda7 character varying(255),
    prda7_metadata character varying(255),
    prda7_metadata_comment text,
    prda6 character varying(255),
    prda6_metadata character varying(255),
    prda6_metadata_comment text,
    prda1f character varying(255),
    prda1f_metadata character varying(255),
    prda1f_metadata_comment text,
    prda1b character varying(255),
    prda4 character varying(255),
    prda4_metadata character varying(255),
    prda4_metadata_comment text,
    prda1b_metadata character varying(255),
    prda1b_metadata_comment text,
    prda2d character varying(255),
    prda2d_metadata character varying(255),
    prda2d_metadata_comment text,
    prda3c character varying(255),
    prda3c_metadata character varying(255),
    prda3c_metadata_comment text,
    prda1c character varying(255),
    prda1c_metadata character varying(255),
    prda1c_metadata_comment text,
    prda3a character varying(255),
    prda3a_metadata character varying(255),
    prda3a_metadata_comment text,
    prda2h character varying(255),
    prda2h_metadata character varying(255),
    prda2h_metadata_comment text,
    prda2f character varying(255),
    prda2f_metadata character varying(255),
    prda2f_metadata_comment text,
    prda1d character varying(255),
    prda1d_metadata character varying(255),
    prda1d_metadata_comment text,
    prda2g character varying(255),
    prda2g_metadata character varying(255),
    prda2g_metadata_comment text,
    prda1a character varying(255),
    prda1a_metadata character varying(255),
    prda1a_metadata_comment text,
    prda2b character varying(255),
    prda2b_metadata character varying(255),
    prda2b_metadata_comment text,
    prda5 character varying(255),
    prda5_metadata character varying(255),
    prda5_metadata_comment text,
    prda2i character varying(255),
    prda2i_metadata character varying(255),
    prda2i_metadata_comment text,
    prda3b character varying(255),
    prda3b_metadata character varying(255),
    prda3b_metadata_comment text,
    prda1e character varying(255),
    prda1e_metadata character varying(255),
    prda1e_metadata_comment text,
    prda2e character varying(255),
    prda2e_metadata character varying(255),
    prda2e_metadata_comment text,
    prda2a character varying(255),
    prda2a_metadata character varying(255),
    prda2a_metadata_comment text,
    prda2c character varying(255),
    prda2c_metadata character varying(255),
    prda2c_metadata_comment text,
    prda2j character varying(255),
    prda2j_metadata character varying(255),
    prda2j_metadata_comment text
);


ALTER TABLE coorte.prd_a OWNER TO postgres;

--
-- Name: prt_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE prt_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    prta8c integer,
    prta8c_metadata character varying(255),
    prta8c_metadata_comment text,
    prta8b integer,
    prta8b_metadata character varying(255),
    prta8b_metadata_comment text,
    prta4 timestamp without time zone,
    prta4_metadata character varying(255),
    prta4_metadata_comment text,
    prta10 real,
    prta11 timestamp without time zone,
    prta11_metadata character varying(255),
    prta11_metadata_comment text,
    prta10_metadata character varying(255),
    prta10_metadata_comment text,
    prta3b integer,
    prta3b_metadata character varying(255),
    prta3b_metadata_comment text,
    prta6a timestamp without time zone,
    prta6a_metadata character varying(255),
    prta6a_metadata_comment text,
    prta2 timestamp without time zone,
    prta2_metadata character varying(255),
    prta2_metadata_comment text,
    prta5 character varying(255),
    prta5_metadata character varying(255),
    prta5_metadata_comment text,
    prta8 integer,
    prta8_metadata character varying(255),
    prta8_metadata_comment text,
    prta7b character varying(255),
    prta7b_metadata character varying(255),
    prta7b_metadata_comment text,
    prta6a1 integer,
    prta6a1_metadata character varying(255),
    prta6a1_metadata_comment text,
    prta12 real,
    prta12_metadata character varying(255),
    prta12_metadata_comment text,
    prta5a integer,
    prta5a_metadata character varying(255),
    prta5a_metadata_comment text,
    prta7 character varying(255),
    prta7_metadata character varying(255),
    prta7_metadata_comment text,
    prta1 timestamp without time zone,
    prta1_metadata character varying(255),
    prta1_metadata_comment text,
    prta7a character varying(255),
    prta7a_metadata character varying(255),
    prta7a_metadata_comment text,
    prtaobs boolean,
    prtaobs_metadata character varying(255),
    prtaobs_metadata_comment text,
    prtacom text,
    prtacom_metadata character varying(255),
    prtacom_metadata_comment text,
    prta8a integer,
    prta8a_metadata character varying(255),
    prta8a_metadata_comment text,
    prta9 real,
    prta9_metadata character varying(255),
    prta9_metadata_comment text,
    prta12a boolean,
    prta12a_metadata character varying(255),
    prta12a_metadata_comment text,
    prta6b timestamp without time zone,
    prta6b_metadata character varying(255),
    prta6b_metadata_comment text,
    prta6b2 integer,
    prta6b2_metadata character varying(255),
    prta6b2_metadata_comment text,
    prta6b1 integer,
    prta6b1_metadata character varying(255),
    prta6b1_metadata_comment text,
    prta6b3 integer,
    prta6b3_metadata character varying(255),
    prta6b3_metadata_comment text,
    prta3a integer,
    prta3a_metadata character varying(255),
    prta3a_metadata_comment text
);


ALTER TABLE coorte.prt_a OWNER TO postgres;

--
-- Name: qvd_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE qvd_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    qvda5a character varying(255),
    qvda5a_metadata character varying(255),
    qvda5a_metadata_comment text,
    qvda5c character varying(255),
    qvda5c_metadata character varying(255),
    qvda5c_metadata_comment text,
    qvda5b character varying(255),
    qvda5b_metadata character varying(255),
    qvda5b_metadata_comment text,
    qvda6 character varying(255),
    qvda6_metadata character varying(255),
    qvda6_metadata_comment text,
    qvda8 character varying(255),
    qvda8_metadata character varying(255),
    qvda8_metadata_comment text,
    qvda10 character varying(255),
    qvda10_metadata character varying(255),
    qvda10_metadata_comment text,
    qvda7 character varying(255),
    qvda7_metadata character varying(255),
    qvda7_metadata_comment text,
    qvda11d character varying(255),
    qvda11d_metadata character varying(255),
    qvda11d_metadata_comment text,
    qvda11a character varying(255),
    qvda11a_metadata character varying(255),
    qvda11a_metadata_comment text,
    qvda11c character varying(255),
    qvda11c_metadata character varying(255),
    qvda11c_metadata_comment text,
    qvda11b character varying(255),
    qvda11b_metadata character varying(255),
    qvda11b_metadata_comment text,
    qvda3h character varying(255),
    qvda3h_metadata character varying(255),
    qvda3h_metadata_comment text,
    qvda3e character varying(255),
    qvda3e_metadata character varying(255),
    qvda3e_metadata_comment text,
    qvda3d character varying(255),
    qvda3d_metadata character varying(255),
    qvda3d_metadata_comment text,
    qvda3i character varying(255),
    qvda3i_metadata character varying(255),
    qvda3i_metadata_comment text,
    qvda3a character varying(255),
    qvda3a_metadata character varying(255),
    qvda3a_metadata_comment text,
    qvda3g character varying(255),
    qvda3g_metadata character varying(255),
    qvda3g_metadata_comment text,
    qvda3f character varying(255),
    qvda3f_metadata character varying(255),
    qvda3f_metadata_comment text,
    qvda3j character varying(255),
    qvda3j_metadata character varying(255),
    qvda3j_metadata_comment text,
    qvda3c character varying(255),
    qvda3c_metadata character varying(255),
    qvda3c_metadata_comment text,
    qvda3b character varying(255),
    qvda3b_metadata character varying(255),
    qvda3b_metadata_comment text,
    qvda4d character varying(255),
    qvda4d_metadata character varying(255),
    qvda4d_metadata_comment text,
    qvda4a character varying(255),
    qvda4a_metadata character varying(255),
    qvda4a_metadata_comment text,
    qvda4c character varying(255),
    qvda4c_metadata character varying(255),
    qvda4c_metadata_comment text,
    qvda4b character varying(255),
    qvda4b_metadata character varying(255),
    qvda4b_metadata_comment text,
    qvda1 character varying(255),
    qvda1_metadata character varying(255),
    qvda1_metadata_comment text,
    qvda2 character varying(255),
    qvda2_metadata character varying(255),
    qvda2_metadata_comment text,
    qvda9h character varying(255),
    qvda9h_metadata character varying(255),
    qvda9h_metadata_comment text,
    qvda9e character varying(255),
    qvda9e_metadata character varying(255),
    qvda9e_metadata_comment text,
    qvda9d character varying(255),
    qvda9d_metadata character varying(255),
    qvda9d_metadata_comment text,
    qvda9i character varying(255),
    qvda9i_metadata character varying(255),
    qvda9i_metadata_comment text,
    qvda9a character varying(255),
    qvda9a_metadata character varying(255),
    qvda9a_metadata_comment text,
    qvda9g character varying(255),
    qvda9g_metadata character varying(255),
    qvda9g_metadata_comment text,
    qvda9f character varying(255),
    qvda9f_metadata character varying(255),
    qvda9f_metadata_comment text,
    qvda9c character varying(255),
    qvda9c_metadata character varying(255),
    qvda9c_metadata_comment text,
    qvda9b character varying(255),
    qvda9b_metadata character varying(255),
    qvda9b_metadata_comment text
);


ALTER TABLE coorte.qvd_a OWNER TO postgres;

--
-- Name: qvds_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE qvds_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    qvdsa5a character varying(255),
    qvdsa5a_metadata character varying(255),
    qvdsa5a_metadata_comment text,
    qvdsa5c character varying(255),
    qvdsa5c_metadata character varying(255),
    qvdsa5c_metadata_comment text,
    qvdsa5b character varying(255),
    qvdsa5b_metadata character varying(255),
    qvdsa5b_metadata_comment text,
    qvdsa2 character varying(255),
    qvdsa2_metadata character varying(255),
    qvdsa2_metadata_comment text,
    qvdsa1 character varying(255),
    qvdsa1_metadata character varying(255),
    qvdsa1_metadata_comment text,
    qvdsa11d character varying(255),
    qvdsa11d_metadata character varying(255),
    qvdsa11d_metadata_comment text,
    qvdsa11a character varying(255),
    qvdsa11a_metadata character varying(255),
    qvdsa11a_metadata_comment text,
    qvdsa11c character varying(255),
    qvdsa11c_metadata character varying(255),
    qvdsa11c_metadata_comment text,
    qvdsa11b character varying(255),
    qvdsa11b_metadata character varying(255),
    qvdsa11b_metadata_comment text,
    qvdsa7 character varying(255),
    qvdsa7_metadata character varying(255),
    qvdsa7_metadata_comment text,
    qvdsa10 character varying(255),
    qvdsa10_metadata character varying(255),
    qvdsa10_metadata_comment text,
    qvdsa8 character varying(255),
    qvdsa8_metadata character varying(255),
    qvdsa8_metadata_comment text,
    qvdsa3h character varying(255),
    qvdsa3h_metadata character varying(255),
    qvdsa3h_metadata_comment text,
    qvdsa3e character varying(255),
    qvdsa3e_metadata character varying(255),
    qvdsa3e_metadata_comment text,
    qvdsa3d character varying(255),
    qvdsa3d_metadata character varying(255),
    qvdsa3d_metadata_comment text,
    qvdsa3i character varying(255),
    qvdsa3i_metadata character varying(255),
    qvdsa3i_metadata_comment text,
    qvdsa3a character varying(255),
    qvdsa3a_metadata character varying(255),
    qvdsa3a_metadata_comment text,
    qvdsa3g character varying(255),
    qvdsa3g_metadata character varying(255),
    qvdsa3g_metadata_comment text,
    qvdsa3f character varying(255),
    qvdsa3f_metadata character varying(255),
    qvdsa3f_metadata_comment text,
    qvdsa3j character varying(255),
    qvdsa3j_metadata character varying(255),
    qvdsa3j_metadata_comment text,
    qvdsa3c character varying(255),
    qvdsa3c_metadata character varying(255),
    qvdsa3c_metadata_comment text,
    dvdsa3b character varying(255),
    dvdsa3b_metadata character varying(255),
    dvdsa3b_metadata_comment text,
    qvdsa4d character varying(255),
    qvdsa4d_metadata character varying(255),
    qvdsa4d_metadata_comment text,
    qvdsa4a character varying(255),
    qvdsa4a_metadata character varying(255),
    qvdsa4a_metadata_comment text,
    qvdsa4c character varying(255),
    qvdsa4c_metadata character varying(255),
    qvdsa4c_metadata_comment text,
    qvdsa4b character varying(255),
    qvdsa4b_metadata character varying(255),
    qvdsa4b_metadata_comment text,
    qvdsa9h character varying(255),
    qvdsa9h_metadata character varying(255),
    qvdsa9h_metadata_comment text,
    qvdsa9e character varying(255),
    qvdsa9e_metadata character varying(255),
    qvdsa9e_metadata_comment text,
    qvdsa9d character varying(255),
    qvdsa9d_metadata character varying(255),
    qvdsa9d_metadata_comment text,
    qvdsa9i character varying(255),
    qvdsa9i_metadata character varying(255),
    qvdsa9i_metadata_comment text,
    qvdsa9a character varying(255),
    qvdsa9a_metadata character varying(255),
    qvdsa9a_metadata_comment text,
    qvdsa9g character varying(255),
    qvdsa9g_metadata character varying(255),
    qvdsa9g_metadata_comment text,
    qvdsa9f character varying(255),
    qvdsa9f_metadata character varying(255),
    qvdsa9f_metadata_comment text,
    qvdsa9c character varying(255),
    qvdsa9c_metadata character varying(255),
    qvdsa9c_metadata_comment text,
    qvdsa9b character varying(255),
    qvdsa9b_metadata character varying(255),
    qvdsa9b_metadata_comment text,
    qvdsa6 character varying(255),
    qvdsa6_metadata character varying(255),
    qvdsa6_metadata_comment text
);


ALTER TABLE coorte.qvds_a OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: ran_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ran_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ran_a_seq OWNER TO postgres;

SET search_path = coorte, pg_catalog;

--
-- Name: ran_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE ran_a (
    id integer DEFAULT nextval('public.ran_a_seq'::regclass) NOT NULL,
    rana6 boolean,
    rana4 boolean,
    rana7 boolean,
    rana5 boolean,
    rana3 boolean,
    rana2 boolean,
    realization_date timestamp without time zone,
    rana8 boolean,
    rana1 boolean,
    ranacom2 character varying(255),
    ranacom1 character varying(255),
    participant_id integer,
    user_id integer
);


ALTER TABLE coorte.ran_a OWNER TO postgres;

--
-- Name: rcp_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE rcp_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    rcpa2 character varying(255),
    rcpa2_metadata character varying(255),
    rcpa2_metadata_comment text,
    rcpacom text,
    rcpacom_metadata character varying(255),
    rcpacom_metadata_comment text,
    rcpa1ah integer,
    rcpa1a_metadata character varying(255),
    rcpa1a_metadata_comment text,
    rcpa1am integer,
    rcpa2bh integer,
    rcpa2b_metadata character varying(255),
    rcpa2b_metadata_comment text,
    rcpa2bm integer,
    rcpa1bh integer,
    rcpa1b_metadata character varying(255),
    rcpa1b_metadata_comment text,
    rcpa1bm integer,
    rcpa3 character varying(255),
    rcpa3_metadata character varying(255),
    rcpa3_metadata_comment text,
    rcpa1h integer,
    rcpa1_metadata character varying(255),
    rcpa1_metadata_comment text,
    rcpa1m integer,
    rcpaobs boolean,
    rcpaobs_metadata character varying(255),
    rcpaobs_metadata_comment text,
    rcpa2ah integer,
    rcpa2a_metadata character varying(255),
    rcpa2a_metadata_comment text,
    rcpa2am integer
);


ALTER TABLE coorte.rcp_a OWNER TO postgres;

--
-- Name: rcps_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE rcps_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    rcpsa2 character varying(255),
    rcpsa2_metadata character varying(255),
    rcpsa2_metadata_comment text,
    rcpsacom text,
    rcpsacom_metadata character varying(255),
    rcpsacom_metadata_comment text,
    rcpsa1ah integer,
    rcpsa1a_metadata character varying(255),
    rcpsa1a_metadata_comment text,
    rcpsa1am integer,
    rcpsa1bh integer,
    rcpsa1b_metadata character varying(255),
    rcpsa1b_metadata_comment text,
    rcpsa1bm integer,
    rcpsa3 character varying(255),
    rcpsa3_metadata character varying(255),
    rcpsa3_metadata_comment text,
    rcpsa1h integer,
    rcpsa1_metadata character varying(255),
    rcpsa1_metadata_comment text,
    rcpsa1m integer,
    rcpsa2ah integer,
    rcpsa2a_metadata character varying(255),
    rcpsa2a_metadata_comment text,
    rcpsa2am integer,
    rcpsaobs boolean,
    rcpsaobs_metadata character varying(255),
    rcpsaobs_metadata_comment text,
    rcpsa2bh integer,
    rcpsa2b_metadata character varying(255),
    rcpsa2b_metadata_comment text,
    rcpsa2bm integer
);


ALTER TABLE coorte.rcps_a OWNER TO postgres;

--
-- Name: rdv_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE rdv_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    rdva1c2 boolean,
    rdva1c2_metadata character varying(255),
    rdva1c2_metadata_comment text,
    rdva2a2 boolean,
    rdva2a2_metadata character varying(255),
    rdva2a2_metadata_comment text,
    rdva2a3 boolean,
    rdva2a3_metadata character varying(255),
    rdva2a3_metadata_comment text,
    rdva1a character varying(255),
    rdva1a_metadata character varying(255),
    rdva1a_metadata_comment text,
    rdva2a1 boolean,
    rdva2a1_metadata character varying(255),
    rdva2a1_metadata_comment text,
    rdva2a4 boolean,
    rdva2a4_metadata character varying(255),
    rdva2a4_metadata_comment text,
    rdva1c3 boolean,
    rdva1c3_metadata character varying(255),
    rdva1c3_metadata_comment text,
    rdva1c5 boolean,
    rdva2a5 boolean,
    rdva2a5_metadata character varying(255),
    rdva2a5_metadata_comment text,
    rdva1c5_metadata character varying(255),
    rdva1c5_metadata_comment text,
    rdva1 character varying(255),
    rdva1_metadata character varying(255),
    rdva1_metadata_comment text,
    rdva1b character varying(255),
    rdva1b_metadata character varying(255),
    rdva1b_metadata_comment text,
    rdva1c1 boolean,
    rdva1c1_metadata character varying(255),
    rdva1c1_metadata_comment text,
    rdva1c4 boolean,
    rdva1c4_metadata character varying(255),
    rdva1c4_metadata_comment text,
    rdva2 character varying(255),
    rdva2_metadata character varying(255),
    rdva2_metadata_comment text,
    rdva1c5q text,
    rdva2a5q text,
    rdva2a5q_metadata character varying(255),
    rdva2a5q_metadata_comment text,
    rdva1c5q_metadata character varying(255),
    rdva1c5q_metadata_comment text
);


ALTER TABLE coorte.rdv_a OWNER TO postgres;

--
-- Name: rdvs_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE rdvs_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    rdvsa1c2 boolean,
    rdvsa1c2_metadata character varying(255),
    rdvsa1c2_metadata_comment text,
    rdvsa2a2 boolean,
    rdvsa2a2_metadata character varying(255),
    rdvsa2a2_metadata_comment text,
    rdvsa2a3 boolean,
    rdvsa2a3_metadata character varying(255),
    rdvsa2a3_metadata_comment text,
    rdvsa1a character varying(255),
    rdvsa1a_metadata character varying(255),
    rdvsa1a_metadata_comment text,
    rdvsa2a1 boolean,
    rdvsa2a1_metadata character varying(255),
    rdvsa2a1_metadata_comment text,
    rdvsa2a4 boolean,
    rdvsa2a4_metadata character varying(255),
    rdvsa2a4_metadata_comment text,
    rdvsa1c3 boolean,
    rdvsa1c3_metadata character varying(255),
    rdvsa1c3_metadata_comment text,
    rdvsa1c5 boolean,
    rdvsa2a5 boolean,
    rdvsa2a5_metadata character varying(255),
    rdvsa2a5_metadata_comment text,
    rdvsa1c5_metadata character varying(255),
    rdvsa1c5_metadata_comment text,
    rdvsa1 character varying(255),
    rdvsa1_metadata character varying(255),
    rdvsa1_metadata_comment text,
    rdvsa1b character varying(255),
    rdvsa1b_metadata character varying(255),
    rdvsa1b_metadata_comment text,
    rdvsa1c1 boolean,
    rdvsa1c1_metadata character varying(255),
    rdvsa1c1_metadata_comment text,
    rdvsa1c4 boolean,
    rdvsa1c4_metadata character varying(255),
    rdvsa1c4_metadata_comment text,
    rdvsa2 character varying(255),
    rdvsa2_metadata character varying(255),
    rdvsa2_metadata_comment text,
    rdvsa1c5q text,
    rdvsa2a5q text,
    rdvsa2a5q_metadata character varying(255),
    rdvsa2a5q_metadata_comment text,
    rdvsa1c5q_metadata character varying(255),
    rdvsa1c5q_metadata_comment text
);


ALTER TABLE coorte.rdvs_a OWNER TO postgres;

--
-- Name: rpn_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE rpn_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    rpna14a boolean,
    rpna14a_metadata character varying(255),
    rpna14a_metadata_comment text,
    rpna19 real,
    rpna19_metadata character varying(255),
    rpna19_metadata_comment text,
    rpna19g real,
    rpna19g_metadata character varying(255),
    rpna19g_metadata_comment text,
    rpna19g2 real,
    rpna19g2_metadata character varying(255),
    rpna19g2_metadata_comment text,
    rpna18 real,
    rpna18_metadata character varying(255),
    rpna18_metadata_comment text,
    rpna18g real,
    rpna18g_metadata character varying(255),
    rpna18g_metadata_comment text,
    rpna18g2 real,
    rpna18g2_metadata character varying(255),
    rpna18g2_metadata_comment text,
    rpna17 integer,
    rpna17_metadata character varying(255),
    rpna17_metadata_comment text,
    rpna17g integer,
    rpna17g_metadata character varying(255),
    rpna17g_metadata_comment text,
    rpna17g2 integer,
    rpna17g2_metadata character varying(255),
    rpna17g2_metadata_comment text,
    rpna14e boolean,
    rpna14e_metadata character varying(255),
    rpna14e_metadata_comment text,
    rpna8 timestamp without time zone,
    rpna8_metadata character varying(255),
    rpna8_metadata_comment text,
    rpna11 timestamp without time zone,
    rpna11_metadata character varying(255),
    rpna11_metadata_comment text,
    rpna5 timestamp without time zone,
    rpna5_metadata character varying(255),
    rpna5_metadata_comment text,
    rpna4 timestamp without time zone,
    rpna4_metadata character varying(255),
    rpna4_metadata_comment text,
    rpna9 timestamp without time zone,
    rpna9_metadata character varying(255),
    rpna9_metadata_comment text,
    rpna1 timestamp without time zone,
    rpna1_metadata character varying(255),
    rpna1_metadata_comment text,
    rpna7 timestamp without time zone,
    rpna7_metadata character varying(255),
    rpna7_metadata_comment text,
    rpna6 timestamp without time zone,
    rpna6_metadata character varying(255),
    rpna6_metadata_comment text,
    rpna10 timestamp without time zone,
    rpna10_metadata character varying(255),
    rpna10_metadata_comment text,
    rpna13 timestamp without time zone,
    rpna13_metadata character varying(255),
    rpna13_metadata_comment text,
    rpna3 timestamp without time zone,
    rpna3_metadata character varying(255),
    rpna3_metadata_comment text,
    rpna12 timestamp without time zone,
    rpna12_metadata character varying(255),
    rpna12_metadata_comment text,
    rpna2 timestamp without time zone,
    rpna2_metadata character varying(255),
    rpna2_metadata_comment text,
    rpna21z integer,
    rpna21z_metadata character varying(255),
    rpna21z_metadata_comment text,
    rpna21g2z integer,
    rpna21g2z_metadata character varying(255),
    rpna21g2z_metadata_comment text,
    rpna21gz integer,
    rpna21gz_metadata character varying(255),
    rpna21gz_metadata_comment text,
    rpna8b2 integer,
    rpna8b2_metadata character varying(255),
    rpna8b2_metadata_comment text,
    rpna11b2 integer,
    rpna11b2_metadata character varying(255),
    rpna11b2_metadata_comment text,
    rpna5b2 integer,
    rpna5b2_metadata character varying(255),
    rpna5b2_metadata_comment text,
    rpna4b2 integer,
    rpna4b2_metadata character varying(255),
    rpna4b2_metadata_comment text,
    rpna9b2 integer,
    rpna9b2_metadata character varying(255),
    rpna9b2_metadata_comment text,
    rpna1b2 integer,
    rpna1b2_metadata character varying(255),
    rpna1b2_metadata_comment text,
    rpna7b2 integer,
    rpna7b2_metadata character varying(255),
    rpna7b2_metadata_comment text,
    rpna6b2 integer,
    rpna6b2_metadata character varying(255),
    rpna6b2_metadata_comment text,
    rpna10b2 integer,
    rpna10b2_metadata character varying(255),
    rpna10b2_metadata_comment text,
    rpna13b2 integer,
    rpna13b2_metadata character varying(255),
    rpna13b2_metadata_comment text,
    rpna3b2 integer,
    rpna3b2_metadata character varying(255),
    rpna3b2_metadata_comment text,
    rpna12b2 integer,
    rpna12b2_metadata character varying(255),
    rpna12b2_metadata_comment text,
    rpna2b2 integer,
    rpna2b2_metadata character varying(255),
    rpna2b2_metadata_comment text,
    rpna21a boolean,
    rpna21a_metadata character varying(255),
    rpna21a_metadata_comment text,
    rpna21ag boolean,
    rpna21ag_metadata character varying(255),
    rpna21ag_metadata_comment text,
    rpna21ag2 boolean,
    rpna21ag2_metadata character varying(255),
    rpna21ag2_metadata_comment text,
    rpna14d boolean,
    rpna14d_metadata character varying(255),
    rpna14d_metadata_comment text,
    rpna20b integer,
    rpna20b_metadata character varying(255),
    rpna20b_metadata_comment text,
    rpna20gb integer,
    rpna20gb_metadata character varying(255),
    rpna20gb_metadata_comment text,
    rpna20g2b integer,
    rpna20g2b_metadata character varying(255),
    rpna20g2b_metadata_comment text,
    rpna20a integer,
    rpna20a_metadata character varying(255),
    rpna20a_metadata_comment text,
    rpna20ga integer,
    rpna20ga_metadata character varying(255),
    rpna20ga_metadata_comment text,
    rpna20g2a integer,
    rpna20g2a_metadata character varying(255),
    rpna20g2a_metadata_comment text,
    rpna21 integer,
    rpna21_metadata character varying(255),
    rpna21_metadata_comment text,
    rpna21g integer,
    rpna21g_metadata character varying(255),
    rpna21g_metadata_comment text,
    rpna21g2 integer,
    rpna21g2_metadata character varying(255),
    rpna21g2_metadata_comment text,
    rpna14_metadata character varying(255),
    rpna14_metadata_comment text,
    rpna14b boolean,
    rpna14b_metadata character varying(255),
    rpna14b_metadata_comment text,
    rpna22 integer,
    rpna22_metadata character varying(255),
    rpna22_metadata_comment text,
    rpna16a integer,
    rpna16a_metadata character varying(255),
    rpna16a_metadata_comment text,
    rpna14f boolean,
    rpna14f_metadata character varying(255),
    rpna14f_metadata_comment text,
    rpna15 integer,
    rpna15_metadata character varying(255),
    rpna15_metadata_comment text,
    rpna14g boolean,
    rpna14g_metadata character varying(255),
    rpna14g_metadata_comment text,
    rpna14c boolean,
    rpna14c_metadata character varying(255),
    rpna14c_metadata_comment text,
    rpna21group_metadata character varying(255),
    rpna21group_metadata_comment text,
    rpna21twinonegroup_metadata character varying(255),
    rpna21twinonegroup_metadata_comment text,
    rpna21twintwogroup_metadata character varying(255),
    rpna21twintwogroup_metadata_comment text,
    rpna21c boolean,
    rpna21c_metadata character varying(255),
    rpna21c_metadata_comment text,
    rpna21cg boolean,
    rpna21cg_metadata character varying(255),
    rpna21cg_metadata_comment text,
    rpna21cg2 boolean,
    rpna21cg2_metadata character varying(255),
    rpna21cg2_metadata_comment text,
    rpna8b1 integer,
    rpna8b1_metadata character varying(255),
    rpna8b1_metadata_comment text,
    rpna11b1 integer,
    rpna11b1_metadata character varying(255),
    rpna11b1_metadata_comment text,
    rpna5b1 integer,
    rpna5b1_metadata character varying(255),
    rpna5b1_metadata_comment text,
    rpna4b1 integer,
    rpna4b1_metadata character varying(255),
    rpna4b1_metadata_comment text,
    rpna9b1 integer,
    rpna9b1_metadata character varying(255),
    rpna9b1_metadata_comment text,
    rpna1b1 integer,
    rpna1b1_metadata character varying(255),
    rpna1b1_metadata_comment text,
    rpna7b1 integer,
    rpna7b1_metadata character varying(255),
    rpna7b1_metadata_comment text,
    rpna6b1 integer,
    rpna6b1_metadata character varying(255),
    rpna6b1_metadata_comment text,
    rpna10b1 integer,
    rpna10b1_metadata character varying(255),
    rpna10b1_metadata_comment text,
    rpna13b1 integer,
    rpna13b1_metadata character varying(255),
    rpna13b1_metadata_comment text,
    rpna3b1 integer,
    rpna3b1_metadata character varying(255),
    rpna3b1_metadata_comment text,
    rpna12b1 integer,
    rpna12b1_metadata character varying(255),
    rpna12b1_metadata_comment text,
    rpna2b1 integer,
    rpna2b1_metadata character varying(255),
    rpna2b1_metadata_comment text,
    rpna16 character varying(255),
    rpna16_metadata character varying(255),
    rpna16_metadata_comment text,
    rpna21b boolean,
    rpna21b_metadata character varying(255),
    rpna21b_metadata_comment text,
    rpna21bg boolean,
    rpna21bg_metadata character varying(255),
    rpna21bg_metadata_comment text,
    rpna21bg2 boolean,
    rpna21bg2_metadata character varying(255),
    rpna21bg2_metadata_comment text,
    rpna8a real,
    rpna8a_metadata character varying(255),
    rpna8a_metadata_comment text,
    rpna11a real,
    rpna11a_metadata character varying(255),
    rpna11a_metadata_comment text,
    rpna5a real,
    rpna5a_metadata character varying(255),
    rpna5a_metadata_comment text,
    rpna4a real,
    rpna4a_metadata character varying(255),
    rpna4a_metadata_comment text,
    rpna9a real,
    rpna9a_metadata character varying(255),
    rpna9a_metadata_comment text,
    rpna1a real,
    rpna1a_metadata character varying(255),
    rpna1a_metadata_comment text,
    rpna7a real,
    rpna7a_metadata character varying(255),
    rpna7a_metadata_comment text,
    rpna6a real,
    rpna6a_metadata character varying(255),
    rpna6a_metadata_comment text,
    rpna10a real,
    rpna10a_metadata character varying(255),
    rpna10a_metadata_comment text,
    rpna13a real,
    rpna13a_metadata character varying(255),
    rpna13a_metadata_comment text,
    rpna3a real,
    rpna3a_metadata character varying(255),
    rpna3a_metadata_comment text,
    rpna12a real,
    rpna12a_metadata character varying(255),
    rpna12a_metadata_comment text,
    rpna2a real,
    rpna2a_metadata character varying(255),
    rpna2a_metadata_comment text,
    rpna14gq text,
    rpna14gq_metadata character varying(255),
    rpna14gq_metadata_comment text
);


ALTER TABLE coorte.rpn_a OWNER TO postgres;

--
-- Name: sau_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE sau_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    saua2 character varying(255),
    saua2_metadata character varying(255),
    saua2_metadata_comment text,
    saua5a3 boolean,
    saua5a3_metadata character varying(255),
    saua5a3_metadata_comment text,
    saua5a4 boolean,
    saua5a4_metadata character varying(255),
    saua5a4_metadata_comment text,
    saua3a integer,
    saua3a_metadata character varying(255),
    saua3a_metadata_comment text,
    saua5a2 boolean,
    saua5a2_metadata character varying(255),
    saua5a2_metadata_comment text,
    saua5a5 boolean,
    saua5a5_metadata character varying(255),
    saua5a5_metadata_comment text,
    saua5a1 boolean,
    saua5a1_metadata character varying(255),
    saua5a1_metadata_comment text,
    saua3 character varying(255),
    saua3_metadata character varying(255),
    saua3_metadata_comment text,
    saua4 character varying(255),
    saua4_metadata character varying(255),
    saua4_metadata_comment text,
    saua6 character varying(255),
    saua6_metadata character varying(255),
    saua6_metadata_comment text,
    saua5 character varying(255),
    saua5_metadata character varying(255),
    saua5_metadata_comment text,
    saua4a text,
    saua4a_metadata character varying(255),
    saua4a_metadata_comment text,
    saua5a3q text,
    saua5a3q_metadata character varying(255),
    saua5a3q_metadata_comment text,
    saua5a4q text,
    saua5a4q_metadata character varying(255),
    saua5a4q_metadata_comment text,
    saua6a text,
    saua6a_metadata character varying(255),
    saua6a_metadata_comment text,
    saua5a5q text,
    saua5a5q_metadata character varying(255),
    saua5a5q_metadata_comment text,
    saua5a1q text,
    saua5a1q_metadata character varying(255),
    saua5a1q_metadata_comment text,
    saua5a2q character varying(255),
    saua5a2q_metadata character varying(255),
    saua5a2q_metadata_comment text
);


ALTER TABLE coorte.sau_a OWNER TO postgres;

--
-- Name: saus_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE saus_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    sausa3a integer,
    sausa3a_metadata character varying(255),
    sausa3a_metadata_comment text,
    sausa5a3 boolean,
    sausa5a3_metadata character varying(255),
    sausa5a3_metadata_comment text,
    sausa5a4 boolean,
    sausa5a4_metadata character varying(255),
    sausa5a4_metadata_comment text,
    sausa5a2 boolean,
    sausa5a2_metadata character varying(255),
    sausa5a2_metadata_comment text,
    sausa5a5 boolean,
    sausa5a5_metadata character varying(255),
    sausa5a5_metadata_comment text,
    sausa6 character varying(255),
    sausa6_metadata character varying(255),
    sausa6_metadata_comment text,
    sausa5a1 boolean,
    sausa5a1_metadata character varying(255),
    sausa5a1_metadata_comment text,
    sausa5 character varying(255),
    sausa5_metadata character varying(255),
    sausa5_metadata_comment text,
    sausa4 character varying(255),
    sausa4_metadata character varying(255),
    sausa4_metadata_comment text,
    sausa5a3q text,
    sausa5a3q_metadata character varying(255),
    sausa5a3q_metadata_comment text,
    sausa5a4q text,
    sausa5a4q_metadata character varying(255),
    sausa5a4q_metadata_comment text,
    sausa4a text,
    sausa4a_metadata character varying(255),
    sausa4a_metadata_comment text,
    sausa5a5q text,
    sausa6a text,
    sausa6a_metadata character varying(255),
    sausa6a_metadata_comment text,
    sausa5a5q_metadata character varying(255),
    sausa5a5q_metadata_comment text,
    sausa5a1q text,
    sausa5a1q_metadata character varying(255),
    sausa5a1q_metadata_comment text,
    sausa5a2q character varying(255),
    sausa5a2q_metadata character varying(255),
    sausa5a2q_metadata_comment text,
    sausa3 character varying(255),
    sausa3_metadata character varying(255),
    sausa3_metadata_comment text
);


ALTER TABLE coorte.saus_a OWNER TO postgres;

--
-- Name: son_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE son_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    sona11 character varying(255),
    sona11_metadata character varying(255),
    sona11_metadata_comment text,
    sona10 character varying(255),
    sona10_metadata character varying(255),
    sona10_metadata_comment text,
    sona5e character varying(255),
    sona5e_metadata character varying(255),
    sona5e_metadata_comment text,
    sona5j1 text,
    sona5j1_metadata character varying(255),
    sona5j1_metadata_comment text,
    sona5g character varying(255),
    sona5g_metadata character varying(255),
    sona5g_metadata_comment text,
    sona5f character varying(255),
    sona5f_metadata character varying(255),
    sona5f_metadata_comment text,
    sona5c character varying(255),
    sona5c_metadata character varying(255),
    sona5c_metadata_comment text,
    sona5h character varying(255),
    sona5h_metadata character varying(255),
    sona5h_metadata_comment text,
    sona5i character varying(255),
    sona5i_metadata character varying(255),
    sona5i_metadata_comment text,
    sona8 character varying(255),
    sona8_metadata character varying(255),
    sona8_metadata_comment text,
    sona9 character varying(255),
    sona9_metadata character varying(255),
    sona9_metadata_comment text,
    sona4h integer,
    sona4_metadata character varying(255),
    sona4_metadata_comment text,
    sona4m integer,
    sona5j2 character varying(255),
    sona5j2_metadata character varying(255),
    sona5j2_metadata_comment text,
    sona5d character varying(255),
    sona5d_metadata character varying(255),
    sona5d_metadata_comment text,
    sona5j character varying(255),
    sona5j_metadata character varying(255),
    sona5j_metadata_comment text,
    sona5a character varying(255),
    sona5a_metadata character varying(255),
    sona5a_metadata_comment text,
    sona6 character varying(255),
    sona6_metadata character varying(255),
    sona6_metadata_comment text,
    sona1h integer,
    sona1_metadata character varying(255),
    sona1_metadata_comment text,
    sona1m integer,
    sona2h integer,
    sona2_metadata character varying(255),
    sona2_metadata_comment text,
    sona2m integer,
    sona3h integer,
    sona3_metadata character varying(255),
    sona3_metadata_comment text,
    sona3m integer,
    sona7 character varying(255),
    sona7_metadata character varying(255),
    sona7_metadata_comment text,
    sona5b character varying(255),
    sona5b_metadata character varying(255),
    sona5b_metadata_comment text
);


ALTER TABLE coorte.son_a OWNER TO postgres;

--
-- Name: sons_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE sons_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    sonsa5e character varying(255),
    sonsa5e_metadata character varying(255),
    sonsa5e_metadata_comment text,
    sonsa5j1 text,
    sonsa5j1_metadata character varying(255),
    sonsa5j1_metadata_comment text,
    sonsa5g character varying(255),
    sonsa5g_metadata character varying(255),
    sonsa5g_metadata_comment text,
    sonsa5f character varying(255),
    sonsa5f_metadata character varying(255),
    sonsa5f_metadata_comment text,
    sonsa5c character varying(255),
    sonsa5c_metadata character varying(255),
    sonsa5c_metadata_comment text,
    sonsa5h character varying(255),
    sonsa5h_metadata character varying(255),
    sonsa5h_metadata_comment text,
    sonsa5i character varying(255),
    sonsa5i_metadata character varying(255),
    sonsa5i_metadata_comment text,
    sonsa8 character varying(255),
    sonsa8_metadata character varying(255),
    sonsa8_metadata_comment text,
    sonsa9 character varying(255),
    sonsa9_metadata character varying(255),
    sonsa9_metadata_comment text,
    sonsa4h integer,
    sonsa4_metadata character varying(255),
    sonsa4_metadata_comment text,
    sonsa4m integer,
    sonsa5j2 character varying(255),
    sonsa5j2_metadata character varying(255),
    sonsa5j2_metadata_comment text,
    sonsa5d character varying(255),
    sonsa5d_metadata character varying(255),
    sonsa5d_metadata_comment text,
    sonsa5j character varying(255),
    sonsa5j_metadata character varying(255),
    sonsa5j_metadata_comment text,
    sonsa5a character varying(255),
    sonsa5a_metadata character varying(255),
    sonsa5a_metadata_comment text,
    sonsa6 character varying(255),
    sonsa6_metadata character varying(255),
    sonsa6_metadata_comment text,
    sonsa1h integer,
    sonsa1_metadata character varying(255),
    sonsa1_metadata_comment text,
    sonsa1m integer,
    sonsa2h integer,
    sonsa2_metadata character varying(255),
    sonsa2_metadata_comment text,
    sonsa2m integer,
    sonsa3h integer,
    sonsa3_metadata character varying(255),
    sonsa3_metadata_comment text,
    sonsa3m integer,
    sonsa7 character varying(255),
    sonsa7_metadata character varying(255),
    sonsa7_metadata_comment text,
    sonsa5b character varying(255),
    sonsa5b_metadata character varying(255),
    sonsa5b_metadata_comment text
);


ALTER TABLE coorte.sons_a OWNER TO postgres;

--
-- Name: tcc_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE tcc_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    tcca1 character varying(255),
    tcca1_metadata character varying(255),
    tcca1_metadata_comment text,
    tcca2 character varying(255),
    tcca2_metadata character varying(255),
    tcca2_metadata_comment text
);


ALTER TABLE coorte.tcc_a OWNER TO postgres;

--
-- Name: tce_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE tce_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    tcea2 character varying(255),
    tcea2_metadata character varying(255),
    tcea2_metadata_comment text,
    tcea1 character varying(255),
    tcea1_metadata character varying(255),
    tcea1_metadata_comment text
);


ALTER TABLE coorte.tce_a OWNER TO postgres;

--
-- Name: tcm_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE tcm_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    tcma5f integer,
    tcma5f_metadata character varying(255),
    tcma5f_metadata_comment text,
    tcma2h integer,
    tcma2_metadata character varying(255),
    tcma2_metadata_comment text,
    tcma2m integer,
    tcma3f integer,
    tcma3f_metadata character varying(255),
    tcma3f_metadata_comment text,
    tcma3i integer,
    tcma3i_metadata character varying(255),
    tcma3i_metadata_comment text,
    tcma4f integer,
    tcma4f_metadata character varying(255),
    tcma4f_metadata_comment text,
    tcma1h integer,
    tcma1_metadata character varying(255),
    tcma1_metadata_comment text,
    tcma1m integer
);


ALTER TABLE coorte.tcm_a OWNER TO postgres;

--
-- Name: ttg_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE ttg_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    liua9b1 integer,
    liua9b1_metadata character varying(255),
    liua9b1_metadata_comment text,
    liua9b timestamp without time zone,
    liua9b_metadata character varying(255),
    liua9b_metadata_comment text,
    liua9b2 integer,
    liua9b2_metadata character varying(255),
    liua9b2_metadata_comment text
);


ALTER TABLE coorte.ttg_a OWNER TO postgres;

--
-- Name: ttps_a; Type: TABLE; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE TABLE ttps_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    ttpsa2a integer,
    ttpsa2a_metadata character varying(255),
    ttpsa2a_metadata_comment text,
    ttpsa2b integer,
    ttpsa2b_metadata character varying(255),
    ttpsa2b_metadata_comment text,
    ttpsa1 timestamp without time zone,
    ttpsa1_metadata character varying(255),
    ttpsa1_metadata_comment text
);


ALTER TABLE coorte.ttps_a OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: activity_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE activity_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_seq OWNER TO postgres;

--
-- Name: activity; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE activity (
    id integer DEFAULT nextval('activity_seq'::regclass) NOT NULL,
    activity_category character varying(255),
    creation_date timestamp without time zone,
    finalization_date timestamp without time zone,
    realization_date timestamp without time zone,
    status character varying(255),
    offline_data_entry integer,
    participant_id integer NOT NULL,
    activity_type_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.activity OWNER TO postgres;

--
-- Name: activity_type_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE activity_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_type_seq OWNER TO postgres;

--
-- Name: activity_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE activity_type (
    id integer DEFAULT nextval('activity_type_seq'::regclass) NOT NULL,
    activity_group character varying(20),
    activity_order integer,
    activity_shortname character varying(5),
    available boolean,
    form_type character varying(20),
    version character(1)
);


ALTER TABLE public.activity_type OWNER TO postgres;

--
-- Name: offline_data_entry_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE offline_data_entry_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offline_data_entry_seq OWNER TO postgres;

--
-- Name: offline_data_entry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE offline_data_entry (
    id integer DEFAULT nextval('offline_data_entry_seq'::regclass) NOT NULL,
    date timestamp without time zone,
    user_id integer
);


ALTER TABLE public.offline_data_entry OWNER TO postgres;

--
-- Name: participant_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE participant_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.participant_seq OWNER TO postgres;

--
-- Name: participant; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE participant (
    id integer DEFAULT nextval('participant_seq'::regclass) NOT NULL,
    birthdate date,
    fieldcenter character varying(20),
    "group" character varying(20),
    health_record_id character varying(20),
    main_contact character varying(255),
    mother_name character varying(80),
    name character varying(80),
    recruitment_number integer,
    status_in_study character varying(255)
);


ALTER TABLE public.participant OWNER TO postgres;

--
-- Name: user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_seq OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "user" (
    id integer DEFAULT nextval('user_seq'::regclass) NOT NULL,
    code character varying(3),
    email character varying(80),
    fieldcenter character varying(255),
    name character varying(80),
    password character varying(80),
    username character varying(20)
);


ALTER TABLE public."user" OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aaf_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aaf_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aafadataapini, a.finalization_date AS aafadataapfim, o.date AS aafadataoffline, u.code AS aafaaferidor, ou.code AS aafadigitador, aaf_a.aafa1, metadata_mapping(aaf_a.aafa1_metadata) AS aafa1_metadata, aaf_a.aafa1_metadata_comment, aaf_a.aafa6, metadata_mapping(aaf_a.aafa6_metadata) AS aafa6_metadata, aaf_a.aafa6_metadata_comment, aaf_a.aafa6a, metadata_mapping(aaf_a.aafa6a_metadata) AS aafa6a_metadata, aaf_a.aafa6a_metadata_comment, aaf_a.aafa6b, metadata_mapping(aaf_a.aafa6b_metadata) AS aafa6b_metadata, aaf_a.aafa6b_metadata_comment, aaf_a.aafa6bq, metadata_mapping(aaf_a.aafa6bq_metadata) AS aafa6bq_metadata, aaf_a.aafa6bq_metadata_comment, noyesuppercase_mapping(aaf_a.aafa2) AS aafa2, metadata_mapping(aaf_a.aafa2_metadata) AS aafa2_metadata, aaf_a.aafa2_metadata_comment, aaf_a.aafa2a, metadata_mapping(aaf_a.aafa2a_metadata) AS aafa2a_metadata, aaf_a.aafa2a_metadata_comment, aaf_a.aafa4, metadata_mapping(aaf_a.aafa4_metadata) AS aafa4_metadata, aaf_a.aafa4_metadata_comment, aaf_a.aafa4a, metadata_mapping(aaf_a.aafa4a_metadata) AS aafa4a_metadata, aaf_a.aafa4a_metadata_comment, aaf_a.aafa4b, metadata_mapping(aaf_a.aafa4b_metadata) AS aafa4b_metadata, aaf_a.aafa4b_metadata_comment, aaf_a.aafa4c, metadata_mapping(aaf_a.aafa4c_metadata) AS aafa4c_metadata, aaf_a.aafa4c_metadata_comment, aaf_a.aafa4cq, metadata_mapping(aaf_a.aafa4cq_metadata) AS aafa4cq_metadata, aaf_a.aafa4cq_metadata_comment, aaf_a.aafa3, metadata_mapping(aaf_a.aafa3_metadata) AS aafa3_metadata, aaf_a.aafa3_metadata_comment, aaf_a.aafa5, metadata_mapping(aaf_a.aafa5_metadata) AS aafa5_metadata, aaf_a.aafa5_metadata_comment, aaf_a.aafa5a, metadata_mapping(aaf_a.aafa5a_metadata) AS aafa5a_metadata, aaf_a.aafa5a_metadata_comment, aaf_a.aafa5b, metadata_mapping(aaf_a.aafa5b_metadata) AS aafa5b_metadata, aaf_a.aafa5b_metadata_comment, aaf_a.aafa5c, metadata_mapping(aaf_a.aafa5c_metadata) AS aafa5c_metadata, aaf_a.aafa5c_metadata_comment, aaf_a.aafa5cq, metadata_mapping(aaf_a.aafa5cq_metadata) AS aafa5cq_metadata, aaf_a.aafa5cq_metadata_comment, at.version AS versao_aaf FROM ((((((coorte.aaf_a aaf_a JOIN public.activity a ON ((a.id = aaf_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aaf_a OWNER TO postgres;

--
-- Name: v_ace_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_ace_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aceadataapini, a.finalization_date AS aceadataapfim, o.date AS aceadataoffline, u.code AS aceaaferidor, ou.code AS aceadigitador, ace_a.acea1, metadata_mapping(ace_a.acea1_metadata) AS acea1_metadata, ace_a.acea1_metadata_comment, ace_a.acea2, metadata_mapping(ace_a.acea2_metadata) AS acea2_metadata, ace_a.acea2_metadata_comment, pulsewaist_mapping(ace_a.acea3) AS acea3, metadata_mapping(ace_a.acea3_metadata) AS acea3_metadata, ace_a.acea3_metadata_comment, ace_a.acea4d, metadata_mapping(ace_a.acea4d_metadata) AS acea4d_metadata, ace_a.acea4d_metadata_comment, ace_a.acea4h, ace_a.acea4m, metadata_mapping(ace_a.acea4_metadata) AS acea4_metadata, ace_a.acea4_metadata_comment, ace_a.acea5d, metadata_mapping(ace_a.acea5d_metadata) AS acea5d_metadata, ace_a.acea5d_metadata_comment, ace_a.acea5h, ace_a.acea5m, metadata_mapping(ace_a.acea5_metadata) AS acea5_metadata, ace_a.acea5_metadata_comment, ace_a.acea6, metadata_mapping(ace_a.acea6_metadata) AS acea6_metadata, ace_a.acea6_metadata_comment, ace_a.acea7, metadata_mapping(ace_a.acea7_metadata) AS acea7_metadata, ace_a.acea7_metadata_comment, ace_a.acea7a, metadata_mapping(ace_a.acea7a_metadata) AS acea7a_metadata, ace_a.acea7a_metadata_comment, ace_a.acea7b, metadata_mapping(ace_a.acea7b_metadata) AS acea7b_metadata, ace_a.acea7b_metadata_comment, ace_a.acea7c, metadata_mapping(ace_a.acea7c_metadata) AS acea7c_metadata, ace_a.acea7c_metadata_comment, ace_a.acea7cq, metadata_mapping(ace_a.acea7cq_metadata) AS acea7cq_metadata, ace_a.acea7cq_metadata_comment, at.version AS versao_ace FROM ((((((coorte.ace_a ace_a JOIN public.activity a ON ((a.id = ace_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_ace_a OWNER TO postgres;

--
-- Name: v_aces_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aces_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS acesadataapini, a.finalization_date AS acesadataapfim, o.date AS acesadataoffline, u.code AS acesaaferidor, ou.code AS acesadigitador, aces_a.acesa1, metadata_mapping(aces_a.acesa1_metadata) AS acesa1_metadata, aces_a.acesa1_metadata_comment, aces_a.acesa2, metadata_mapping(aces_a.acesa2_metadata) AS acesa2_metadata, aces_a.acesa2_metadata_comment, pulsewaist_mapping(aces_a.acesa3) AS acesa3, metadata_mapping(aces_a.acesa3_metadata) AS acesa3_metadata, aces_a.acesa3_metadata_comment, aces_a.acesa4d, metadata_mapping(aces_a.acesa4d_metadata) AS acesa4d_metadata, aces_a.acesa4d_metadata_comment, aces_a.acesa4h, aces_a.acesa4m, metadata_mapping(aces_a.acesa4_metadata) AS acesa4_metadata, aces_a.acesa4_metadata_comment, aces_a.acesa5d, metadata_mapping(aces_a.acesa5d_metadata) AS acesa5d_metadata, aces_a.acesa5d_metadata_comment, aces_a.acesa5h, aces_a.acesa5m, metadata_mapping(aces_a.acesa5_metadata) AS acesa5_metadata, aces_a.acesa5_metadata_comment, aces_a.acesa6, metadata_mapping(aces_a.acesa6_metadata) AS acesa6_metadata, aces_a.acesa6_metadata_comment, aces_a.acesa7, metadata_mapping(aces_a.acesa7_metadata) AS acesa7_metadata, aces_a.acesa7_metadata_comment, aces_a.acesa7a, metadata_mapping(aces_a.acesa7a_metadata) AS acesa7a_metadata, aces_a.acesa7a_metadata_comment, aces_a.acesa7b, metadata_mapping(aces_a.acesa7b_metadata) AS acesa7b_metadata, aces_a.acesa7b_metadata_comment, aces_a.acesa7c, metadata_mapping(aces_a.acesa7c_metadata) AS acesa7c_metadata, aces_a.acesa7c_metadata_comment, aces_a.acesa7cq, metadata_mapping(aces_a.acesa7cq_metadata) AS acesa7cq_metadata, aces_a.acesa7cq_metadata_comment, at.version AS versao_aces FROM ((((((coorte.aces_a aces_a JOIN public.activity a ON ((a.id = aces_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aces_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aec_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aec_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aeca7_metadata character varying(255),
    aeca7_metadata_comment text,
    aeca2_metadata character varying(255),
    aeca2_metadata_comment text,
    aeca8_metadata character varying(255),
    aeca8_metadata_comment text,
    aeca3_metadata character varying(255),
    aeca3_metadata_comment text,
    aeca6_metadata character varying(255),
    aeca6_metadata_comment text,
    aeca1_metadata character varying(255),
    aeca1_metadata_comment text,
    aeca9_metadata character varying(255),
    aeca9_metadata_comment text,
    aeca4_metadata character varying(255),
    aeca4_metadata_comment text,
    aeca10_metadata character varying(255),
    aeca10_metadata_comment text,
    aeca5_metadata character varying(255),
    aeca5_metadata_comment text,
    qc_group character varying(255),
    biochemical120_id integer,
    biochemical120groupgel120cq_id integer,
    fluoride120_id integer,
    fluoride120cq_id integer,
    gel120_id integer,
    gel120cq_id integer,
    glycemia1_120_id integer,
    glycemia1_120groupfluoride_id integer,
    glycemia2_120_id integer,
    glycemia2_120groupfluoride_id integer
);


ALTER TABLE lab.aec_a OWNER TO postgres;

--
-- Name: aliquot_seq; Type: SEQUENCE; Schema: lab; Owner: postgres
--

CREATE SEQUENCE aliquot_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lab.aliquot_seq OWNER TO postgres;

--
-- Name: aliquot; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aliquot (
    id integer DEFAULT nextval('aliquot_seq'::regclass) NOT NULL,
    aliquot_moment character varying(255),
    aliquot_status character varying(255),
    aliquot_type character varying(255),
    aliquoting_activity_id bigint,
    code integer,
    quality_control boolean,
    visit integer,
    tube_id integer
);


ALTER TABLE lab.aliquot OWNER TO postgres;

--
-- Name: tube_seq; Type: SEQUENCE; Schema: lab; Owner: postgres
--

CREATE SEQUENCE tube_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lab.tube_seq OWNER TO postgres;

--
-- Name: tube; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE tube (
    id integer DEFAULT nextval('tube_seq'::regclass) NOT NULL,
    code integer,
    collection_activity_id bigint,
    quality_control boolean,
    tube_moment character varying(255),
    tube_status character varying(255),
    tube_type character varying(255),
    visit integer,
    participant_id integer
);


ALTER TABLE lab.tube OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aec_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aec_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aecadataapini, a.finalization_date AS aecadataapfim, o.date AS aecadataoffline, u.code AS aecaaferidor, ou.code AS aecadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aec_a.gel120_id)) AS aeca1, metadata_mapping(aec_a.aeca1_metadata) AS aeca1_metadata, aec_a.aeca1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aec_a.biochemical120_id)) AS aeca2, metadata_mapping(aec_a.aeca2_metadata) AS aeca2_metadata, aec_a.aeca2_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aec_a.fluoride120_id)) AS aeca3, metadata_mapping(aec_a.aeca3_metadata) AS aeca3_metadata, aec_a.aeca3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aec_a.glycemia1_120_id)) AS aeca4, metadata_mapping(aec_a.aeca4_metadata) AS aeca4_metadata, aec_a.aeca4_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aec_a.glycemia2_120_id)) AS aeca5, metadata_mapping(aec_a.aeca5_metadata) AS aeca5_metadata, aec_a.aeca5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aec_a.gel120cq_id)) AS aeca6, metadata_mapping(aec_a.aeca6_metadata) AS aeca6_metadata, aec_a.aeca6_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aec_a.biochemical120groupgel120cq_id)) AS aeca7, metadata_mapping(aec_a.aeca7_metadata) AS aeca7_metadata, aec_a.aeca7_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aec_a.fluoride120cq_id)) AS aeca8, metadata_mapping(aec_a.aeca8_metadata) AS aeca8_metadata, aec_a.aeca8_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aec_a.glycemia1_120groupfluoride_id)) AS aeca9, metadata_mapping(aec_a.aeca9_metadata) AS aeca9_metadata, aec_a.aeca9_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aec_a.glycemia2_120groupfluoride_id)) AS aeca10, metadata_mapping(aec_a.aeca10_metadata) AS aeca10_metadata, aec_a.aeca10_metadata_comment, at.version AS versao_aec FROM ((((((lab.aec_a aec_a JOIN public.activity a ON ((a.id = aec_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aec_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aecs_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aecs_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aecsa7_metadata character varying(255),
    aecsa7_metadata_comment text,
    aecsa2_metadata character varying(255),
    aecsa2_metadata_comment text,
    aecsa8_metadata character varying(255),
    aecsa8_metadata_comment text,
    aecsa3_metadata character varying(255),
    aecsa3_metadata_comment text,
    aecsa6_metadata character varying(255),
    aecsa6_metadata_comment text,
    aecsa1_metadata character varying(255),
    aecsa1_metadata_comment text,
    aecsa9_metadata character varying(255),
    aecsa9_metadata_comment text,
    aecsa4_metadata character varying(255),
    aecsa4_metadata_comment text,
    aecsa10_metadata character varying(255),
    aecsa10_metadata_comment text,
    aecsa5_metadata character varying(255),
    aecsa5_metadata_comment text,
    qc_group character varying(255),
    biochemical120_id integer,
    biochemical120groupgel120cq_id integer,
    fluoride120_id integer,
    fluoride120cq_id integer,
    gel120_id integer,
    gel120cq_id integer,
    glycemia1_120_id integer,
    glycemia1_120groupfluoride_id integer,
    glycemia2_120_id integer,
    glycemia2_120groupfluoride_id integer
);


ALTER TABLE lab.aecs_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aecs_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aecs_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aecsadataapini, a.finalization_date AS aecsadataapfim, o.date AS aecsadataoffline, u.code AS aecsaaferidor, ou.code AS aecsadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aecs_a.gel120_id)) AS aecsa1, metadata_mapping(aecs_a.aecsa1_metadata) AS aecsa1_metadata, aecs_a.aecsa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aecs_a.biochemical120_id)) AS aecsa2, metadata_mapping(aecs_a.aecsa2_metadata) AS aecsa2_metadata, aecs_a.aecsa2_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aecs_a.fluoride120_id)) AS aecsa3, metadata_mapping(aecs_a.aecsa3_metadata) AS aecsa3_metadata, aecs_a.aecsa3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aecs_a.glycemia1_120_id)) AS aecsa4, metadata_mapping(aecs_a.aecsa4_metadata) AS aecsa4_metadata, aecs_a.aecsa4_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aecs_a.glycemia2_120_id)) AS aecsa5, metadata_mapping(aecs_a.aecsa5_metadata) AS aecsa5_metadata, aecs_a.aecsa5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aecs_a.gel120cq_id)) AS aecsa6, metadata_mapping(aecs_a.aecsa6_metadata) AS aecsa6_metadata, aecs_a.aecsa6_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aecs_a.biochemical120groupgel120cq_id)) AS aecsa7, metadata_mapping(aecs_a.aecsa7_metadata) AS aecsa7_metadata, aecs_a.aecsa7_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aecs_a.fluoride120cq_id)) AS aecsa8, metadata_mapping(aecs_a.aecsa8_metadata) AS aecsa8_metadata, aecs_a.aecsa8_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aecs_a.glycemia1_120groupfluoride_id)) AS aecsa9, metadata_mapping(aecs_a.aecsa9_metadata) AS aecsa9_metadata, aecs_a.aecsa9_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aecs_a.glycemia2_120groupfluoride_id)) AS aecsa10, metadata_mapping(aecs_a.aecsa10_metadata) AS aecsa10_metadata, aecs_a.aecsa10_metadata_comment, at.version AS versao_aecs FROM ((((((lab.aecs_a aecs_a JOIN public.activity a ON ((a.id = aecs_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aecs_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aej_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aej_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aeja2_metadata character varying(255),
    aeja2_metadata_comment text,
    aeja3_metadata character varying(255),
    aeja3_metadata_comment text,
    aeja10_metadata character varying(255),
    aeja10_metadata_comment text,
    aeja11_metadata character varying(255),
    aeja11_metadata_comment text,
    aeja12_metadata character varying(255),
    aeja12_metadata_comment text,
    aeja4_metadata character varying(255),
    aeja4_metadata_comment text,
    aeja14_metadata character varying(255),
    aeja14_metadata_comment text,
    aeja6_metadata character varying(255),
    aeja6_metadata_comment text,
    aeja9_metadata character varying(255),
    aeja9_metadata_comment text,
    aeja1_metadata character varying(255),
    aeja1_metadata_comment text,
    aeja7_metadata character varying(255),
    aeja7_metadata_comment text,
    aeja8_metadata character varying(255),
    aeja8_metadata_comment text,
    aeja15_metadata character varying(255),
    aeja15_metadata_comment text,
    aeja16_metadata character varying(255),
    aeja16_metadata_comment text,
    aeja13_metadata character varying(255),
    aeja13_metadata_comment text,
    aeja5_metadata character varying(255),
    aeja5_metadata_comment text,
    qc_group character varying(255),
    biochemicalfastingaliquot1_id integer,
    biochemicalfastingaliquot2_id integer,
    biochemicalfastingqcaliquot1_id integer,
    biochemicalfastingqcaliquot2_id integer,
    edtafastingqctube_id integer,
    edtafastingtube_id integer,
    fluoridefastingqctube_id integer,
    fluoridefastingtube_id integer,
    gelfastingqctube_id integer,
    gelfastingtube_id integer,
    glycemiafastingaliquot1_id integer,
    glycemiafastingaliquot2_id integer,
    glycemiaqcaliquot1_id integer,
    glycemiaqcaliquot2_id integer,
    hba1cqcaliquot_id integer,
    hba1caliquot_id integer
);


ALTER TABLE lab.aej_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aej_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aej_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aejadataapini, a.finalization_date AS aejadataapfim, o.date AS aejadataoffline, u.code AS aejaaferidor, ou.code AS aejadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aej_a.gelfastingtube_id)) AS aeja1, metadata_mapping(aej_a.aeja1_metadata) AS aeja1_metadata, aej_a.aeja1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.biochemicalfastingaliquot1_id)) AS aeja2, metadata_mapping(aej_a.aeja2_metadata) AS aeja2_metadata, aej_a.aeja2_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.biochemicalfastingaliquot2_id)) AS aeja3, metadata_mapping(aej_a.aeja3_metadata) AS aeja3_metadata, aej_a.aeja3_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aej_a.edtafastingtube_id)) AS aeja4, metadata_mapping(aej_a.aeja4_metadata) AS aeja4_metadata, aej_a.aeja4_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.hba1caliquot_id)) AS aeja5, metadata_mapping(aej_a.aeja5_metadata) AS aeja5_metadata, aej_a.aeja5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aej_a.fluoridefastingtube_id)) AS aeja6, metadata_mapping(aej_a.aeja6_metadata) AS aeja6_metadata, aej_a.aeja6_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.glycemiafastingaliquot1_id)) AS aeja7, metadata_mapping(aej_a.aeja7_metadata) AS aeja7_metadata, aej_a.aeja7_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.glycemiafastingaliquot2_id)) AS aeja8, metadata_mapping(aej_a.aeja8_metadata) AS aeja8_metadata, aej_a.aeja8_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aej_a.gelfastingqctube_id)) AS aeja9, metadata_mapping(aej_a.aeja9_metadata) AS aeja9_metadata, aej_a.aeja9_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.biochemicalfastingqcaliquot1_id)) AS aeja10, metadata_mapping(aej_a.aeja10_metadata) AS aeja10_metadata, aej_a.aeja10_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.biochemicalfastingqcaliquot2_id)) AS aeja11, metadata_mapping(aej_a.aeja11_metadata) AS aeja11_metadata, aej_a.aeja11_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aej_a.edtafastingqctube_id)) AS aeja12, metadata_mapping(aej_a.aeja12_metadata) AS aeja12_metadata, aej_a.aeja12_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.hba1cqcaliquot_id)) AS aeja13, metadata_mapping(aej_a.aeja13_metadata) AS aeja13_metadata, aej_a.aeja13_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aej_a.fluoridefastingqctube_id)) AS aeja14, metadata_mapping(aej_a.aeja14_metadata) AS aeja14_metadata, aej_a.aeja14_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.glycemiaqcaliquot1_id)) AS aeja15, metadata_mapping(aej_a.aeja15_metadata) AS aeja15_metadata, aej_a.aeja15_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aej_a.glycemiaqcaliquot2_id)) AS aeja16, metadata_mapping(aej_a.aeja16_metadata) AS aeja16_metadata, aej_a.aeja16_metadata_comment, at.version AS versao_aej FROM ((((((lab.aej_a aej_a JOIN public.activity a ON ((a.id = aej_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aej_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aejs_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aejs_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aejsa2_metadata character varying(255),
    aejsa2_metadata_comment text,
    aejsa3_metadata character varying(255),
    aejsa3_metadata_comment text,
    aejsa10_metadata character varying(255),
    aejsa10_metadata_comment text,
    aejsa11_metadata character varying(255),
    aejsa11_metadata_comment text,
    aejsa12_metadata character varying(255),
    aejsa12_metadata_comment text,
    aejsa4_metadata character varying(255),
    aejsa4_metadata_comment text,
    aejsa14_metadata character varying(255),
    aejsa14_metadata_comment text,
    aejsa6_metadata character varying(255),
    aejsa6_metadata_comment text,
    aejsa9_metadata character varying(255),
    aejsa9_metadata_comment text,
    aejsa1_metadata character varying(255),
    aejsa1_metadata_comment text,
    aejsa7_metadata character varying(255),
    aejsa7_metadata_comment text,
    aejsa8_metadata character varying(255),
    aejsa8_metadata_comment text,
    aejsa15_metadata character varying(255),
    aejsa15_metadata_comment text,
    aejsa16_metadata character varying(255),
    aejsa16_metadata_comment text,
    aejsa13_metadata character varying(255),
    aejsa13_metadata_comment text,
    aejsa5_metadata character varying(255),
    aejsa5_metadata_comment text,
    qc_group character varying(255),
    biochemicalfastingaliquot1_id integer,
    biochemicalfastingaliquot2_id integer,
    biochemicalfastingqcaliquot1_id integer,
    biochemicalfastingqcaliquot2_id integer,
    edtafastingqctube_id integer,
    edtafastingtube_id integer,
    fluoridefastingqctube_id integer,
    fluoridefastingtube_id integer,
    gelfastingqctube_id integer,
    gelfastingtube_id integer,
    glycemiafastingaliquot1_id integer,
    glycemiafastingaliquot2_id integer,
    glycemiaqcaliquot1_id integer,
    glycemiaqcaliquot2_id integer,
    hba1cqcaliquot_id integer,
    hba1caliquot_id integer
);


ALTER TABLE lab.aejs_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aejs_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aejs_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aejsadataapini, a.finalization_date AS aejsadataapfim, o.date AS aejsadataoffline, u.code AS aejsaaferidor, ou.code AS aejsadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aejs_a.gelfastingtube_id)) AS aejsa1, metadata_mapping(aejs_a.aejsa1_metadata) AS aejsa1_metadata, aejs_a.aejsa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.biochemicalfastingaliquot1_id)) AS aejsa2, metadata_mapping(aejs_a.aejsa2_metadata) AS aejsa2_metadata, aejs_a.aejsa2_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.biochemicalfastingaliquot2_id)) AS aejsa3, metadata_mapping(aejs_a.aejsa3_metadata) AS aejsa3_metadata, aejs_a.aejsa3_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aejs_a.edtafastingtube_id)) AS aejsa4, metadata_mapping(aejs_a.aejsa4_metadata) AS aejsa4_metadata, aejs_a.aejsa4_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.hba1caliquot_id)) AS aejsa5, metadata_mapping(aejs_a.aejsa5_metadata) AS aejsa5_metadata, aejs_a.aejsa5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aejs_a.fluoridefastingtube_id)) AS aejsa6, metadata_mapping(aejs_a.aejsa6_metadata) AS aejsa6_metadata, aejs_a.aejsa6_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.glycemiafastingaliquot1_id)) AS aejsa7, metadata_mapping(aejs_a.aejsa7_metadata) AS aejsa7_metadata, aejs_a.aejsa7_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.glycemiafastingaliquot2_id)) AS aejsa8, metadata_mapping(aejs_a.aejsa8_metadata) AS aejsa8_metadata, aejs_a.aejsa8_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aejs_a.gelfastingqctube_id)) AS aejsa9, metadata_mapping(aejs_a.aejsa9_metadata) AS aejsa9_metadata, aejs_a.aejsa9_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.biochemicalfastingqcaliquot1_id)) AS aejsa10, metadata_mapping(aejs_a.aejsa10_metadata) AS aejsa10_metadata, aejs_a.aejsa10_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.biochemicalfastingqcaliquot2_id)) AS aejsa11, metadata_mapping(aejs_a.aejsa11_metadata) AS aejsa11_metadata, aejs_a.aejsa11_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aejs_a.edtafastingqctube_id)) AS aejsa12, metadata_mapping(aejs_a.aejsa12_metadata) AS aejsa12_metadata, aejs_a.aejsa12_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.hba1cqcaliquot_id)) AS aejsa13, metadata_mapping(aejs_a.aejsa13_metadata) AS aejsa13_metadata, aejs_a.aejsa13_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aejs_a.fluoridefastingqctube_id)) AS aejsa14, metadata_mapping(aejs_a.aejsa14_metadata) AS aejsa14_metadata, aejs_a.aejsa14_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.glycemiaqcaliquot1_id)) AS aejsa15, metadata_mapping(aejs_a.aejsa15_metadata) AS aejsa15_metadata, aejs_a.aejsa15_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aejs_a.glycemiaqcaliquot2_id)) AS aejsa16, metadata_mapping(aejs_a.aejsa16_metadata) AS aejsa16_metadata, aejs_a.aejsa16_metadata_comment, at.version AS versao_aejs FROM ((((((lab.aejs_a aejs_a JOIN public.activity a ON ((a.id = aejs_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aejs_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aen_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aen_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aena2_metadata character varying(255),
    aena2_metadata_comment text,
    aena6_metadata character varying(255),
    aena6_metadata_comment text,
    aena3_metadata character varying(255),
    aena3_metadata_comment text,
    aena5_metadata character varying(255),
    aena5_metadata_comment text,
    aena1_metadata character varying(255),
    aena1_metadata_comment text,
    aena4_metadata character varying(255),
    aena4_metadata_comment text,
    qc_group character varying(255),
    biochemicalninetyaliquot_id integer,
    biochemicalninetyqcaliquot_id integer,
    fluorideninetytube_id integer,
    gelninetyqctube_id integer,
    gelninetytube_id integer,
    glycemianinetyaliquot_id integer
);


ALTER TABLE lab.aen_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aen_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aen_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aenadataapini, a.finalization_date AS aenadataapfim, o.date AS aenadataoffline, u.code AS aenaaferidor, ou.code AS aenadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aen_a.gelninetytube_id)) AS aena1, metadata_mapping(aen_a.aena1_metadata) AS aena1_metadata, aen_a.aena1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aen_a.biochemicalninetyaliquot_id)) AS aena2, metadata_mapping(aen_a.aena2_metadata) AS aena2_metadata, aen_a.aena2_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aen_a.fluorideninetytube_id)) AS aena3, metadata_mapping(aen_a.aena3_metadata) AS aena3_metadata, aen_a.aena3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aen_a.glycemianinetyaliquot_id)) AS aena4, metadata_mapping(aen_a.aena4_metadata) AS aena4_metadata, aen_a.aena4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aen_a.gelninetyqctube_id)) AS aena5, metadata_mapping(aen_a.aena5_metadata) AS aena5_metadata, aen_a.aena5_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aen_a.biochemicalninetyqcaliquot_id)) AS aena6, metadata_mapping(aen_a.aena6_metadata) AS aena6_metadata, aen_a.aena6_metadata_comment, at.version AS versao_aen FROM ((((((lab.aen_a aen_a JOIN public.activity a ON ((a.id = aen_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aen_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aes_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aes_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aesa2_metadata character varying(255),
    aesa2_metadata_comment text,
    aesa6_metadata character varying(255),
    aesa6_metadata_comment text,
    aesa3_metadata character varying(255),
    aesa3_metadata_comment text,
    aesa5_metadata character varying(255),
    aesa5_metadata_comment text,
    aesa1_metadata character varying(255),
    aesa1_metadata_comment text,
    aesa4_metadata character varying(255),
    aesa4_metadata_comment text,
    qc_group character varying(255),
    biochemicalsixtyaliquot_id integer,
    biochemicalsixtyqcaliquot_id integer,
    fluoridesixtytube_id integer,
    gelsixtyqctube_id integer,
    gelsixtytube_id integer,
    glycemiasixtyaliquot_id integer
);


ALTER TABLE lab.aes_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aes_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aes_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aesadataapini, a.finalization_date AS aesadataapfim, o.date AS aesadataoffline, u.code AS aesaaferidor, ou.code AS aesadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aes_a.gelsixtytube_id)) AS aesa1, metadata_mapping(aes_a.aesa1_metadata) AS aesa1_metadata, aes_a.aesa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aes_a.biochemicalsixtyaliquot_id)) AS aesa2, metadata_mapping(aes_a.aesa2_metadata) AS aesa2_metadata, aes_a.aesa2_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aes_a.fluoridesixtytube_id)) AS aesa3, metadata_mapping(aes_a.aesa3_metadata) AS aesa3_metadata, aes_a.aesa3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aes_a.glycemiasixtyaliquot_id)) AS aesa4, metadata_mapping(aes_a.aesa4_metadata) AS aesa4_metadata, aes_a.aesa4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aes_a.gelsixtyqctube_id)) AS aesa5, metadata_mapping(aes_a.aesa5_metadata) AS aesa5_metadata, aes_a.aesa5_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aes_a.biochemicalsixtyqcaliquot_id)) AS aesa6, metadata_mapping(aes_a.aesa6_metadata) AS aesa6_metadata, aes_a.aesa6_metadata_comment, at.version AS versao_aes FROM ((((((lab.aes_a aes_a JOIN public.activity a ON ((a.id = aes_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aes_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aess_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aess_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aessa2_metadata character varying(255),
    aessa2_metadata_comment text,
    aessa6_metadata character varying(255),
    aessa6_metadata_comment text,
    aessa3_metadata character varying(255),
    aessa3_metadata_comment text,
    aessa5_metadata character varying(255),
    aessa5_metadata_comment text,
    aessa1_metadata character varying(255),
    aessa1_metadata_comment text,
    aessa4_metadata character varying(255),
    aessa4_metadata_comment text,
    qc_group character varying(255),
    biochemicalsixtyaliquot_id integer,
    biochemicalsixtyqcaliquot_id integer,
    fluoridesixtytube_id integer,
    gelsixtyqctube_id integer,
    gelsixtytube_id integer,
    glycemiasixtyaliquot_id integer
);


ALTER TABLE lab.aess_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aess_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aess_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aessadataapini, a.finalization_date AS aessadataapfim, o.date AS aessadataoffline, u.code AS aessaaferidor, ou.code AS aessadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aess_a.gelsixtytube_id)) AS aessa1, metadata_mapping(aess_a.aessa1_metadata) AS aessa1_metadata, aess_a.aessa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aess_a.biochemicalsixtyaliquot_id)) AS aessa2, metadata_mapping(aess_a.aessa2_metadata) AS aessa2_metadata, aess_a.aessa2_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aess_a.fluoridesixtytube_id)) AS aessa3, metadata_mapping(aess_a.aessa3_metadata) AS aessa3_metadata, aess_a.aessa3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aess_a.glycemiasixtyaliquot_id)) AS aessa4, metadata_mapping(aess_a.aessa4_metadata) AS aessa4_metadata, aess_a.aessa4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aess_a.gelsixtyqctube_id)) AS aessa5, metadata_mapping(aess_a.aessa5_metadata) AS aessa5_metadata, aess_a.aessa5_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aess_a.biochemicalsixtyqcaliquot_id)) AS aessa6, metadata_mapping(aess_a.aessa6_metadata) AS aessa6_metadata, aess_a.aessa6_metadata_comment, at.version AS versao_aess FROM ((((((lab.aess_a aess_a JOIN public.activity a ON ((a.id = aess_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aess_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aet_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aet_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aeta2_metadata character varying(255),
    aeta2_metadata_comment text,
    aeta6_metadata character varying(255),
    aeta6_metadata_comment text,
    aeta3_metadata character varying(255),
    aeta3_metadata_comment text,
    aeta5_metadata character varying(255),
    aeta5_metadata_comment text,
    aeta1_metadata character varying(255),
    aeta1_metadata_comment text,
    aeta4_metadata character varying(255),
    aeta4_metadata_comment text,
    qc_group character varying(255),
    biochemistry_id integer,
    biochemistry30_id integer,
    fluoride30_id integer,
    gel30_id integer,
    gel30cq_id integer,
    glycemia30_id integer
);


ALTER TABLE lab.aet_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aet_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aet_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aetadataapini, a.finalization_date AS aetadataapfim, o.date AS aetadataoffline, u.code AS aetaaferidor, ou.code AS aetadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aet_a.gel30_id)) AS aeta1, metadata_mapping(aet_a.aeta1_metadata) AS aeta1_metadata, aet_a.aeta1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aet_a.biochemistry30_id)) AS aeta2, metadata_mapping(aet_a.aeta2_metadata) AS aeta2_metadata, aet_a.aeta2_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aet_a.fluoride30_id)) AS aeta3, metadata_mapping(aet_a.aeta3_metadata) AS aeta3_metadata, aet_a.aeta3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aet_a.glycemia30_id)) AS aeta4, metadata_mapping(aet_a.aeta4_metadata) AS aeta4_metadata, aet_a.aeta4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aet_a.gel30cq_id)) AS aeta5, metadata_mapping(aet_a.aeta5_metadata) AS aeta5_metadata, aet_a.aeta5_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aet_a.biochemistry_id)) AS aeta6, metadata_mapping(aet_a.aeta6_metadata) AS aeta6_metadata, aet_a.aeta6_metadata_comment, at.version AS versao_aet FROM ((((((lab.aet_a aet_a JOIN public.activity a ON ((a.id = aet_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aet_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: aets_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE aets_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    aetsa2_metadata character varying(255),
    aetsa2_metadata_comment text,
    aetsa6_metadata character varying(255),
    aetsa6_metadata_comment text,
    aetsa3_metadata character varying(255),
    aetsa3_metadata_comment text,
    aetsa5_metadata character varying(255),
    aetsa5_metadata_comment text,
    aetsa1_metadata character varying(255),
    aetsa1_metadata_comment text,
    aetsa4_metadata character varying(255),
    aetsa4_metadata_comment text,
    qc_group character varying(255),
    biochemistry_id integer,
    biochemistry30_id integer,
    fluoride30_id integer,
    gel30_id integer,
    gel30cq_id integer,
    glycemia30_id integer
);


ALTER TABLE lab.aets_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_aets_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_aets_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS aetsadataapini, a.finalization_date AS aetsadataapfim, o.date AS aetsadataoffline, u.code AS aetsaaferidor, ou.code AS aetsadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = aets_a.gel30_id)) AS aetsa1, metadata_mapping(aets_a.aetsa1_metadata) AS aetsa1_metadata, aets_a.aetsa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aets_a.biochemistry30_id)) AS aetsa2, metadata_mapping(aets_a.aetsa2_metadata) AS aetsa2_metadata, aets_a.aetsa2_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aets_a.fluoride30_id)) AS aetsa3, metadata_mapping(aets_a.aetsa3_metadata) AS aetsa3_metadata, aets_a.aetsa3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aets_a.glycemia30_id)) AS aetsa4, metadata_mapping(aets_a.aetsa4_metadata) AS aetsa4_metadata, aets_a.aetsa4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = aets_a.gel30cq_id)) AS aetsa5, metadata_mapping(aets_a.aetsa5_metadata) AS aetsa5_metadata, aets_a.aetsa5_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = aets_a.biochemistry_id)) AS aetsa6, metadata_mapping(aets_a.aetsa6_metadata) AS aetsa6_metadata, aets_a.aetsa6_metadata_comment, at.version AS versao_aets FROM ((((((lab.aets_a aets_a JOIN public.activity a ON ((a.id = aets_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_aets_a OWNER TO postgres;

--
-- Name: v_afi_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_afi_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS afiadataapini, a.finalization_date AS afiadataapfim, o.date AS afiadataoffline, u.code AS afiaaferidor, ou.code AS afiadigitador, afi_a.afia1, metadata_mapping(afi_a.afia1_metadata) AS afia1_metadata, afi_a.afia1_metadata_comment, afi_a.afia1a, metadata_mapping(afi_a.afia1a_metadata) AS afia1a_metadata, afi_a.afia1a_metadata_comment, afi_a.afia2, metadata_mapping(afi_a.afia2_metadata) AS afia2_metadata, afi_a.afia2_metadata_comment, afi_a.afia2a, metadata_mapping(afi_a.afia2a_metadata) AS afia2a_metadata, afi_a.afia2a_metadata_comment, afi_a.afia3, metadata_mapping(afi_a.afia3_metadata) AS afia3_metadata, afi_a.afia3_metadata_comment, afi_a.afia3a, metadata_mapping(afi_a.afia3a_metadata) AS afia3a_metadata, afi_a.afia3a_metadata_comment, afi_a.afia4, metadata_mapping(afi_a.afia4_metadata) AS afia4_metadata, afi_a.afia4_metadata_comment, afi_a.afia4a, metadata_mapping(afi_a.afia4a_metadata) AS afia4a_metadata, afi_a.afia4a_metadata_comment, afi_a.afia5, metadata_mapping(afi_a.afia5_metadata) AS afia5_metadata, afi_a.afia5_metadata_comment, afi_a.afia5a, metadata_mapping(afi_a.afia5a_metadata) AS afia5a_metadata, afi_a.afia5a_metadata_comment, afi_a.afia6h, afi_a.afia6m, metadata_mapping(afi_a.afia6_metadata) AS afia6_metadata, afi_a.afia6_metadata_comment, afi_a.afia7h, afi_a.afia7m, metadata_mapping(afi_a.afia7_metadata) AS afia7_metadata, afi_a.afia7_metadata_comment, afi_a.afia8h, afi_a.afia8m, metadata_mapping(afi_a.afia8_metadata) AS afia8_metadata, afi_a.afia8_metadata_comment, afi_a.afia9h, afi_a.afia9m, metadata_mapping(afi_a.afia9_metadata) AS afia9_metadata, afi_a.afia9_metadata_comment, afi_a.afia10h, afi_a.afia10m, metadata_mapping(afi_a.afia10_metadata) AS afia10_metadata, afi_a.afia10_metadata_comment, afi_a.afia11h, afi_a.afia11m, metadata_mapping(afi_a.afia11_metadata) AS afia11_metadata, afi_a.afia11_metadata_comment, at.version AS versao_afi FROM ((((((coorte.afi_a afi_a JOIN public.activity a ON ((a.id = afi_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_afi_a OWNER TO postgres;

--
-- Name: v_afis_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_afis_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS afisadataapini, a.finalization_date AS afisadataapfim, o.date AS afisadataoffline, u.code AS afisaaferidor, ou.code AS afisadigitador, afis_a.afisa1, metadata_mapping(afis_a.afisa1_metadata) AS afisa1_metadata, afis_a.afisa1_metadata_comment, afis_a.afisa1a, metadata_mapping(afis_a.afisa1a_metadata) AS afisa1a_metadata, afis_a.afisa1a_metadata_comment, afis_a.afisa2, metadata_mapping(afis_a.afisa2_metadata) AS afisa2_metadata, afis_a.afisa2_metadata_comment, afis_a.afisa2a, metadata_mapping(afis_a.afisa2a_metadata) AS afisa2a_metadata, afis_a.afisa2a_metadata_comment, afis_a.afisa3, metadata_mapping(afis_a.afisa3_metadata) AS afisa3_metadata, afis_a.afisa3_metadata_comment, afis_a.afisa3a, metadata_mapping(afis_a.afisa3a_metadata) AS afisa3a_metadata, afis_a.afisa3a_metadata_comment, afis_a.afisa4, metadata_mapping(afis_a.afisa4_metadata) AS afisa4_metadata, afis_a.afisa4_metadata_comment, afis_a.afisa4a, metadata_mapping(afis_a.afisa4a_metadata) AS afisa4a_metadata, afis_a.afisa4a_metadata_comment, afis_a.afisa5, metadata_mapping(afis_a.afisa5_metadata) AS afisa5_metadata, afis_a.afisa5_metadata_comment, afis_a.afisa5a, metadata_mapping(afis_a.afisa5a_metadata) AS afisa5a_metadata, afis_a.afisa5a_metadata_comment, afis_a.afisa6h, afis_a.afisa6m, metadata_mapping(afis_a.afisa6_metadata) AS afisa6_metadata, afis_a.afisa6_metadata_comment, afis_a.afisa7h, afis_a.afisa7m, metadata_mapping(afis_a.afisa7_metadata) AS afisa7_metadata, afis_a.afisa7_metadata_comment, afis_a.afisa8h, afis_a.afisa8m, metadata_mapping(afis_a.afisa8_metadata) AS afisa8_metadata, afis_a.afisa8_metadata_comment, afis_a.afisa9h, afis_a.afisa9m, metadata_mapping(afis_a.afisa9_metadata) AS afisa9_metadata, afis_a.afisa9_metadata_comment, afis_a.afisa10h, afis_a.afisa10m, metadata_mapping(afis_a.afisa10_metadata) AS afisa10_metadata, afis_a.afisa10_metadata_comment, afis_a.afisa11h, afis_a.afisa11m, metadata_mapping(afis_a.afisa11_metadata) AS afisa11_metadata, afis_a.afisa11_metadata_comment, at.version AS versao_afis FROM ((((((coorte.afis_a afis_a JOIN public.activity a ON ((a.id = afis_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_afis_a OWNER TO postgres;

--
-- Name: v_age_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_age_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS ageadataapini, a.finalization_date AS ageadataapfim, o.date AS ageadataoffline, u.code AS ageaaferidor, ou.code AS ageadigitador, age_a.agea1, metadata_mapping(age_a.agea1_metadata) AS agea1_metadata, age_a.agea1_metadata_comment, age_a.agea11, metadata_mapping(age_a.agea11_metadata) AS agea11_metadata, age_a.agea11_metadata_comment, age_a.agea12, metadata_mapping(age_a.agea12_metadata) AS agea12_metadata, age_a.agea12_metadata_comment, age_a.agea13, metadata_mapping(age_a.agea13_metadata) AS agea13_metadata, age_a.agea13_metadata_comment, age_a.agea2c, metadata_mapping(age_a.agea2c_metadata) AS agea2c_metadata, age_a.agea2c_metadata_comment, age_a.agea24, metadata_mapping(age_a.agea24_metadata) AS agea24_metadata, age_a.agea24_metadata_comment, age_a.agea25, metadata_mapping(age_a.agea25_metadata) AS agea25_metadata, age_a.agea25_metadata_comment, age_a.agea2a, metadata_mapping(age_a.agea2a_metadata) AS agea2a_metadata, age_a.agea2a_metadata_comment, age_a.agea2b, metadata_mapping(age_a.agea2b_metadata) AS agea2b_metadata, age_a.agea2b_metadata_comment, age_a.agea21, metadata_mapping(age_a.agea21_metadata) AS agea21_metadata, age_a.agea21_metadata_comment, age_a.agea22, metadata_mapping(age_a.agea22_metadata) AS agea22_metadata, age_a.agea22_metadata_comment, age_a.agea23, metadata_mapping(age_a.agea23_metadata) AS agea23_metadata, age_a.agea23_metadata_comment, age_a.agea3, metadata_mapping(age_a.agea3_metadata) AS agea3_metadata, age_a.agea3_metadata_comment, at.version AS versao_age FROM ((((((coorte.age_a age_a JOIN public.activity a ON ((a.id = age_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_age_a OWNER TO postgres;

--
-- Name: v_alb_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_alb_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS albadataapini, a.finalization_date AS albadataapfim, o.date AS albadataoffline, u.code AS albaaferidor, ou.code AS albadigitador, typepregnancy_mapping(alb_a.alba10) AS alba10, metadata_mapping(alb_a.alba10_metadata) AS alba10_metadata, alb_a.alba10_metadata_comment, alb_a.alba10a, metadata_mapping(alb_a.alba10a_metadata) AS alba10a_metadata, alb_a.alba10a_metadata_comment, typebreastfeeding_mapping(alb_a.alba1) AS alba1, metadata_mapping(alb_a.alba1_metadata) AS alba1_metadata, alb_a.alba1_metadata_comment, alb_a.alba1a, metadata_mapping(alb_a.alba1a_metadata) AS alba1a_metadata, alb_a.alba1a_metadata_comment, noyesuppercase_mapping(alb_a.alba2) AS alba2, metadata_mapping(alb_a.alba2_metadata) AS alba2_metadata, alb_a.alba2_metadata_comment, metadata_mapping(alb_a.alba2group_metadata) AS alba2group_metadata, alb_a.alba2group_metadata_comment, alb_a.alba2a1, metadata_mapping(alb_a.alba2a1_metadata) AS alba2a1_metadata, alb_a.alba2a1_metadata_comment, alb_a.alba2a2, metadata_mapping(alb_a.alba2a2_metadata) AS alba2a2_metadata, alb_a.alba2a2_metadata_comment, alb_a.alba2a3, metadata_mapping(alb_a.alba2a3_metadata) AS alba2a3_metadata, alb_a.alba2a3_metadata_comment, alb_a.alba2a4, metadata_mapping(alb_a.alba2a4_metadata) AS alba2a4_metadata, alb_a.alba2a4_metadata_comment, alb_a.alba2a5, metadata_mapping(alb_a.alba2a5_metadata) AS alba2a5_metadata, alb_a.alba2a5_metadata_comment, alb_a.alba2a6, metadata_mapping(alb_a.alba2a6_metadata) AS alba2a6_metadata, alb_a.alba2a6_metadata_comment, alb_a.alba2a7, metadata_mapping(alb_a.alba2a7_metadata) AS alba2a7_metadata, alb_a.alba2a7_metadata_comment, alb_a.alba2a8, metadata_mapping(alb_a.alba2a8_metadata) AS alba2a8_metadata, alb_a.alba2a8_metadata_comment, alb_a.alba2a9, metadata_mapping(alb_a.alba2a9_metadata) AS alba2a9_metadata, alb_a.alba2a9_metadata_comment, alb_a.alba2a10, metadata_mapping(alb_a.alba2a10_metadata) AS alba2a10_metadata, alb_a.alba2a10_metadata_comment, alb_a.alba2a11, metadata_mapping(alb_a.alba2a11_metadata) AS alba2a11_metadata, alb_a.alba2a11_metadata_comment, alb_a.alba2a12, metadata_mapping(alb_a.alba2a12_metadata) AS alba2a12_metadata, alb_a.alba2a12_metadata_comment, alb_a.alba2a13, metadata_mapping(alb_a.alba2a13_metadata) AS alba2a13_metadata, alb_a.alba2a13_metadata_comment, alb_a.alba2a14, metadata_mapping(alb_a.alba2a14_metadata) AS alba2a14_metadata, alb_a.alba2a14_metadata_comment, alb_a.alba2a15, metadata_mapping(alb_a.alba2a15_metadata) AS alba2a15_metadata, alb_a.alba2a15_metadata_comment, alb_a.alba2a16, metadata_mapping(alb_a.alba2a16_metadata) AS alba2a16_metadata, alb_a.alba2a16_metadata_comment, alb_a.alba2a17, metadata_mapping(alb_a.alba2a17_metadata) AS alba2a17_metadata, alb_a.alba2a17_metadata_comment, alb_a.alba2a18, metadata_mapping(alb_a.alba2a18_metadata) AS alba2a18_metadata, alb_a.alba2a18_metadata_comment, alb_a.alba2a19, metadata_mapping(alb_a.alba2a19_metadata) AS alba2a19_metadata, alb_a.alba2a19_metadata_comment, alb_a.alba2a20, metadata_mapping(alb_a.alba2a20_metadata) AS alba2a20_metadata, alb_a.alba2a20_metadata_comment, alb_a.alba2a20q, metadata_mapping(alb_a.alba2a20q_metadata) AS alba2a20q_metadata, alb_a.alba2a20q_metadata_comment, typeofbabyfoodwithoutcomments_mapping(alb_a.alba3) AS alba3, metadata_mapping(alb_a.alba3_metadata) AS alba3_metadata, alb_a.alba3_metadata_comment, alb_a.alba4, metadata_mapping(alb_a.alba4_metadata) AS alba4_metadata, alb_a.alba4_metadata_comment, alb_a.alba5, metadata_mapping(alb_a.alba5_metadata) AS alba5_metadata, alb_a.alba5_metadata_comment, alb_a.alba6a1, metadata_mapping(alb_a.alba6a1_metadata) AS alba6a1_metadata, alb_a.alba6a1_metadata_comment, alb_a.alba6aa, metadata_mapping(alb_a.alba6aa_metadata) AS alba6aa_metadata, alb_a.alba6aa_metadata_comment, alb_a.alba6b1, metadata_mapping(alb_a.alba6b1_metadata) AS alba6b1_metadata, alb_a.alba6b1_metadata_comment, alb_a.alba6bb, metadata_mapping(alb_a.alba6bb_metadata) AS alba6bb_metadata, alb_a.alba6bb_metadata_comment, alb_a.alba6c1, metadata_mapping(alb_a.alba6c1_metadata) AS alba6c1_metadata, alb_a.alba6c1_metadata_comment, alb_a.alba7a1, metadata_mapping(alb_a.alba7a1_metadata) AS alba7a1_metadata, alb_a.alba7a1_metadata_comment, alb_a.alba7aa, metadata_mapping(alb_a.alba7aa_metadata) AS alba7aa_metadata, alb_a.alba7aa_metadata_comment, alb_a.alba7b1, metadata_mapping(alb_a.alba7b1_metadata) AS alba7b1_metadata, alb_a.alba7b1_metadata_comment, alb_a.alba7bb, metadata_mapping(alb_a.alba7bb_metadata) AS alba7bb_metadata, alb_a.alba7bb_metadata_comment, alb_a.alba7c1, metadata_mapping(alb_a.alba7c1_metadata) AS alba7c1_metadata, alb_a.alba7c1_metadata_comment, whatthebabyisdrinking_mapping(alb_a.alba7cc) AS alba7cc, metadata_mapping(alb_a.alba7cc_metadata) AS alba7cc_metadata, alb_a.alba7cc_metadata_comment, alb_a.alba7dd, metadata_mapping(alb_a.alba7dd_metadata) AS alba7dd_metadata, alb_a.alba7dd_metadata_comment, alb_a.alba8a1, metadata_mapping(alb_a.alba8a1_metadata) AS alba8a1_metadata, alb_a.alba8a1_metadata_comment, alb_a.alba8aa, metadata_mapping(alb_a.alba8aa_metadata) AS alba8aa_metadata, alb_a.alba8aa_metadata_comment, alb_a.alba8b1, metadata_mapping(alb_a.alba8b1_metadata) AS alba8b1_metadata, alb_a.alba8b1_metadata_comment, alb_a.alba8bb, metadata_mapping(alb_a.alba8bb_metadata) AS alba8bb_metadata, alb_a.alba8bb_metadata_comment, alb_a.alba8c1, metadata_mapping(alb_a.alba8c1_metadata) AS alba8c1_metadata, alb_a.alba8c1_metadata_comment, alb_a.alba9, metadata_mapping(alb_a.alba9_metadata) AS alba9_metadata, alb_a.alba9_metadata_comment, typebreastfeeding_mapping(alb_a.alba1g) AS alba1g, metadata_mapping(alb_a.alba1g_metadata) AS alba1g_metadata, alb_a.alba1g_metadata_comment, alb_a.alba1ag, metadata_mapping(alb_a.alba1ag_metadata) AS alba1ag_metadata, alb_a.alba1ag_metadata_comment, typeofbabyfoodwithoutcomments_mapping(alb_a.alba3g) AS alba3g, metadata_mapping(alb_a.alba3g_metadata) AS alba3g_metadata, alb_a.alba3g_metadata_comment, alb_a.alba4g, metadata_mapping(alb_a.alba4g_metadata) AS alba4g_metadata, alb_a.alba4g_metadata_comment, alb_a.alba5g, metadata_mapping(alb_a.alba5g_metadata) AS alba5g_metadata, alb_a.alba5g_metadata_comment, alb_a.alba6a1g, metadata_mapping(alb_a.alba6a1g_metadata) AS alba6a1g_metadata, alb_a.alba6a1g_metadata_comment, alb_a.alba6aag, metadata_mapping(alb_a.alba6aag_metadata) AS alba6aag_metadata, alb_a.alba6aag_metadata_comment, alb_a.alba6b1g, metadata_mapping(alb_a.alba6b1g_metadata) AS alba6b1g_metadata, alb_a.alba6b1g_metadata_comment, alb_a.alba6bbg, metadata_mapping(alb_a.alba6bbg_metadata) AS alba6bbg_metadata, alb_a.alba6bbg_metadata_comment, alb_a.alba6c1g, metadata_mapping(alb_a.alba6c1g_metadata) AS alba6c1g_metadata, alb_a.alba6c1g_metadata_comment, alb_a.alba7a1g, metadata_mapping(alb_a.alba7a1g_metadata) AS alba7a1g_metadata, alb_a.alba7a1g_metadata_comment, alb_a.alba7aag, metadata_mapping(alb_a.alba7aag_metadata) AS alba7aag_metadata, alb_a.alba7aag_metadata_comment, alb_a.alba7b1g, metadata_mapping(alb_a.alba7b1g_metadata) AS alba7b1g_metadata, alb_a.alba7b1g_metadata_comment, alb_a.alba7bbg, metadata_mapping(alb_a.alba7bbg_metadata) AS alba7bbg_metadata, alb_a.alba7bbg_metadata_comment, alb_a.alba7c1g, metadata_mapping(alb_a.alba7c1g_metadata) AS alba7c1g_metadata, alb_a.alba7c1g_metadata_comment, whatthebabyisdrinking_mapping(alb_a.alba7cg) AS alba7cg, metadata_mapping(alb_a.alba7cg_metadata) AS alba7cg_metadata, alb_a.alba7cg_metadata_comment, alb_a.alba7dg, metadata_mapping(alb_a.alba7dg_metadata) AS alba7dg_metadata, alb_a.alba7dg_metadata_comment, alb_a.alba8a1g, metadata_mapping(alb_a.alba8a1g_metadata) AS alba8a1g_metadata, alb_a.alba8a1g_metadata_comment, alb_a.alba8aag, metadata_mapping(alb_a.alba8aag_metadata) AS alba8aag_metadata, alb_a.alba8aag_metadata_comment, alb_a.alba8b1g, metadata_mapping(alb_a.alba8b1g_metadata) AS alba8b1g_metadata, alb_a.alba8b1g_metadata_comment, alb_a.alba8bbg, metadata_mapping(alb_a.alba8bbg_metadata) AS alba8bbg_metadata, alb_a.alba8bbg_metadata_comment, alb_a.alba8c1g, metadata_mapping(alb_a.alba8c1g_metadata) AS alba8c1g_metadata, alb_a.alba8c1g_metadata_comment, alb_a.alba9g, metadata_mapping(alb_a.alba9g_metadata) AS alba9g_metadata, alb_a.alba9g_metadata_comment, typebreastfeeding_mapping(alb_a.alba1g2) AS alba1g2, metadata_mapping(alb_a.alba1g2_metadata) AS alba1g2_metadata, alb_a.alba1g2_metadata_comment, alb_a.alba1ag2, metadata_mapping(alb_a.alba1ag2_metadata) AS alba1ag2_metadata, alb_a.alba1ag2_metadata_comment, typeofbabyfoodwithoutcomments_mapping(alb_a.alba3g2) AS alba3g2, metadata_mapping(alb_a.alba3g2_metadata) AS alba3g2_metadata, alb_a.alba3g2_metadata_comment, alb_a.alba4g2, metadata_mapping(alb_a.alba4g2_metadata) AS alba4g2_metadata, alb_a.alba4g2_metadata_comment, alb_a.alba5g2, metadata_mapping(alb_a.alba5g2_metadata) AS alba5g2_metadata, alb_a.alba5g2_metadata_comment, alb_a.alba6a1g2, metadata_mapping(alb_a.alba6a1g2_metadata) AS alba6a1g2_metadata, alb_a.alba6a1g2_metadata_comment, alb_a.alba6aag2, metadata_mapping(alb_a.alba6aag2_metadata) AS alba6aag2_metadata, alb_a.alba6aag2_metadata_comment, alb_a.alba6b1g2, metadata_mapping(alb_a.alba6b1g2_metadata) AS alba6b1g2_metadata, alb_a.alba6b1g2_metadata_comment, alb_a.alba6bbg2, metadata_mapping(alb_a.alba6bbg2_metadata) AS alba6bbg2_metadata, alb_a.alba6bbg2_metadata_comment, alb_a.alba6c1g2, metadata_mapping(alb_a.alba6c1g2_metadata) AS alba6c1g2_metadata, alb_a.alba6c1g2_metadata_comment, alb_a.alba7a1g2, metadata_mapping(alb_a.alba7a1g2_metadata) AS alba7a1g2_metadata, alb_a.alba7a1g2_metadata_comment, alb_a.alba7aag2, metadata_mapping(alb_a.alba7aag2_metadata) AS alba7aag2_metadata, alb_a.alba7aag2_metadata_comment, alb_a.alba7b1g2, metadata_mapping(alb_a.alba7b1g2_metadata) AS alba7b1g2_metadata, alb_a.alba7b1g2_metadata_comment, alb_a.alba7bbg2, metadata_mapping(alb_a.alba7bbg2_metadata) AS alba7bbg2_metadata, alb_a.alba7bbg2_metadata_comment, alb_a.alba7c1g2, metadata_mapping(alb_a.alba7c1g2_metadata) AS alba7c1g2_metadata, alb_a.alba7c1g2_metadata_comment, whatthebabyisdrinking_mapping(alb_a.alba7cg2) AS alba7cg2, metadata_mapping(alb_a.alba7cg2_metadata) AS alba7cg2_metadata, alb_a.alba7cg2_metadata_comment, alb_a.alba7dg2, metadata_mapping(alb_a.alba7dg2_metadata) AS alba7dg2_metadata, alb_a.alba7dg2_metadata_comment, alb_a.alba8a1g2, metadata_mapping(alb_a.alba8a1g2_metadata) AS alba8a1g2_metadata, alb_a.alba8a1g2_metadata_comment, alb_a.alba8aag2, metadata_mapping(alb_a.alba8aag2_metadata) AS alba8aag2_metadata, alb_a.alba8aag2_metadata_comment, alb_a.alba8b1g2, metadata_mapping(alb_a.alba8b1g2_metadata) AS alba8b1g2_metadata, alb_a.alba8b1g2_metadata_comment, alb_a.alba8bbg2, metadata_mapping(alb_a.alba8bbg2_metadata) AS alba8bbg2_metadata, alb_a.alba8bbg2_metadata_comment, alb_a.alba8c1g2, metadata_mapping(alb_a.alba8c1g2_metadata) AS alba8c1g2_metadata, alb_a.alba8c1g2_metadata_comment, alb_a.alba9g2, metadata_mapping(alb_a.alba9g2_metadata) AS alba9g2_metadata, alb_a.alba9g2_metadata_comment, at.version AS versao_alb FROM ((((((coorte.alb_a alb_a JOIN public.activity a ON ((a.id = alb_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_alb_a OWNER TO postgres;

--
-- Name: v_albs_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_albs_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS albsadataapini, a.finalization_date AS albsadataapfim, o.date AS albsadataoffline, u.code AS albsaaferidor, ou.code AS albsadigitador, typepregnancy_mapping(albs_a.albsa10) AS albsa10, metadata_mapping(albs_a.albsa10_metadata) AS albsa10_metadata, albs_a.albsa10_metadata_comment, albs_a.albsa10a, metadata_mapping(albs_a.albsa10a_metadata) AS albsa10a_metadata, albs_a.albsa10a_metadata_comment, typebreastfeeding_mapping(albs_a.albsa1) AS albsa1, metadata_mapping(albs_a.albsa1_metadata) AS albsa1_metadata, albs_a.albsa1_metadata_comment, albs_a.albsa1a, metadata_mapping(albs_a.albsa1a_metadata) AS albsa1a_metadata, albs_a.albsa1a_metadata_comment, noyesuppercase_mapping(albs_a.albsa2) AS albsa2, metadata_mapping(albs_a.albsa2_metadata) AS albsa2_metadata, albs_a.albsa2_metadata_comment, metadata_mapping(albs_a.albsa2group_metadata) AS albsa2group_metadata, albs_a.albsa2group_metadata_comment, albs_a.albsa2a1, metadata_mapping(albs_a.albsa2a1_metadata) AS albsa2a1_metadata, albs_a.albsa2a1_metadata_comment, albs_a.albsa2a2, metadata_mapping(albs_a.albsa2a2_metadata) AS albsa2a2_metadata, albs_a.albsa2a2_metadata_comment, albs_a.albsa2a3, metadata_mapping(albs_a.albsa2a3_metadata) AS albsa2a3_metadata, albs_a.albsa2a3_metadata_comment, albs_a.albsa2a4, metadata_mapping(albs_a.albsa2a4_metadata) AS albsa2a4_metadata, albs_a.albsa2a4_metadata_comment, albs_a.albsa2a5, metadata_mapping(albs_a.albsa2a5_metadata) AS albsa2a5_metadata, albs_a.albsa2a5_metadata_comment, albs_a.albsa2a6, metadata_mapping(albs_a.albsa2a6_metadata) AS albsa2a6_metadata, albs_a.albsa2a6_metadata_comment, albs_a.albsa2a7, metadata_mapping(albs_a.albsa2a7_metadata) AS albsa2a7_metadata, albs_a.albsa2a7_metadata_comment, albs_a.albsa2a8, metadata_mapping(albs_a.albsa2a8_metadata) AS albsa2a8_metadata, albs_a.albsa2a8_metadata_comment, albs_a.albsa2a9, metadata_mapping(albs_a.albsa2a9_metadata) AS albsa2a9_metadata, albs_a.albsa2a9_metadata_comment, albs_a.albsa2a10, metadata_mapping(albs_a.albsa2a10_metadata) AS albsa2a10_metadata, albs_a.albsa2a10_metadata_comment, albs_a.albsa2a11, metadata_mapping(albs_a.albsa2a11_metadata) AS albsa2a11_metadata, albs_a.albsa2a11_metadata_comment, albs_a.albsa2a12, metadata_mapping(albs_a.albsa2a12_metadata) AS albsa2a12_metadata, albs_a.albsa2a12_metadata_comment, albs_a.albsa2a13, metadata_mapping(albs_a.albsa2a13_metadata) AS albsa2a13_metadata, albs_a.albsa2a13_metadata_comment, albs_a.albsa2a14, metadata_mapping(albs_a.albsa2a14_metadata) AS albsa2a14_metadata, albs_a.albsa2a14_metadata_comment, albs_a.albsa2a15, metadata_mapping(albs_a.albsa2a15_metadata) AS albsa2a15_metadata, albs_a.albsa2a15_metadata_comment, albs_a.albsa2a16, metadata_mapping(albs_a.albsa2a16_metadata) AS albsa2a16_metadata, albs_a.albsa2a16_metadata_comment, albs_a.albsa2a17, metadata_mapping(albs_a.albsa2a17_metadata) AS albsa2a17_metadata, albs_a.albsa2a17_metadata_comment, albs_a.albsa2a18, metadata_mapping(albs_a.albsa2a18_metadata) AS albsa2a18_metadata, albs_a.albsa2a18_metadata_comment, albs_a.albsa2a19, metadata_mapping(albs_a.albsa2a19_metadata) AS albsa2a19_metadata, albs_a.albsa2a19_metadata_comment, albs_a.albsa2a20, metadata_mapping(albs_a.albsa2a20_metadata) AS albsa2a20_metadata, albs_a.albsa2a20_metadata_comment, albs_a.albsa2a20q, metadata_mapping(albs_a.albsa2a20q_metadata) AS albsa2a20q_metadata, albs_a.albsa2a20q_metadata_comment, typeofbabyfoodwithoutcomments_mapping(albs_a.albsa3) AS albsa3, metadata_mapping(albs_a.albsa3_metadata) AS albsa3_metadata, albs_a.albsa3_metadata_comment, albs_a.albsa4, metadata_mapping(albs_a.albsa4_metadata) AS albsa4_metadata, albs_a.albsa4_metadata_comment, albs_a.albsa5, metadata_mapping(albs_a.albsa5_metadata) AS albsa5_metadata, albs_a.albsa5_metadata_comment, albs_a.albsa6a1, metadata_mapping(albs_a.albsa6a1_metadata) AS albsa6a1_metadata, albs_a.albsa6a1_metadata_comment, albs_a.albsa6b1, metadata_mapping(albs_a.albsa6b1_metadata) AS albsa6b1_metadata, albs_a.albsa6b1_metadata_comment, albs_a.albsa6c1, metadata_mapping(albs_a.albsa6c1_metadata) AS albsa6c1_metadata, albs_a.albsa6c1_metadata_comment, albs_a.albsa6aa, metadata_mapping(albs_a.albsa6aa_metadata) AS albsa6aa_metadata, albs_a.albsa6aa_metadata_comment, albs_a.albsa6bb, metadata_mapping(albs_a.albsa6bb_metadata) AS albsa6bb_metadata, albs_a.albsa6bb_metadata_comment, albs_a.albsa7a1, metadata_mapping(albs_a.albsa7a1_metadata) AS albsa7a1_metadata, albs_a.albsa7a1_metadata_comment, albs_a.albsa7b1, metadata_mapping(albs_a.albsa7b1_metadata) AS albsa7b1_metadata, albs_a.albsa7b1_metadata_comment, albs_a.albsa7c1, metadata_mapping(albs_a.albsa7c1_metadata) AS albsa7c1_metadata, albs_a.albsa7c1_metadata_comment, albs_a.albsa7aa, metadata_mapping(albs_a.albsa7aa_metadata) AS albsa7aa_metadata, albs_a.albsa7aa_metadata_comment, albs_a.albsa7bb, metadata_mapping(albs_a.albsa7bb_metadata) AS albsa7bb_metadata, albs_a.albsa7bb_metadata_comment, whatthebabyisdrinking_mapping(albs_a.albsa7cc) AS albsa7cc, metadata_mapping(albs_a.albsa7cc_metadata) AS albsa7cc_metadata, albs_a.albsa7cc_metadata_comment, albs_a.albsa7dd, metadata_mapping(albs_a.albsa7dd_metadata) AS albsa7dd_metadata, albs_a.albsa7dd_metadata_comment, albs_a.albsa8a1, metadata_mapping(albs_a.albsa8a1_metadata) AS albsa8a1_metadata, albs_a.albsa8a1_metadata_comment, albs_a.albsa8b1, metadata_mapping(albs_a.albsa8b1_metadata) AS albsa8b1_metadata, albs_a.albsa8b1_metadata_comment, albs_a.albsa8c1, metadata_mapping(albs_a.albsa8c1_metadata) AS albsa8c1_metadata, albs_a.albsa8c1_metadata_comment, albs_a.albsa8aa, metadata_mapping(albs_a.albsa8aa_metadata) AS albsa8aa_metadata, albs_a.albsa8aa_metadata_comment, albs_a.albsa8bb, metadata_mapping(albs_a.albsa8bb_metadata) AS albsa8bb_metadata, albs_a.albsa8bb_metadata_comment, albs_a.albsa9, metadata_mapping(albs_a.albsa9_metadata) AS albsa9_metadata, albs_a.albsa9_metadata_comment, typebreastfeeding_mapping(albs_a.albsa1g) AS albsa1g, metadata_mapping(albs_a.albsa1g_metadata) AS albsa1g_metadata, albs_a.albsa1g_metadata_comment, albs_a.albsa1ag, metadata_mapping(albs_a.albsa1ag_metadata) AS albsa1ag_metadata, albs_a.albsa1ag_metadata_comment, typeofbabyfoodwithoutcomments_mapping(albs_a.albsa3g) AS albsa3g, metadata_mapping(albs_a.albsa3g_metadata) AS albsa3g_metadata, albs_a.albsa3g_metadata_comment, albs_a.albsa4g, metadata_mapping(albs_a.albsa4g_metadata) AS albsa4g_metadata, albs_a.albsa4g_metadata_comment, albs_a.albsa5g, metadata_mapping(albs_a.albsa5g_metadata) AS albsa5g_metadata, albs_a.albsa5g_metadata_comment, albs_a.albsa6a1g, metadata_mapping(albs_a.albsa6a1g_metadata) AS albsa6a1g_metadata, albs_a.albsa6a1g_metadata_comment, albs_a.albsa6b1g, metadata_mapping(albs_a.albsa6b1g_metadata) AS albsa6b1g_metadata, albs_a.albsa6b1g_metadata_comment, albs_a.albsa6c1g, metadata_mapping(albs_a.albsa6c1g_metadata) AS albsa6c1g_metadata, albs_a.albsa6c1g_metadata_comment, albs_a.albsa6aag, metadata_mapping(albs_a.albsa6aag_metadata) AS albsa6aag_metadata, albs_a.albsa6aag_metadata_comment, albs_a.albsa6bbg, metadata_mapping(albs_a.albsa6bbg_metadata) AS albsa6bbg_metadata, albs_a.albsa6bbg_metadata_comment, albs_a.albsa7a1g, metadata_mapping(albs_a.albsa7a1g_metadata) AS albsa7a1g_metadata, albs_a.albsa7a1g_metadata_comment, albs_a.albsa7b1g, metadata_mapping(albs_a.albsa7b1g_metadata) AS albsa7b1g_metadata, albs_a.albsa7b1g_metadata_comment, albs_a.albsa7c1g, metadata_mapping(albs_a.albsa7c1g_metadata) AS albsa7c1g_metadata, albs_a.albsa7c1g_metadata_comment, albs_a.albsa7aag, metadata_mapping(albs_a.albsa7aag_metadata) AS albsa7aag_metadata, albs_a.albsa7aag_metadata_comment, albs_a.albsa7bbg, metadata_mapping(albs_a.albsa7bbg_metadata) AS albsa7bbg_metadata, albs_a.albsa7bbg_metadata_comment, whatthebabyisdrinking_mapping(albs_a.albsa7cg) AS albsa7cg, metadata_mapping(albs_a.albsa7cg_metadata) AS albsa7cg_metadata, albs_a.albsa7cg_metadata_comment, albs_a.albsa7dg, metadata_mapping(albs_a.albsa7dg_metadata) AS albsa7dg_metadata, albs_a.albsa7dg_metadata_comment, albs_a.albsa8a1g, metadata_mapping(albs_a.albsa8a1g_metadata) AS albsa8a1g_metadata, albs_a.albsa8a1g_metadata_comment, albs_a.albsa8b1g, metadata_mapping(albs_a.albsa8b1g_metadata) AS albsa8b1g_metadata, albs_a.albsa8b1g_metadata_comment, albs_a.albsa8c1g, metadata_mapping(albs_a.albsa8c1g_metadata) AS albsa8c1g_metadata, albs_a.albsa8c1g_metadata_comment, albs_a.albsa8aag, metadata_mapping(albs_a.albsa8aag_metadata) AS albsa8aag_metadata, albs_a.albsa8aag_metadata_comment, albs_a.albsa8bbg, metadata_mapping(albs_a.albsa8bbg_metadata) AS albsa8bbg_metadata, albs_a.albsa8bbg_metadata_comment, albs_a.albsa9g, metadata_mapping(albs_a.albsa9g_metadata) AS albsa9g_metadata, albs_a.albsa9g_metadata_comment, typebreastfeeding_mapping(albs_a.albsa1g2) AS albsa1g2, metadata_mapping(albs_a.albsa1g2_metadata) AS albsa1g2_metadata, albs_a.albsa1g2_metadata_comment, albs_a.albsa1ag2, metadata_mapping(albs_a.albsa1ag2_metadata) AS albsa1ag2_metadata, albs_a.albsa1ag2_metadata_comment, typeofbabyfoodwithoutcomments_mapping(albs_a.albsa3g2) AS albsa3g2, metadata_mapping(albs_a.albsa3g2_metadata) AS albsa3g2_metadata, albs_a.albsa3g2_metadata_comment, albs_a.albsa4g2, metadata_mapping(albs_a.albsa4g2_metadata) AS albsa4g2_metadata, albs_a.albsa4g2_metadata_comment, albs_a.albsa5g2, metadata_mapping(albs_a.albsa5g2_metadata) AS albsa5g2_metadata, albs_a.albsa5g2_metadata_comment, albs_a.albsa6a1g2, metadata_mapping(albs_a.albsa6a1g2_metadata) AS albsa6a1g2_metadata, albs_a.albsa6a1g2_metadata_comment, albs_a.albsa6b1g2, metadata_mapping(albs_a.albsa6b1g2_metadata) AS albsa6b1g2_metadata, albs_a.albsa6b1g2_metadata_comment, albs_a.albsa6c1g2, metadata_mapping(albs_a.albsa6c1g2_metadata) AS albsa6c1g2_metadata, albs_a.albsa6c1g2_metadata_comment, albs_a.albsa6aag2, metadata_mapping(albs_a.albsa6aag2_metadata) AS albsa6aag2_metadata, albs_a.albsa6aag2_metadata_comment, albs_a.albsa6bbg2, metadata_mapping(albs_a.albsa6bbg2_metadata) AS albsa6bbg2_metadata, albs_a.albsa6bbg2_metadata_comment, albs_a.albsa7a1g2, metadata_mapping(albs_a.albsa7a1g2_metadata) AS albsa7a1g2_metadata, albs_a.albsa7a1g2_metadata_comment, albs_a.albsa7b1g2, metadata_mapping(albs_a.albsa7b1g2_metadata) AS albsa7b1g2_metadata, albs_a.albsa7b1g2_metadata_comment, albs_a.albsa7c1g2, metadata_mapping(albs_a.albsa7c1g2_metadata) AS albsa7c1g2_metadata, albs_a.albsa7c1g2_metadata_comment, albs_a.albsa7aag2, metadata_mapping(albs_a.albsa7aag2_metadata) AS albsa7aag2_metadata, albs_a.albsa7aag2_metadata_comment, albs_a.albsa7bbg2, metadata_mapping(albs_a.albsa7bbg2_metadata) AS albsa7bbg2_metadata, albs_a.albsa7bbg2_metadata_comment, whatthebabyisdrinking_mapping(albs_a.albsa7cg2) AS albsa7cg2, metadata_mapping(albs_a.albsa7cg2_metadata) AS albsa7cg2_metadata, albs_a.albsa7cg2_metadata_comment, albs_a.albsa7dg2, metadata_mapping(albs_a.albsa7dg2_metadata) AS albsa7dg2_metadata, albs_a.albsa7dg2_metadata_comment, albs_a.albsa8a1g2, metadata_mapping(albs_a.albsa8a1g2_metadata) AS albsa8a1g2_metadata, albs_a.albsa8a1g2_metadata_comment, albs_a.albsa8b1g2, metadata_mapping(albs_a.albsa8b1g2_metadata) AS albsa8b1g2_metadata, albs_a.albsa8b1g2_metadata_comment, albs_a.albsa8c1g2, metadata_mapping(albs_a.albsa8c1g2_metadata) AS albsa8c1g2_metadata, albs_a.albsa8c1g2_metadata_comment, albs_a.albsa8aag2, metadata_mapping(albs_a.albsa8aag2_metadata) AS albsa8aag2_metadata, albs_a.albsa8aag2_metadata_comment, albs_a.albsa8bbg2, metadata_mapping(albs_a.albsa8bbg2_metadata) AS albsa8bbg2_metadata, albs_a.albsa8bbg2_metadata_comment, albs_a.albsa9g2, metadata_mapping(albs_a.albsa9g2_metadata) AS albsa9g2_metadata, albs_a.albsa9g2_metadata_comment, at.version AS versao_albs FROM ((((((coorte.albs_a albs_a JOIN public.activity a ON ((a.id = albs_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_albs_a OWNER TO postgres;

--
-- Name: v_ant_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_ant_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS antadataapini, a.finalization_date AS antadataapfim, o.date AS antadataoffline, u.code AS antaaferidor, ou.code AS antadigitador, ant_a.anta1, metadata_mapping(ant_a.anta1_metadata) AS anta1_metadata, ant_a.anta1_metadata_comment, ant_a.anta2, metadata_mapping(ant_a.anta2_metadata) AS anta2_metadata, ant_a.anta2_metadata_comment, ant_a.anta9, metadata_mapping(ant_a.anta9_metadata) AS anta9_metadata, ant_a.anta9_metadata_comment, ant_a.anta3, metadata_mapping(ant_a.anta3_metadata) AS anta3_metadata, ant_a.anta3_metadata_comment, ant_a.anta4, metadata_mapping(ant_a.anta4_metadata) AS anta4_metadata, ant_a.anta4_metadata_comment, ant_a.anta5, metadata_mapping(ant_a.anta5_metadata) AS anta5_metadata, ant_a.anta5_metadata_comment, ant_a.antaobs, metadata_mapping(ant_a.antaobs_metadata) AS antaobs_metadata, ant_a.antaobs_metadata_comment, ant_a.antacomh, ant_a.antacomm, metadata_mapping(ant_a.antacom_metadata) AS antacom_metadata, ant_a.antacom_metadata_comment, ant_a.anta6, metadata_mapping(ant_a.anta6_metadata) AS anta6_metadata, ant_a.anta6_metadata_comment, ant_a.anta7a, metadata_mapping(ant_a.anta7a_metadata) AS anta7a_metadata, ant_a.anta7a_metadata_comment, ant_a.anta7b, metadata_mapping(ant_a.anta7b_metadata) AS anta7b_metadata, ant_a.anta7b_metadata_comment, ant_a.anta7c, metadata_mapping(ant_a.anta7c_metadata) AS anta7c_metadata, ant_a.anta7c_metadata_comment, ant_a.anta7d, metadata_mapping(ant_a.anta7d_metadata) AS anta7d_metadata, ant_a.anta7d_metadata_comment, ant_a.anta7e, metadata_mapping(ant_a.anta7e_metadata) AS anta7e_metadata, ant_a.anta7e_metadata_comment, ant_a.anta7f, metadata_mapping(ant_a.anta7f_metadata) AS anta7f_metadata, ant_a.anta7f_metadata_comment, ant_a.anta8a, metadata_mapping(ant_a.anta8a_metadata) AS anta8a_metadata, ant_a.anta8a_metadata_comment, ant_a.anta8b, metadata_mapping(ant_a.anta8b_metadata) AS anta8b_metadata, ant_a.anta8b_metadata_comment, ant_a.anta8c, metadata_mapping(ant_a.anta8c_metadata) AS anta8c_metadata, ant_a.anta8c_metadata_comment, ant_a.antaobs1, metadata_mapping(ant_a.antaobs1_metadata) AS antaobs1_metadata, ant_a.antaobs1_metadata_comment, ant_a.antacom1, metadata_mapping(ant_a.antacom1_metadata) AS antacom1_metadata, ant_a.antacom1_metadata_comment, at.version AS versao_ant FROM ((((((coorte.ant_a ant_a JOIN public.activity a ON ((a.id = ant_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_ant_a OWNER TO postgres;

--
-- Name: v_ants_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_ants_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS antsadataapini, a.finalization_date AS antsadataapfim, o.date AS antsadataoffline, u.code AS antsaaferidor, ou.code AS antsadigitador, ants_a.antsa1, metadata_mapping(ants_a.antsa1_metadata) AS antsa1_metadata, ants_a.antsa1_metadata_comment, ants_a.antsa2, metadata_mapping(ants_a.antsa2_metadata) AS antsa2_metadata, ants_a.antsa2_metadata_comment, ants_a.antsa9, metadata_mapping(ants_a.antsa9_metadata) AS antsa9_metadata, ants_a.antsa9_metadata_comment, ants_a.antsa5, metadata_mapping(ants_a.antsa5_metadata) AS antsa5_metadata, ants_a.antsa5_metadata_comment, ants_a.antsaobs, metadata_mapping(ants_a.antsaobs_metadata) AS antsaobs_metadata, ants_a.antsaobs_metadata_comment, ants_a.antsacomh, ants_a.antsacomm, metadata_mapping(ants_a.antsacom_metadata) AS antsacom_metadata, ants_a.antsacom_metadata_comment, ants_a.antsa7a, metadata_mapping(ants_a.antsa7a_metadata) AS antsa7a_metadata, ants_a.antsa7a_metadata_comment, ants_a.antsa7b, metadata_mapping(ants_a.antsa7b_metadata) AS antsa7b_metadata, ants_a.antsa7b_metadata_comment, ants_a.antsa7c, metadata_mapping(ants_a.antsa7c_metadata) AS antsa7c_metadata, ants_a.antsa7c_metadata_comment, ants_a.antsa7d, metadata_mapping(ants_a.antsa7d_metadata) AS antsa7d_metadata, ants_a.antsa7d_metadata_comment, ants_a.antsa7e, metadata_mapping(ants_a.antsa7e_metadata) AS antsa7e_metadata, ants_a.antsa7e_metadata_comment, ants_a.antsa7f, metadata_mapping(ants_a.antsa7f_metadata) AS antsa7f_metadata, ants_a.antsa7f_metadata_comment, ants_a.antsa8a, metadata_mapping(ants_a.antsa8a_metadata) AS antsa8a_metadata, ants_a.antsa8a_metadata_comment, ants_a.antsa8b, metadata_mapping(ants_a.antsa8b_metadata) AS antsa8b_metadata, ants_a.antsa8b_metadata_comment, ants_a.antsa8c, metadata_mapping(ants_a.antsa8c_metadata) AS antsa8c_metadata, ants_a.antsa8c_metadata_comment, ants_a.antsaobs1, metadata_mapping(ants_a.antsaobs1_metadata) AS antsaobs1_metadata, ants_a.antsaobs1_metadata_comment, ants_a.antsacom1, metadata_mapping(ants_a.antsacom1_metadata) AS antsacom1_metadata, ants_a.antsacom1_metadata_comment, at.version AS versao_ants FROM ((((((coorte.ants_a ants_a JOIN public.activity a ON ((a.id = ants_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_ants_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: bio_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE bio_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    bioa43_metadata character varying(255),
    bioa43_metadata_comment text,
    bioa44_metadata character varying(255),
    bioa44_metadata_comment text,
    bioa45_metadata character varying(255),
    bioa45_metadata_comment text,
    bioa46_metadata character varying(255),
    bioa46_metadata_comment text,
    bioa75_metadata character varying(255),
    bioa75_metadata_comment text,
    bioa76_metadata character varying(255),
    bioa76_metadata_comment text,
    bioa77_metadata character varying(255),
    bioa77_metadata_comment text,
    bioa78_metadata character varying(255),
    bioa78_metadata_comment text,
    bioa42_metadata character varying(255),
    bioa42_metadata_comment text,
    bioa74_metadata character varying(255),
    bioa74_metadata_comment text,
    bioa20_metadata character varying(255),
    bioa20_metadata_comment text,
    bioa21_metadata character varying(255),
    bioa21_metadata_comment text,
    bioa22_metadata character varying(255),
    bioa22_metadata_comment text,
    bioa23_metadata character varying(255),
    bioa23_metadata_comment text,
    bioa19_metadata character varying(255),
    bioa19_metadata_comment text,
    bioa66_metadata character varying(255),
    bioa66_metadata_comment text,
    bioa67_metadata character varying(255),
    bioa67_metadata_comment text,
    bioa68_metadata character varying(255),
    bioa68_metadata_comment text,
    bioa69_metadata character varying(255),
    bioa69_metadata_comment text,
    bioa70_metadata character varying(255),
    bioa70_metadata_comment text,
    bioa71_metadata character varying(255),
    bioa71_metadata_comment text,
    bioa72_metadata character varying(255),
    bioa72_metadata_comment text,
    bioa73_metadata character varying(255),
    bioa73_metadata_comment text,
    bioa65_metadata character varying(255),
    bioa65_metadata_comment text,
    bioa47_metadata character varying(255),
    bioa47_metadata_comment text,
    bioa34_metadata character varying(255),
    bioa34_metadata_comment text,
    bioa35_metadata character varying(255),
    bioa35_metadata_comment text,
    bioa36_metadata character varying(255),
    bioa36_metadata_comment text,
    bioa37_metadata character varying(255),
    bioa37_metadata_comment text,
    bioa38_metadata character varying(255),
    bioa38_metadata_comment text,
    bioa39_metadata character varying(255),
    bioa39_metadata_comment text,
    bioa40_metadata character varying(255),
    bioa40_metadata_comment text,
    bioa41_metadata character varying(255),
    bioa41_metadata_comment text,
    bioa33_metadata character varying(255),
    bioa33_metadata_comment text,
    bioa48_metadata character varying(255),
    bioa48_metadata_comment text,
    bioa49_metadata character varying(255),
    bioa49_metadata_comment text,
    bioa50_metadata character varying(255),
    bioa50_metadata_comment text,
    bioa51_metadata character varying(255),
    bioa51_metadata_comment text,
    bioa52_metadata character varying(255),
    bioa52_metadata_comment text,
    bioa53_metadata character varying(255),
    bioa53_metadata_comment text,
    bioa54_metadata character varying(255),
    bioa54_metadata_comment text,
    bioa55_metadata character varying(255),
    bioa55_metadata_comment text,
    bioa2_metadata character varying(255),
    bioa2_metadata_comment text,
    bioa3_metadata character varying(255),
    bioa3_metadata_comment text,
    bioa4_metadata character varying(255),
    bioa4_metadata_comment text,
    bioa5_metadata character varying(255),
    bioa5_metadata_comment text,
    bioa6_metadata character varying(255),
    bioa6_metadata_comment text,
    bioa7_metadata character varying(255),
    bioa7_metadata_comment text,
    bioa8_metadata character varying(255),
    bioa8_metadata_comment text,
    bioa9_metadata character varying(255),
    bioa9_metadata_comment text,
    bioa1_metadata character varying(255),
    bioa1_metadata_comment text,
    bioa10_metadata character varying(255),
    bioa10_metadata_comment text,
    bioa63_metadata character varying(255),
    bioa63_metadata_comment text,
    bioa64_metadata character varying(255),
    bioa64_metadata_comment text,
    bioa25_metadata character varying(255),
    bioa25_metadata_comment text,
    bioa26_metadata character varying(255),
    bioa26_metadata_comment text,
    bioa24_metadata character varying(255),
    bioa24_metadata_comment text,
    bioa62_metadata character varying(255),
    bioa62_metadata_comment text,
    qc_group character varying(255),
    bioa11_metadata character varying(255),
    bioa11_metadata_comment text,
    bioa12_metadata character varying(255),
    bioa12_metadata_comment text,
    bioa13_metadata character varying(255),
    bioa13_metadata_comment text,
    bioa14_metadata character varying(255),
    bioa14_metadata_comment text,
    bioa15_metadata character varying(255),
    bioa15_metadata_comment text,
    bioa16_metadata character varying(255),
    bioa16_metadata_comment text,
    bioa17_metadata character varying(255),
    bioa17_metadata_comment text,
    bioa18_metadata character varying(255),
    bioa18_metadata_comment text,
    bioa57_metadata character varying(255),
    bioa57_metadata_comment text,
    bioa58_metadata character varying(255),
    bioa58_metadata_comment text,
    bioa59_metadata character varying(255),
    bioa59_metadata_comment text,
    bioa60_metadata character varying(255),
    bioa60_metadata_comment text,
    bioa61_metadata character varying(255),
    bioa61_metadata_comment text,
    bioa28_metadata character varying(255),
    bioa28_metadata_comment text,
    bioa29_metadata character varying(255),
    bioa29_metadata_comment text,
    bioa30_metadata character varying(255),
    bioa30_metadata_comment text,
    bioa31_metadata character varying(255),
    bioa31_metadata_comment text,
    bioa32_metadata character varying(255),
    bioa32_metadata_comment text,
    bioa27_metadata character varying(255),
    bioa27_metadata_comment text,
    bioa56_metadata character varying(255),
    bioa56_metadata_comment text,
    edta120aliquot1_id integer,
    edta120aliquot2_id integer,
    edta120aliquot3_id integer,
    edta120aliquot4_id integer,
    edta120aliquotqc1_id integer,
    edta120aliquotqc2_id integer,
    edta120aliquotqc3_id integer,
    edta120aliquotqc4_id integer,
    edta120tube_id integer,
    edta120tubeqc_id integer,
    edtafastingaliquot1_id integer,
    edtafastingaliquot2_id integer,
    edtafastingaliquot3_id integer,
    edtafastingaliquot4_id integer,
    edtafastingtube_id integer,
    fastinggel120aliquotqc1_id integer,
    fastinggel120aliquotqc2_id integer,
    fastinggel120aliquotqc3_id integer,
    fastinggel120aliquotqc4_id integer,
    fastinggel120aliquotqc5_id integer,
    fastinggel120aliquotqc6_id integer,
    fastinggel120aliquotqc7_id integer,
    fastinggel120aliquotqc8_id integer,
    fastinggel120tubeqc_id integer,
    fastinggeltubeqc_id integer,
    gel120aliquot1_id integer,
    gel120aliquot2_id integer,
    gel120aliquot3_id integer,
    gel120aliquot4_id integer,
    gel120aliquot5_id integer,
    gel120aliquot6_id integer,
    gel120aliquot7_id integer,
    gel120aliquot8_id integer,
    gel120tube_id integer,
    gelaliquotqc1_id integer,
    gelaliquotqc2_id integer,
    gelaliquotqc3_id integer,
    gelaliquotqc4_id integer,
    gelaliquotqc5_id integer,
    gelaliquotqc6_id integer,
    gelaliquotqc7_id integer,
    gelaliquotqc8_id integer,
    gelfastingaliquot1_id integer,
    gelfastingaliquot2_id integer,
    gelfastingaliquot3_id integer,
    gelfastingaliquot4_id integer,
    gelfastingaliquot5_id integer,
    gelfastingaliquot6_id integer,
    gelfastingaliquot7_id integer,
    gelfastingaliquot8_id integer,
    gelfastingtube1_id integer,
    gelfastingtube2_id integer,
    heparinaliquotqc1_id integer,
    heparinaliquotqc2_id integer,
    heparinfastingaliquot1_id integer,
    heparinfastingaliquot2_id integer,
    heparinfastingtube_id integer,
    heparintubeqc_id integer,
    secondgelfastingaliquot1_id integer,
    secondgelfastingaliquot2_id integer,
    secondgelfastingaliquot3_id integer,
    secondgelfastingaliquot4_id integer,
    secondgelfastingaliquot5_id integer,
    secondgelfastingaliquot6_id integer,
    secondgelfastingaliquot7_id integer,
    secondgelfastingaliquot8_id integer,
    urinealiquotqc1_id integer,
    urinealiquotqc2_id integer,
    urinealiquotqc3_id integer,
    urinealiquotqc4_id integer,
    urinealiquotqc5_id integer,
    urinefastingaliquot1_id integer,
    urinefastingaliquot2_id integer,
    urinefastingaliquot3_id integer,
    urinefastingaliquot4_id integer,
    urinefastingaliquot5_id integer,
    urinefastingtube_id integer,
    urinetubeqc_id integer
);


ALTER TABLE lab.bio_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_bio_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_bio_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS bioadataapini, a.finalization_date AS bioadataapfim, o.date AS bioadataoffline, u.code AS bioaaferidor, ou.code AS bioadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.gelfastingtube1_id)) AS bioa1, metadata_mapping(bio_a.bioa1_metadata) AS bioa1_metadata, bio_a.bioa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelfastingaliquot1_id)) AS bioa2, metadata_mapping(bio_a.bioa2_metadata) AS bioa2_metadata, bio_a.bioa2_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelfastingaliquot2_id)) AS bioa3, metadata_mapping(bio_a.bioa3_metadata) AS bioa3_metadata, bio_a.bioa3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelfastingaliquot3_id)) AS bioa4, metadata_mapping(bio_a.bioa4_metadata) AS bioa4_metadata, bio_a.bioa4_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelfastingaliquot4_id)) AS bioa5, metadata_mapping(bio_a.bioa5_metadata) AS bioa5_metadata, bio_a.bioa5_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelfastingaliquot5_id)) AS bioa6, metadata_mapping(bio_a.bioa6_metadata) AS bioa6_metadata, bio_a.bioa6_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelfastingaliquot6_id)) AS bioa7, metadata_mapping(bio_a.bioa7_metadata) AS bioa7_metadata, bio_a.bioa7_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelfastingaliquot7_id)) AS bioa8, metadata_mapping(bio_a.bioa8_metadata) AS bioa8_metadata, bio_a.bioa8_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelfastingaliquot8_id)) AS bioa9, metadata_mapping(bio_a.bioa9_metadata) AS bioa9_metadata, bio_a.bioa9_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.gelfastingtube2_id)) AS bioa10, metadata_mapping(bio_a.bioa10_metadata) AS bioa10_metadata, bio_a.bioa10_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.secondgelfastingaliquot1_id)) AS bioa11, metadata_mapping(bio_a.bioa11_metadata) AS bioa11_metadata, bio_a.bioa11_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.secondgelfastingaliquot2_id)) AS bioa12, metadata_mapping(bio_a.bioa12_metadata) AS bioa12_metadata, bio_a.bioa12_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.secondgelfastingaliquot3_id)) AS bioa13, metadata_mapping(bio_a.bioa13_metadata) AS bioa13_metadata, bio_a.bioa13_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.secondgelfastingaliquot4_id)) AS bioa14, metadata_mapping(bio_a.bioa14_metadata) AS bioa14_metadata, bio_a.bioa14_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.secondgelfastingaliquot5_id)) AS bioa15, metadata_mapping(bio_a.bioa15_metadata) AS bioa15_metadata, bio_a.bioa15_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.secondgelfastingaliquot6_id)) AS bioa16, metadata_mapping(bio_a.bioa16_metadata) AS bioa16_metadata, bio_a.bioa16_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.secondgelfastingaliquot7_id)) AS bioa17, metadata_mapping(bio_a.bioa17_metadata) AS bioa17_metadata, bio_a.bioa17_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.secondgelfastingaliquot8_id)) AS bioa18, metadata_mapping(bio_a.bioa18_metadata) AS bioa18_metadata, bio_a.bioa18_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.edtafastingtube_id)) AS bioa19, metadata_mapping(bio_a.bioa19_metadata) AS bioa19_metadata, bio_a.bioa19_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edtafastingaliquot1_id)) AS bioa20, metadata_mapping(bio_a.bioa20_metadata) AS bioa20_metadata, bio_a.bioa20_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edtafastingaliquot2_id)) AS bioa21, metadata_mapping(bio_a.bioa21_metadata) AS bioa21_metadata, bio_a.bioa21_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edtafastingaliquot3_id)) AS bioa22, metadata_mapping(bio_a.bioa22_metadata) AS bioa22_metadata, bio_a.bioa22_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edtafastingaliquot4_id)) AS bioa23, metadata_mapping(bio_a.bioa23_metadata) AS bioa23_metadata, bio_a.bioa23_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.heparinfastingtube_id)) AS bioa24, metadata_mapping(bio_a.bioa24_metadata) AS bioa24_metadata, bio_a.bioa24_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.heparinfastingaliquot1_id)) AS bioa25, metadata_mapping(bio_a.bioa25_metadata) AS bioa25_metadata, bio_a.bioa25_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.heparinfastingaliquot2_id)) AS bioa26, metadata_mapping(bio_a.bioa26_metadata) AS bioa26_metadata, bio_a.bioa26_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.urinefastingtube_id)) AS bioa27, metadata_mapping(bio_a.bioa27_metadata) AS bioa27_metadata, bio_a.bioa27_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinefastingaliquot1_id)) AS bioa28, metadata_mapping(bio_a.bioa28_metadata) AS bioa28_metadata, bio_a.bioa28_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinefastingaliquot2_id)) AS bioa29, metadata_mapping(bio_a.bioa29_metadata) AS bioa29_metadata, bio_a.bioa29_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinefastingaliquot3_id)) AS bioa30, metadata_mapping(bio_a.bioa30_metadata) AS bioa30_metadata, bio_a.bioa30_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinefastingaliquot4_id)) AS bioa31, metadata_mapping(bio_a.bioa31_metadata) AS bioa31_metadata, bio_a.bioa31_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinefastingaliquot5_id)) AS bioa32, metadata_mapping(bio_a.bioa32_metadata) AS bioa32_metadata, bio_a.bioa32_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.gel120tube_id)) AS bioa33, metadata_mapping(bio_a.bioa33_metadata) AS bioa33_metadata, bio_a.bioa33_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gel120aliquot1_id)) AS bioa34, metadata_mapping(bio_a.bioa34_metadata) AS bioa34_metadata, bio_a.bioa34_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gel120aliquot2_id)) AS bioa35, metadata_mapping(bio_a.bioa35_metadata) AS bioa35_metadata, bio_a.bioa35_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gel120aliquot3_id)) AS bioa36, metadata_mapping(bio_a.bioa36_metadata) AS bioa36_metadata, bio_a.bioa36_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gel120aliquot4_id)) AS bioa37, metadata_mapping(bio_a.bioa37_metadata) AS bioa37_metadata, bio_a.bioa37_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gel120aliquot5_id)) AS bioa38, metadata_mapping(bio_a.bioa38_metadata) AS bioa38_metadata, bio_a.bioa38_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gel120aliquot6_id)) AS bioa39, metadata_mapping(bio_a.bioa39_metadata) AS bioa39_metadata, bio_a.bioa39_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gel120aliquot7_id)) AS bioa40, metadata_mapping(bio_a.bioa40_metadata) AS bioa40_metadata, bio_a.bioa40_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gel120aliquot8_id)) AS bioa41, metadata_mapping(bio_a.bioa41_metadata) AS bioa41_metadata, bio_a.bioa41_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.edta120tube_id)) AS bioa42, metadata_mapping(bio_a.bioa42_metadata) AS bioa42_metadata, bio_a.bioa42_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edta120aliquot1_id)) AS bioa43, metadata_mapping(bio_a.bioa43_metadata) AS bioa43_metadata, bio_a.bioa43_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edta120aliquot2_id)) AS bioa44, metadata_mapping(bio_a.bioa44_metadata) AS bioa44_metadata, bio_a.bioa44_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edta120aliquot3_id)) AS bioa45, metadata_mapping(bio_a.bioa45_metadata) AS bioa45_metadata, bio_a.bioa45_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edta120aliquot4_id)) AS bioa46, metadata_mapping(bio_a.bioa46_metadata) AS bioa46_metadata, bio_a.bioa46_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.fastinggeltubeqc_id)) AS bioa47, metadata_mapping(bio_a.bioa47_metadata) AS bioa47_metadata, bio_a.bioa47_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelaliquotqc1_id)) AS bioa48, metadata_mapping(bio_a.bioa48_metadata) AS bioa48_metadata, bio_a.bioa48_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelaliquotqc2_id)) AS bioa49, metadata_mapping(bio_a.bioa49_metadata) AS bioa49_metadata, bio_a.bioa49_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelaliquotqc3_id)) AS bioa50, metadata_mapping(bio_a.bioa50_metadata) AS bioa50_metadata, bio_a.bioa50_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelaliquotqc4_id)) AS bioa51, metadata_mapping(bio_a.bioa51_metadata) AS bioa51_metadata, bio_a.bioa51_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelaliquotqc5_id)) AS bioa52, metadata_mapping(bio_a.bioa52_metadata) AS bioa52_metadata, bio_a.bioa52_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelaliquotqc6_id)) AS bioa53, metadata_mapping(bio_a.bioa53_metadata) AS bioa53_metadata, bio_a.bioa53_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelaliquotqc7_id)) AS bioa54, metadata_mapping(bio_a.bioa54_metadata) AS bioa54_metadata, bio_a.bioa54_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.gelaliquotqc8_id)) AS bioa55, metadata_mapping(bio_a.bioa55_metadata) AS bioa55_metadata, bio_a.bioa55_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.urinetubeqc_id)) AS bioa56, metadata_mapping(bio_a.bioa56_metadata) AS bioa56_metadata, bio_a.bioa56_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinealiquotqc1_id)) AS bioa57, metadata_mapping(bio_a.bioa57_metadata) AS bioa57_metadata, bio_a.bioa57_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinealiquotqc2_id)) AS bioa58, metadata_mapping(bio_a.bioa58_metadata) AS bioa58_metadata, bio_a.bioa58_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinealiquotqc3_id)) AS bioa59, metadata_mapping(bio_a.bioa59_metadata) AS bioa59_metadata, bio_a.bioa59_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinealiquotqc4_id)) AS bioa60, metadata_mapping(bio_a.bioa60_metadata) AS bioa60_metadata, bio_a.bioa60_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.urinealiquotqc5_id)) AS bioa61, metadata_mapping(bio_a.bioa61_metadata) AS bioa61_metadata, bio_a.bioa61_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.heparintubeqc_id)) AS bioa62, metadata_mapping(bio_a.bioa62_metadata) AS bioa62_metadata, bio_a.bioa62_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.heparinaliquotqc1_id)) AS bioa63, metadata_mapping(bio_a.bioa63_metadata) AS bioa63_metadata, bio_a.bioa63_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.heparinaliquotqc2_id)) AS bioa64, metadata_mapping(bio_a.bioa64_metadata) AS bioa64_metadata, bio_a.bioa64_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.fastinggel120tubeqc_id)) AS bioa65, metadata_mapping(bio_a.bioa65_metadata) AS bioa65_metadata, bio_a.bioa65_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.fastinggel120aliquotqc1_id)) AS bioa66, metadata_mapping(bio_a.bioa66_metadata) AS bioa66_metadata, bio_a.bioa66_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.fastinggel120aliquotqc2_id)) AS bioa67, metadata_mapping(bio_a.bioa67_metadata) AS bioa67_metadata, bio_a.bioa67_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.fastinggel120aliquotqc3_id)) AS bioa68, metadata_mapping(bio_a.bioa68_metadata) AS bioa68_metadata, bio_a.bioa68_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.fastinggel120aliquotqc4_id)) AS bioa69, metadata_mapping(bio_a.bioa69_metadata) AS bioa69_metadata, bio_a.bioa69_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.fastinggel120aliquotqc5_id)) AS bioa70, metadata_mapping(bio_a.bioa70_metadata) AS bioa70_metadata, bio_a.bioa70_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.fastinggel120aliquotqc6_id)) AS bioa71, metadata_mapping(bio_a.bioa71_metadata) AS bioa71_metadata, bio_a.bioa71_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.fastinggel120aliquotqc7_id)) AS bioa72, metadata_mapping(bio_a.bioa72_metadata) AS bioa72_metadata, bio_a.bioa72_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.fastinggel120aliquotqc8_id)) AS bioa73, metadata_mapping(bio_a.bioa73_metadata) AS bioa73_metadata, bio_a.bioa73_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bio_a.edta120tubeqc_id)) AS bioa74, metadata_mapping(bio_a.bioa74_metadata) AS bioa74_metadata, bio_a.bioa74_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edta120aliquotqc1_id)) AS bioa75, metadata_mapping(bio_a.bioa75_metadata) AS bioa75_metadata, bio_a.bioa75_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edta120aliquotqc2_id)) AS bioa76, metadata_mapping(bio_a.bioa76_metadata) AS bioa76_metadata, bio_a.bioa76_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edta120aliquotqc3_id)) AS bioa77, metadata_mapping(bio_a.bioa77_metadata) AS bioa77_metadata, bio_a.bioa77_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bio_a.edta120aliquotqc4_id)) AS bioa78, metadata_mapping(bio_a.bioa78_metadata) AS bioa78_metadata, bio_a.bioa78_metadata_comment, at.version AS versao_bio FROM ((((((lab.bio_a bio_a JOIN public.activity a ON ((a.id = bio_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_bio_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: bios_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE bios_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    biosa37_metadata character varying(255),
    biosa37_metadata_comment text,
    biosa38_metadata character varying(255),
    biosa38_metadata_comment text,
    biosa39_metadata character varying(255),
    biosa39_metadata_comment text,
    biosa40_metadata character varying(255),
    biosa40_metadata_comment text,
    biosa63_metadata character varying(255),
    biosa63_metadata_comment text,
    biosa64_metadata character varying(255),
    biosa64_metadata_comment text,
    biosa65_metadata character varying(255),
    biosa65_metadata_comment text,
    biosa66_metadata character varying(255),
    biosa66_metadata_comment text,
    biosa36_metadata character varying(255),
    biosa36_metadata_comment text,
    biosa62_metadata character varying(255),
    biosa62_metadata_comment text,
    biosa20_metadata character varying(255),
    biosa20_metadata_comment text,
    biosa21_metadata character varying(255),
    biosa21_metadata_comment text,
    biosa22_metadata character varying(255),
    biosa22_metadata_comment text,
    biosa23_metadata character varying(255),
    biosa23_metadata_comment text,
    biosa19_metadata character varying(255),
    biosa19_metadata_comment text,
    biosa54_metadata character varying(255),
    biosa54_metadata_comment text,
    biosa55_metadata character varying(255),
    biosa55_metadata_comment text,
    biosa56_metadata character varying(255),
    biosa56_metadata_comment text,
    biosa57_metadata character varying(255),
    biosa57_metadata_comment text,
    biosa58_metadata character varying(255),
    biosa58_metadata_comment text,
    biosa59_metadata character varying(255),
    biosa59_metadata_comment text,
    biosa60_metadata character varying(255),
    biosa60_metadata_comment text,
    biosa61_metadata character varying(255),
    biosa61_metadata_comment text,
    biosa53_metadata character varying(255),
    biosa53_metadata_comment text,
    biosa41_metadata character varying(255),
    biosa41_metadata_comment text,
    biosa28_metadata character varying(255),
    biosa28_metadata_comment text,
    biosa29_metadata character varying(255),
    biosa29_metadata_comment text,
    biosa30_metadata character varying(255),
    biosa30_metadata_comment text,
    biosa31_metadata character varying(255),
    biosa31_metadata_comment text,
    biosa32_metadata character varying(255),
    biosa32_metadata_comment text,
    biosa33_metadata character varying(255),
    biosa33_metadata_comment text,
    biosa34_metadata character varying(255),
    biosa34_metadata_comment text,
    biosa35_metadata character varying(255),
    biosa35_metadata_comment text,
    biosa27_metadata character varying(255),
    biosa27_metadata_comment text,
    biosa42_metadata character varying(255),
    biosa42_metadata_comment text,
    biosa43_metadata character varying(255),
    biosa43_metadata_comment text,
    biosa44_metadata character varying(255),
    biosa44_metadata_comment text,
    biosa45_metadata character varying(255),
    biosa45_metadata_comment text,
    biosa46_metadata character varying(255),
    biosa46_metadata_comment text,
    biosa47_metadata character varying(255),
    biosa47_metadata_comment text,
    biosa48_metadata character varying(255),
    biosa48_metadata_comment text,
    biosa49_metadata character varying(255),
    biosa49_metadata_comment text,
    biosa2_metadata character varying(255),
    biosa2_metadata_comment text,
    biosa3_metadata character varying(255),
    biosa3_metadata_comment text,
    biosa4_metadata character varying(255),
    biosa4_metadata_comment text,
    biosa5_metadata character varying(255),
    biosa5_metadata_comment text,
    biosa6_metadata character varying(255),
    biosa6_metadata_comment text,
    biosa7_metadata character varying(255),
    biosa7_metadata_comment text,
    biosa8_metadata character varying(255),
    biosa8_metadata_comment text,
    biosa9_metadata character varying(255),
    biosa9_metadata_comment text,
    biosa1_metadata character varying(255),
    biosa1_metadata_comment text,
    biosa10_metadata character varying(255),
    biosa10_metadata_comment text,
    biosa51_metadata character varying(255),
    biosa51_metadata_comment text,
    biosa52_metadata character varying(255),
    biosa52_metadata_comment text,
    biosa25_metadata character varying(255),
    biosa25_metadata_comment text,
    biosa26_metadata character varying(255),
    biosa26_metadata_comment text,
    biosa24_metadata character varying(255),
    biosa24_metadata_comment text,
    biosa50_metadata character varying(255),
    biosa50_metadata_comment text,
    qc_group character varying(255),
    biosa11_metadata character varying(255),
    biosa11_metadata_comment text,
    biosa12_metadata character varying(255),
    biosa12_metadata_comment text,
    biosa13_metadata character varying(255),
    biosa13_metadata_comment text,
    biosa14_metadata character varying(255),
    biosa14_metadata_comment text,
    biosa15_metadata character varying(255),
    biosa15_metadata_comment text,
    biosa16_metadata character varying(255),
    biosa16_metadata_comment text,
    biosa17_metadata character varying(255),
    biosa17_metadata_comment text,
    biosa18_metadata character varying(255),
    biosa18_metadata_comment text,
    edta120aliquot1_id integer,
    edta120aliquot2_id integer,
    edta120aliquot3_id integer,
    edta120aliquot4_id integer,
    edta120aliquotqc1_id integer,
    edta120aliquotqc2_id integer,
    edta120aliquotqc3_id integer,
    edta120aliquotqc4_id integer,
    edta120tube_id integer,
    edta120tubeqc_id integer,
    edtafastingaliquot1_id integer,
    edtafastingaliquot2_id integer,
    edtafastingaliquot3_id integer,
    edtafastingaliquot4_id integer,
    edtafastingtube_id integer,
    fastinggel120aliquotqc1_id integer,
    fastinggel120aliquotqc2_id integer,
    fastinggel120aliquotqc3_id integer,
    fastinggel120aliquotqc4_id integer,
    fastinggel120aliquotqc5_id integer,
    fastinggel120aliquotqc6_id integer,
    fastinggel120aliquotqc7_id integer,
    fastinggel120aliquotqc8_id integer,
    fastinggel120tubeqc_id integer,
    fastinggeltubeqc_id integer,
    gel120aliquot1_id integer,
    gel120aliquot2_id integer,
    gel120aliquot3_id integer,
    gel120aliquot4_id integer,
    gel120aliquot5_id integer,
    gel120aliquot6_id integer,
    gel120aliquot7_id integer,
    gel120aliquot8_id integer,
    gel120tube_id integer,
    gelaliquotqc1_id integer,
    gelaliquotqc2_id integer,
    gelaliquotqc3_id integer,
    gelaliquotqc4_id integer,
    gelaliquotqc5_id integer,
    gelaliquotqc6_id integer,
    gelaliquotqc7_id integer,
    gelaliquotqc8_id integer,
    gelfastingaliquot1_id integer,
    gelfastingaliquot2_id integer,
    gelfastingaliquot3_id integer,
    gelfastingaliquot4_id integer,
    gelfastingaliquot5_id integer,
    gelfastingaliquot6_id integer,
    gelfastingaliquot7_id integer,
    gelfastingaliquot8_id integer,
    gelfastingtube1_id integer,
    gelfastingtube2_id integer,
    heparinaliquotqc1_id integer,
    heparinaliquotqc2_id integer,
    heparinfastingaliquot1_id integer,
    heparinfastingaliquot2_id integer,
    heparinfastingtube_id integer,
    heparintubeqc_id integer,
    secondgelfastingaliquot1_id integer,
    secondgelfastingaliquot2_id integer,
    secondgelfastingaliquot3_id integer,
    secondgelfastingaliquot4_id integer,
    secondgelfastingaliquot5_id integer,
    secondgelfastingaliquot6_id integer,
    secondgelfastingaliquot7_id integer,
    secondgelfastingaliquot8_id integer
);


ALTER TABLE lab.bios_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_bios_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_bios_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS biosadataapini, a.finalization_date AS biosadataapfim, o.date AS biosadataoffline, u.code AS biosaaferidor, ou.code AS biosadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.gelfastingtube1_id)) AS biosa1, metadata_mapping(bios_a.biosa1_metadata) AS biosa1_metadata, bios_a.biosa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelfastingaliquot1_id)) AS biosa2, metadata_mapping(bios_a.biosa2_metadata) AS biosa2_metadata, bios_a.biosa2_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelfastingaliquot2_id)) AS biosa3, metadata_mapping(bios_a.biosa3_metadata) AS biosa3_metadata, bios_a.biosa3_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelfastingaliquot3_id)) AS biosa4, metadata_mapping(bios_a.biosa4_metadata) AS biosa4_metadata, bios_a.biosa4_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelfastingaliquot4_id)) AS biosa5, metadata_mapping(bios_a.biosa5_metadata) AS biosa5_metadata, bios_a.biosa5_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelfastingaliquot5_id)) AS biosa6, metadata_mapping(bios_a.biosa6_metadata) AS biosa6_metadata, bios_a.biosa6_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelfastingaliquot6_id)) AS biosa7, metadata_mapping(bios_a.biosa7_metadata) AS biosa7_metadata, bios_a.biosa7_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelfastingaliquot7_id)) AS biosa8, metadata_mapping(bios_a.biosa8_metadata) AS biosa8_metadata, bios_a.biosa8_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelfastingaliquot8_id)) AS biosa9, metadata_mapping(bios_a.biosa9_metadata) AS biosa9_metadata, bios_a.biosa9_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.gelfastingtube2_id)) AS biosa10, metadata_mapping(bios_a.biosa10_metadata) AS biosa10_metadata, bios_a.biosa10_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.secondgelfastingaliquot1_id)) AS biosa11, metadata_mapping(bios_a.biosa11_metadata) AS biosa11_metadata, bios_a.biosa11_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.secondgelfastingaliquot2_id)) AS biosa12, metadata_mapping(bios_a.biosa12_metadata) AS biosa12_metadata, bios_a.biosa12_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.secondgelfastingaliquot3_id)) AS biosa13, metadata_mapping(bios_a.biosa13_metadata) AS biosa13_metadata, bios_a.biosa13_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.secondgelfastingaliquot4_id)) AS biosa14, metadata_mapping(bios_a.biosa14_metadata) AS biosa14_metadata, bios_a.biosa14_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.secondgelfastingaliquot5_id)) AS biosa15, metadata_mapping(bios_a.biosa15_metadata) AS biosa15_metadata, bios_a.biosa15_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.secondgelfastingaliquot6_id)) AS biosa16, metadata_mapping(bios_a.biosa16_metadata) AS biosa16_metadata, bios_a.biosa16_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.secondgelfastingaliquot7_id)) AS biosa17, metadata_mapping(bios_a.biosa17_metadata) AS biosa17_metadata, bios_a.biosa17_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.secondgelfastingaliquot8_id)) AS biosa18, metadata_mapping(bios_a.biosa18_metadata) AS biosa18_metadata, bios_a.biosa18_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.edtafastingtube_id)) AS biosa19, metadata_mapping(bios_a.biosa19_metadata) AS biosa19_metadata, bios_a.biosa19_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edtafastingaliquot1_id)) AS biosa20, metadata_mapping(bios_a.biosa20_metadata) AS biosa20_metadata, bios_a.biosa20_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edtafastingaliquot2_id)) AS biosa21, metadata_mapping(bios_a.biosa21_metadata) AS biosa21_metadata, bios_a.biosa21_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edtafastingaliquot3_id)) AS biosa22, metadata_mapping(bios_a.biosa22_metadata) AS biosa22_metadata, bios_a.biosa22_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edtafastingaliquot4_id)) AS biosa23, metadata_mapping(bios_a.biosa23_metadata) AS biosa23_metadata, bios_a.biosa23_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.heparinfastingtube_id)) AS biosa24, metadata_mapping(bios_a.biosa24_metadata) AS biosa24_metadata, bios_a.biosa24_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.heparinfastingaliquot1_id)) AS biosa25, metadata_mapping(bios_a.biosa25_metadata) AS biosa25_metadata, bios_a.biosa25_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.heparinfastingaliquot2_id)) AS biosa26, metadata_mapping(bios_a.biosa26_metadata) AS biosa26_metadata, bios_a.biosa26_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.gel120tube_id)) AS biosa27, metadata_mapping(bios_a.biosa27_metadata) AS biosa27_metadata, bios_a.biosa27_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gel120aliquot1_id)) AS biosa28, metadata_mapping(bios_a.biosa28_metadata) AS biosa28_metadata, bios_a.biosa28_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gel120aliquot2_id)) AS biosa29, metadata_mapping(bios_a.biosa29_metadata) AS biosa29_metadata, bios_a.biosa29_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gel120aliquot3_id)) AS biosa30, metadata_mapping(bios_a.biosa30_metadata) AS biosa30_metadata, bios_a.biosa30_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gel120aliquot4_id)) AS biosa31, metadata_mapping(bios_a.biosa31_metadata) AS biosa31_metadata, bios_a.biosa31_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gel120aliquot5_id)) AS biosa32, metadata_mapping(bios_a.biosa32_metadata) AS biosa32_metadata, bios_a.biosa32_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gel120aliquot6_id)) AS biosa33, metadata_mapping(bios_a.biosa33_metadata) AS biosa33_metadata, bios_a.biosa33_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gel120aliquot7_id)) AS biosa34, metadata_mapping(bios_a.biosa34_metadata) AS biosa34_metadata, bios_a.biosa34_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gel120aliquot8_id)) AS biosa35, metadata_mapping(bios_a.biosa35_metadata) AS biosa35_metadata, bios_a.biosa35_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.edta120tube_id)) AS biosa36, metadata_mapping(bios_a.biosa36_metadata) AS biosa36_metadata, bios_a.biosa36_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edta120aliquot1_id)) AS biosa37, metadata_mapping(bios_a.biosa37_metadata) AS biosa37_metadata, bios_a.biosa37_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edta120aliquot2_id)) AS biosa38, metadata_mapping(bios_a.biosa38_metadata) AS biosa38_metadata, bios_a.biosa38_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edta120aliquot3_id)) AS biosa39, metadata_mapping(bios_a.biosa39_metadata) AS biosa39_metadata, bios_a.biosa39_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edta120aliquot4_id)) AS biosa40, metadata_mapping(bios_a.biosa40_metadata) AS biosa40_metadata, bios_a.biosa40_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.fastinggeltubeqc_id)) AS biosa41, metadata_mapping(bios_a.biosa41_metadata) AS biosa41_metadata, bios_a.biosa41_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelaliquotqc1_id)) AS biosa42, metadata_mapping(bios_a.biosa42_metadata) AS biosa42_metadata, bios_a.biosa42_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelaliquotqc2_id)) AS biosa43, metadata_mapping(bios_a.biosa43_metadata) AS biosa43_metadata, bios_a.biosa43_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelaliquotqc3_id)) AS biosa44, metadata_mapping(bios_a.biosa44_metadata) AS biosa44_metadata, bios_a.biosa44_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelaliquotqc4_id)) AS biosa45, metadata_mapping(bios_a.biosa45_metadata) AS biosa45_metadata, bios_a.biosa45_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelaliquotqc5_id)) AS biosa46, metadata_mapping(bios_a.biosa46_metadata) AS biosa46_metadata, bios_a.biosa46_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelaliquotqc6_id)) AS biosa47, metadata_mapping(bios_a.biosa47_metadata) AS biosa47_metadata, bios_a.biosa47_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelaliquotqc7_id)) AS biosa48, metadata_mapping(bios_a.biosa48_metadata) AS biosa48_metadata, bios_a.biosa48_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.gelaliquotqc8_id)) AS biosa49, metadata_mapping(bios_a.biosa49_metadata) AS biosa49_metadata, bios_a.biosa49_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.heparintubeqc_id)) AS biosa50, metadata_mapping(bios_a.biosa50_metadata) AS biosa50_metadata, bios_a.biosa50_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.heparinaliquotqc1_id)) AS biosa51, metadata_mapping(bios_a.biosa51_metadata) AS biosa51_metadata, bios_a.biosa51_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.heparinaliquotqc2_id)) AS biosa52, metadata_mapping(bios_a.biosa52_metadata) AS biosa52_metadata, bios_a.biosa52_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.fastinggel120tubeqc_id)) AS biosa53, metadata_mapping(bios_a.biosa53_metadata) AS biosa53_metadata, bios_a.biosa53_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.fastinggel120aliquotqc1_id)) AS biosa54, metadata_mapping(bios_a.biosa54_metadata) AS biosa54_metadata, bios_a.biosa54_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.fastinggel120aliquotqc2_id)) AS biosa55, metadata_mapping(bios_a.biosa55_metadata) AS biosa55_metadata, bios_a.biosa55_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.fastinggel120aliquotqc3_id)) AS biosa56, metadata_mapping(bios_a.biosa56_metadata) AS biosa56_metadata, bios_a.biosa56_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.fastinggel120aliquotqc4_id)) AS biosa57, metadata_mapping(bios_a.biosa57_metadata) AS biosa57_metadata, bios_a.biosa57_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.fastinggel120aliquotqc5_id)) AS biosa58, metadata_mapping(bios_a.biosa58_metadata) AS biosa58_metadata, bios_a.biosa58_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.fastinggel120aliquotqc6_id)) AS biosa59, metadata_mapping(bios_a.biosa59_metadata) AS biosa59_metadata, bios_a.biosa59_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.fastinggel120aliquotqc7_id)) AS biosa60, metadata_mapping(bios_a.biosa60_metadata) AS biosa60_metadata, bios_a.biosa60_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.fastinggel120aliquotqc8_id)) AS biosa61, metadata_mapping(bios_a.biosa61_metadata) AS biosa61_metadata, bios_a.biosa61_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = bios_a.edta120tubeqc_id)) AS biosa62, metadata_mapping(bios_a.biosa62_metadata) AS biosa62_metadata, bios_a.biosa62_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edta120aliquotqc1_id)) AS biosa63, metadata_mapping(bios_a.biosa63_metadata) AS biosa63_metadata, bios_a.biosa63_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edta120aliquotqc2_id)) AS biosa64, metadata_mapping(bios_a.biosa64_metadata) AS biosa64_metadata, bios_a.biosa64_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edta120aliquotqc3_id)) AS biosa65, metadata_mapping(bios_a.biosa65_metadata) AS biosa65_metadata, bios_a.biosa65_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = bios_a.edta120aliquotqc4_id)) AS biosa66, metadata_mapping(bios_a.biosa66_metadata) AS biosa66_metadata, bios_a.biosa66_metadata_comment, at.version AS versao_bios FROM ((((((lab.bios_a bios_a JOIN public.activity a ON ((a.id = bios_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_bios_a OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: participant_registry_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE participant_registry_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.participant_registry_seq OWNER TO postgres;

--
-- Name: participant_registry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE participant_registry (
    id integer DEFAULT nextval('participant_registry_seq'::regclass) NOT NULL,
    date date,
    interviewer_id integer,
    participant_id integer
);


ALTER TABLE public.participant_registry OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_cad_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_cad_a AS
SELECT pt.recruitment_number AS numero_recrutamento, pr.date AS data_entrevista, us.code AS entrevistador, pt.birthdate AS data_nascimento, pt.health_record_id AS prontuario FROM ((public.participant pt JOIN public.participant_registry pr ON ((pr.participant_id = pt.id))) JOIN public."user" us ON ((us.id = pr.interviewer_id))) ORDER BY pt.recruitment_number;


ALTER TABLE extraction.v_cad_a OWNER TO postgres;

--
-- Name: v_coa_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_coa_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS coaadataapini, a.finalization_date AS coaadataapfim, o.date AS coaadataoffline, u.code AS coaaaferidor, ou.code AS coaadigitador, frequencyofbingeeatingchoice_mapping(coa_a.coaa1) AS coaa1, metadata_mapping(coa_a.coaa1_metadata) AS coaa1_metadata, coa_a.coaa1_metadata_comment, yesnouppercasecorrectposition_mapping(coa_a.coaa2a) AS coaa2a, metadata_mapping(coa_a.coaa2a_metadata) AS coaa2a_metadata, coa_a.coaa2a_metadata_comment, yesnouppercasecorrectposition_mapping(coa_a.coaa2b) AS coaa2b, metadata_mapping(coa_a.coaa2b_metadata) AS coaa2b_metadata, coa_a.coaa2b_metadata_comment, at.version AS versao_coa FROM ((((((coorte.coa_a coa_a JOIN public.activity a ON ((a.id = coa_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_coa_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: csc_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE csc_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    csca3 character varying(255),
    csca3_metadata character varying(255),
    csca3_metadata_comment text,
    csca7_metadata character varying(255),
    csca7_metadata_comment text,
    csca10_metadata character varying(255),
    csca10_metadata_comment text,
    csca6_metadata character varying(255),
    csca6_metadata_comment text,
    csca9_metadata character varying(255),
    csca9_metadata_comment text,
    csca5_metadata character varying(255),
    csca5_metadata_comment text,
    csca8_metadata character varying(255),
    csca8_metadata_comment text,
    csca2a boolean,
    csca2a_metadata character varying(255),
    csca2a_metadata_comment text,
    csca2b boolean,
    csca2b_metadata character varying(255),
    csca2b_metadata_comment text,
    csca2d boolean,
    csca2d_metadata character varying(255),
    csca2d_metadata_comment text,
    qc_group character varying(255),
    csca2c boolean,
    csca2c_metadata character varying(255),
    csca2c_metadata_comment text,
    csca1ah integer,
    csca1a_metadata character varying(255),
    csca1a_metadata_comment text,
    csca1am integer,
    csca2dq text,
    csca2dq_metadata character varying(255),
    csca2dq_metadata_comment text,
    edtatube_id integer,
    edtatubeqc_id integer,
    fluoridetube_id integer,
    fluoridetubeqc_id integer,
    geltube_id integer,
    geltubeqc_id integer
);


ALTER TABLE lab.csc_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_csc_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_csc_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS cscadataapini, a.finalization_date AS cscadataapfim, o.date AS cscadataoffline, u.code AS cscaaferidor, ou.code AS cscadigitador, csc_a.csca1ah, csc_a.csca1am, metadata_mapping(csc_a.csca1a_metadata) AS csca1a_metadata, csc_a.csca1a_metadata_comment, csc_a.csca2a, metadata_mapping(csc_a.csca2a_metadata) AS csca2a_metadata, csc_a.csca2a_metadata_comment, csc_a.csca2b, metadata_mapping(csc_a.csca2b_metadata) AS csca2b_metadata, csc_a.csca2b_metadata_comment, csc_a.csca2c, metadata_mapping(csc_a.csca2c_metadata) AS csca2c_metadata, csc_a.csca2c_metadata_comment, csc_a.csca2d, metadata_mapping(csc_a.csca2d_metadata) AS csca2d_metadata, csc_a.csca2d_metadata_comment, csc_a.csca2dq, metadata_mapping(csc_a.csca2dq_metadata) AS csca2dq_metadata, csc_a.csca2dq_metadata_comment, yesno_mapping(csc_a.csca3) AS csca3, metadata_mapping(csc_a.csca3_metadata) AS csca3_metadata, csc_a.csca3_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csc_a.geltube_id)) AS csca5, metadata_mapping(csc_a.csca5_metadata) AS csca5_metadata, csc_a.csca5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csc_a.fluoridetube_id)) AS csca6, metadata_mapping(csc_a.csca6_metadata) AS csca6_metadata, csc_a.csca6_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csc_a.edtatube_id)) AS csca7, metadata_mapping(csc_a.csca7_metadata) AS csca7_metadata, csc_a.csca7_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csc_a.geltubeqc_id)) AS csca8, metadata_mapping(csc_a.csca8_metadata) AS csca8_metadata, csc_a.csca8_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csc_a.fluoridetubeqc_id)) AS csca9, metadata_mapping(csc_a.csca9_metadata) AS csca9_metadata, csc_a.csca9_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csc_a.edtatubeqc_id)) AS csca10, metadata_mapping(csc_a.csca10_metadata) AS csca10_metadata, csc_a.csca10_metadata_comment, at.version AS versao_csc FROM ((((((lab.csc_a csc_a JOIN public.activity a ON ((a.id = csc_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_csc_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: cscs_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE cscs_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    cscsa3 character varying(255),
    cscsa3_metadata character varying(255),
    cscsa3_metadata_comment text,
    cscsa7_metadata character varying(255),
    cscsa7_metadata_comment text,
    cscsa10_metadata character varying(255),
    cscsa10_metadata_comment text,
    cscsa6_metadata character varying(255),
    cscsa6_metadata_comment text,
    cscsa9_metadata character varying(255),
    cscsa9_metadata_comment text,
    cscsa5_metadata character varying(255),
    cscsa5_metadata_comment text,
    cscsa8_metadata character varying(255),
    cscsa8_metadata_comment text,
    cscsa2a boolean,
    cscsa2a_metadata character varying(255),
    cscsa2a_metadata_comment text,
    cscsa2b boolean,
    cscsa2b_metadata character varying(255),
    cscsa2b_metadata_comment text,
    cscsa2d boolean,
    cscsa2d_metadata character varying(255),
    cscsa2d_metadata_comment text,
    qc_group character varying(255),
    cscsa2c boolean,
    cscsa2c_metadata character varying(255),
    cscsa2c_metadata_comment text,
    cscsa1ahh integer,
    cscsa1ah_metadata character varying(255),
    cscsa1ah_metadata_comment text,
    cscsa1ahm integer,
    cscsa2dq text,
    cscsa2dq_metadata character varying(255),
    cscsa2dq_metadata_comment text,
    edtatube_id integer,
    edtatubeqc_id integer,
    fluoridetube_id integer,
    fluoridetubeqc_id integer,
    geltube_id integer,
    geltubeqc_id integer
);


ALTER TABLE lab.cscs_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_cscs_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_cscs_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS cscsadataapini, a.finalization_date AS cscsadataapfim, o.date AS cscsadataoffline, u.code AS cscsaaferidor, ou.code AS cscsadigitador, cscs_a.cscsa1ahh, cscs_a.cscsa1ahm, metadata_mapping(cscs_a.cscsa1ah_metadata) AS cscsa1ah_metadata, cscs_a.cscsa1ah_metadata_comment, cscs_a.cscsa2a, metadata_mapping(cscs_a.cscsa2a_metadata) AS cscsa2a_metadata, cscs_a.cscsa2a_metadata_comment, cscs_a.cscsa2b, metadata_mapping(cscs_a.cscsa2b_metadata) AS cscsa2b_metadata, cscs_a.cscsa2b_metadata_comment, cscs_a.cscsa2c, metadata_mapping(cscs_a.cscsa2c_metadata) AS cscsa2c_metadata, cscs_a.cscsa2c_metadata_comment, cscs_a.cscsa2d, metadata_mapping(cscs_a.cscsa2d_metadata) AS cscsa2d_metadata, cscs_a.cscsa2d_metadata_comment, cscs_a.cscsa2dq, metadata_mapping(cscs_a.cscsa2dq_metadata) AS cscsa2dq_metadata, cscs_a.cscsa2dq_metadata_comment, yesno_mapping(cscs_a.cscsa3) AS cscsa3, metadata_mapping(cscs_a.cscsa3_metadata) AS cscsa3_metadata, cscs_a.cscsa3_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cscs_a.geltube_id)) AS cscsa5, metadata_mapping(cscs_a.cscsa5_metadata) AS cscsa5_metadata, cscs_a.cscsa5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cscs_a.fluoridetube_id)) AS cscsa6, metadata_mapping(cscs_a.cscsa6_metadata) AS cscsa6_metadata, cscs_a.cscsa6_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cscs_a.edtatube_id)) AS cscsa7, metadata_mapping(cscs_a.cscsa7_metadata) AS cscsa7_metadata, cscs_a.cscsa7_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cscs_a.geltubeqc_id)) AS cscsa8, metadata_mapping(cscs_a.cscsa8_metadata) AS cscsa8_metadata, cscs_a.cscsa8_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cscs_a.fluoridetubeqc_id)) AS cscsa9, metadata_mapping(cscs_a.cscsa9_metadata) AS cscsa9_metadata, cscs_a.cscsa9_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cscs_a.edtatubeqc_id)) AS cscsa10, metadata_mapping(cscs_a.cscsa10_metadata) AS cscsa10_metadata, cscs_a.cscsa10_metadata_comment, at.version AS versao_cscs FROM ((((((lab.cscs_a cscs_a JOIN public.activity a ON ((a.id = cscs_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_cscs_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: csj_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE csj_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    csja1ah integer,
    csja1a_metadata character varying(255),
    csja1a_metadata_comment text,
    csja1am integer,
    csja2a boolean,
    csja2a_metadata character varying(255),
    csja2a_metadata_comment text,
    csja2b boolean,
    csja2b_metadata character varying(255),
    csja2b_metadata_comment text,
    csja2c boolean,
    csja2c_metadata character varying(255),
    csja2c_metadata_comment text,
    csja2d boolean,
    csja2d_metadata character varying(255),
    csja2d_metadata_comment text,
    csja2dq text,
    csja2dq_metadata character varying(255),
    csja2dq_metadata_comment text,
    csja4_metadata character varying(255),
    csja4_metadata_comment text,
    csja8_metadata character varying(255),
    csja8_metadata_comment text,
    csja9_metadata character varying(255),
    csja9_metadata_comment text,
    csja13_metadata character varying(255),
    csja13_metadata_comment text,
    csja5_metadata character varying(255),
    csja5_metadata_comment text,
    csja14_metadata character varying(255),
    csja14_metadata_comment text,
    csja3_metadata character varying(255),
    csja3_metadata_comment text,
    csja6_metadata character varying(255),
    csja6_metadata_comment text,
    csja11_metadata character varying(255),
    csja11_metadata_comment text,
    csja7_metadata character varying(255),
    csja7_metadata_comment text,
    csja15_metadata character varying(255),
    csja15_metadata_comment text,
    qc_group character varying(255),
    csja10_metadata character varying(255),
    csja10_metadata_comment text,
    csja12_metadata character varying(255),
    csja12_metadata_comment text,
    edtatube1_id integer,
    edtatube2_id integer,
    edtatube3_id integer,
    edtatubeqc_id integer,
    fluoridetube_id integer,
    fluoridetubeqc_id integer,
    geltube1_id integer,
    geltube2_id integer,
    geltubeqc_id integer,
    heparintube_id integer,
    heparintubeqc_id integer,
    urinetube_id integer,
    urinetubeqc_id integer
);


ALTER TABLE lab.csj_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_csj_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_csj_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS csjadataapini, a.finalization_date AS csjadataapfim, o.date AS csjadataoffline, u.code AS csjaaferidor, ou.code AS csjadigitador, csj_a.csja1ah, csj_a.csja1am, metadata_mapping(csj_a.csja1a_metadata) AS csja1a_metadata, csj_a.csja1a_metadata_comment, csj_a.csja2a, metadata_mapping(csj_a.csja2a_metadata) AS csja2a_metadata, csj_a.csja2a_metadata_comment, csj_a.csja2b, metadata_mapping(csj_a.csja2b_metadata) AS csja2b_metadata, csj_a.csja2b_metadata_comment, csj_a.csja2c, metadata_mapping(csj_a.csja2c_metadata) AS csja2c_metadata, csj_a.csja2c_metadata_comment, csj_a.csja2d, metadata_mapping(csj_a.csja2d_metadata) AS csja2d_metadata, csj_a.csja2d_metadata_comment, csj_a.csja2dq, metadata_mapping(csj_a.csja2dq_metadata) AS csja2dq_metadata, csj_a.csja2dq_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.geltube1_id)) AS csja3, metadata_mapping(csj_a.csja3_metadata) AS csja3_metadata, csj_a.csja3_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.edtatube1_id)) AS csja4, metadata_mapping(csj_a.csja4_metadata) AS csja4_metadata, csj_a.csja4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.fluoridetube_id)) AS csja5, metadata_mapping(csj_a.csja5_metadata) AS csja5_metadata, csj_a.csja5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.geltube2_id)) AS csja6, metadata_mapping(csj_a.csja6_metadata) AS csja6_metadata, csj_a.csja6_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.heparintube_id)) AS csja7, metadata_mapping(csj_a.csja7_metadata) AS csja7_metadata, csj_a.csja7_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.edtatube2_id)) AS csja8, metadata_mapping(csj_a.csja8_metadata) AS csja8_metadata, csj_a.csja8_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.edtatube3_id)) AS csja9, metadata_mapping(csj_a.csja9_metadata) AS csja9_metadata, csj_a.csja9_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.urinetube_id)) AS csja10, metadata_mapping(csj_a.csja10_metadata) AS csja10_metadata, csj_a.csja10_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.geltubeqc_id)) AS csja11, metadata_mapping(csj_a.csja11_metadata) AS csja11_metadata, csj_a.csja11_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.urinetubeqc_id)) AS csja12, metadata_mapping(csj_a.csja12_metadata) AS csja12_metadata, csj_a.csja12_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.edtatubeqc_id)) AS csja13, metadata_mapping(csj_a.csja13_metadata) AS csja13_metadata, csj_a.csja13_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.fluoridetubeqc_id)) AS csja14, metadata_mapping(csj_a.csja14_metadata) AS csja14_metadata, csj_a.csja14_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csj_a.heparintubeqc_id)) AS csja15, metadata_mapping(csj_a.csja15_metadata) AS csja15_metadata, csj_a.csja15_metadata_comment, at.version AS versao_csj FROM ((((((lab.csj_a csj_a JOIN public.activity a ON ((a.id = csj_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_csj_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: csjs_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE csjs_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    csjsa2a boolean,
    csjsa2a_metadata character varying(255),
    csjsa2a_metadata_comment text,
    csjsa1ah integer,
    csjsa1a_metadata character varying(255),
    csjsa1a_metadata_comment text,
    csjsa1am integer,
    csjsa2b boolean,
    csjsa2b_metadata character varying(255),
    csjsa2b_metadata_comment text,
    csjsa2c boolean,
    csjsa2c_metadata character varying(255),
    csjsa2c_metadata_comment text,
    csjsa2d boolean,
    csjsa2d_metadata character varying(255),
    csjsa2d_metadata_comment text,
    csjsa2dq text,
    csjsa2dq_metadata character varying(255),
    csjsa2dq_metadata_comment text,
    csjsa4_metadata character varying(255),
    csjsa4_metadata_comment text,
    csjsa8_metadata character varying(255),
    csjsa8_metadata_comment text,
    csjsa9_metadata character varying(255),
    csjsa9_metadata_comment text,
    csjsa13_metadata character varying(255),
    csjsa13_metadata_comment text,
    csjsa5_metadata character varying(255),
    csjsa5_metadata_comment text,
    csjsa14_metadata character varying(255),
    csjsa14_metadata_comment text,
    csjsa3_metadata character varying(255),
    csjsa3_metadata_comment text,
    csjsa6_metadata character varying(255),
    csjsa6_metadata_comment text,
    csjsa11_metadata character varying(255),
    csjsa11_metadata_comment text,
    csjsa7_metadata character varying(255),
    csjsa7_metadata_comment text,
    csjsa15_metadata character varying(255),
    csjsa15_metadata_comment text,
    qc_group character varying(255),
    edtatube1_id integer,
    edtatube2_id integer,
    edtatube3_id integer,
    edtatubeqc_id integer,
    fluoridetube_id integer,
    fluoridetubeqc_id integer,
    geltube1_id integer,
    geltube2_id integer,
    geltubeqc_id integer,
    heparintube_id integer,
    heparintubeqc_id integer
);


ALTER TABLE lab.csjs_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_csjs_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_csjs_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS csjsadataapini, a.finalization_date AS csjsadataapfim, o.date AS csjsadataoffline, u.code AS csjsaaferidor, ou.code AS csjsadigitador, csjs_a.csjsa1ah, csjs_a.csjsa1am, metadata_mapping(csjs_a.csjsa1a_metadata) AS csjsa1a_metadata, csjs_a.csjsa1a_metadata_comment, csjs_a.csjsa2a, metadata_mapping(csjs_a.csjsa2a_metadata) AS csjsa2a_metadata, csjs_a.csjsa2a_metadata_comment, csjs_a.csjsa2b, metadata_mapping(csjs_a.csjsa2b_metadata) AS csjsa2b_metadata, csjs_a.csjsa2b_metadata_comment, csjs_a.csjsa2c, metadata_mapping(csjs_a.csjsa2c_metadata) AS csjsa2c_metadata, csjs_a.csjsa2c_metadata_comment, csjs_a.csjsa2d, metadata_mapping(csjs_a.csjsa2d_metadata) AS csjsa2d_metadata, csjs_a.csjsa2d_metadata_comment, csjs_a.csjsa2dq, metadata_mapping(csjs_a.csjsa2dq_metadata) AS csjsa2dq_metadata, csjs_a.csjsa2dq_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.geltube1_id)) AS csjsa3, metadata_mapping(csjs_a.csjsa3_metadata) AS csjsa3_metadata, csjs_a.csjsa3_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.edtatube1_id)) AS csjsa4, metadata_mapping(csjs_a.csjsa4_metadata) AS csjsa4_metadata, csjs_a.csjsa4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.fluoridetube_id)) AS csjsa5, metadata_mapping(csjs_a.csjsa5_metadata) AS csjsa5_metadata, csjs_a.csjsa5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.geltube2_id)) AS csjsa6, metadata_mapping(csjs_a.csjsa6_metadata) AS csjsa6_metadata, csjs_a.csjsa6_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.heparintube_id)) AS csjsa7, metadata_mapping(csjs_a.csjsa7_metadata) AS csjsa7_metadata, csjs_a.csjsa7_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.edtatube2_id)) AS csjsa8, metadata_mapping(csjs_a.csjsa8_metadata) AS csjsa8_metadata, csjs_a.csjsa8_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.edtatube3_id)) AS csjsa9, metadata_mapping(csjs_a.csjsa9_metadata) AS csjsa9_metadata, csjs_a.csjsa9_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.geltubeqc_id)) AS csjsa11, metadata_mapping(csjs_a.csjsa11_metadata) AS csjsa11_metadata, csjs_a.csjsa11_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.edtatubeqc_id)) AS csjsa13, metadata_mapping(csjs_a.csjsa13_metadata) AS csjsa13_metadata, csjs_a.csjsa13_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.fluoridetubeqc_id)) AS csjsa14, metadata_mapping(csjs_a.csjsa14_metadata) AS csjsa14_metadata, csjs_a.csjsa14_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csjs_a.heparintubeqc_id)) AS csjsa15, metadata_mapping(csjs_a.csjsa15_metadata) AS csjsa15_metadata, csjs_a.csjsa15_metadata_comment, at.version AS versao_csjs FROM ((((((lab.csjs_a csjs_a JOIN public.activity a ON ((a.id = csjs_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_csjs_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: csn_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE csn_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    csna5_metadata character varying(255),
    csna5_metadata_comment text,
    csna4_metadata character varying(255),
    csna4_metadata_comment text,
    csna6_metadata character varying(255),
    csna6_metadata_comment text,
    csna2b boolean,
    csna2b_metadata character varying(255),
    csna2b_metadata_comment text,
    csna2a boolean,
    csna2a_metadata character varying(255),
    csna2a_metadata_comment text,
    csna2d boolean,
    csna2d_metadata character varying(255),
    csna2d_metadata_comment text,
    qc_group character varying(255),
    csna2c boolean,
    csna2c_metadata character varying(255),
    csna2c_metadata_comment text,
    csna1ah integer,
    csna1a_metadata character varying(255),
    csna1a_metadata_comment text,
    csna1am integer,
    csna2dq text,
    csna2dq_metadata character varying(255),
    csna2dq_metadata_comment text,
    fluoridetube_id integer,
    geltube_id integer,
    geltubeqc_id integer
);


ALTER TABLE lab.csn_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_csn_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_csn_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS csnadataapini, a.finalization_date AS csnadataapfim, o.date AS csnadataoffline, u.code AS csnaaferidor, ou.code AS csnadigitador, csn_a.csna1ah, csn_a.csna1am, metadata_mapping(csn_a.csna1a_metadata) AS csna1a_metadata, csn_a.csna1a_metadata_comment, csn_a.csna2a, metadata_mapping(csn_a.csna2a_metadata) AS csna2a_metadata, csn_a.csna2a_metadata_comment, csn_a.csna2b, metadata_mapping(csn_a.csna2b_metadata) AS csna2b_metadata, csn_a.csna2b_metadata_comment, csn_a.csna2c, metadata_mapping(csn_a.csna2c_metadata) AS csna2c_metadata, csn_a.csna2c_metadata_comment, csn_a.csna2d, metadata_mapping(csn_a.csna2d_metadata) AS csna2d_metadata, csn_a.csna2d_metadata_comment, csn_a.csna2dq, metadata_mapping(csn_a.csna2dq_metadata) AS csna2dq_metadata, csn_a.csna2dq_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csn_a.geltube_id)) AS csna4, metadata_mapping(csn_a.csna4_metadata) AS csna4_metadata, csn_a.csna4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csn_a.fluoridetube_id)) AS csna5, metadata_mapping(csn_a.csna5_metadata) AS csna5_metadata, csn_a.csna5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csn_a.geltubeqc_id)) AS csna6, metadata_mapping(csn_a.csna6_metadata) AS csna6_metadata, csn_a.csna6_metadata_comment, at.version AS versao_csn FROM ((((((lab.csn_a csn_a JOIN public.activity a ON ((a.id = csn_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_csn_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: css_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE css_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    cssa1ah integer,
    cssa1a_metadata character varying(255),
    cssa1a_metadata_comment text,
    cssa1am integer,
    cssa2a boolean,
    cssa2a_metadata character varying(255),
    cssa2a_metadata_comment text,
    cssa2b boolean,
    cssa2b_metadata character varying(255),
    cssa2b_metadata_comment text,
    cssa2c boolean,
    cssa2c_metadata character varying(255),
    cssa2c_metadata_comment text,
    cssa2d boolean,
    cssa2d_metadata character varying(255),
    cssa2d_metadata_comment text,
    cssa2dq text,
    cssa2dq_metadata character varying(255),
    cssa2dq_metadata_comment text,
    cssa5_metadata character varying(255),
    cssa5_metadata_comment text,
    cssa4_metadata character varying(255),
    cssa4_metadata_comment text,
    cssa6_metadata character varying(255),
    cssa6_metadata_comment text,
    qc_group character varying(255),
    fluoridetube_id integer,
    geltube_id integer,
    geltubeqc_id integer
);


ALTER TABLE lab.css_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_css_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_css_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS cssadataapini, a.finalization_date AS cssadataapfim, o.date AS cssadataoffline, u.code AS cssaaferidor, ou.code AS cssadigitador, css_a.cssa1ah, css_a.cssa1am, metadata_mapping(css_a.cssa1a_metadata) AS cssa1a_metadata, css_a.cssa1a_metadata_comment, css_a.cssa2a, metadata_mapping(css_a.cssa2a_metadata) AS cssa2a_metadata, css_a.cssa2a_metadata_comment, css_a.cssa2b, metadata_mapping(css_a.cssa2b_metadata) AS cssa2b_metadata, css_a.cssa2b_metadata_comment, css_a.cssa2c, metadata_mapping(css_a.cssa2c_metadata) AS cssa2c_metadata, css_a.cssa2c_metadata_comment, css_a.cssa2d, metadata_mapping(css_a.cssa2d_metadata) AS cssa2d_metadata, css_a.cssa2d_metadata_comment, css_a.cssa2dq, metadata_mapping(css_a.cssa2dq_metadata) AS cssa2dq_metadata, css_a.cssa2dq_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = css_a.geltube_id)) AS cssa4, metadata_mapping(css_a.cssa4_metadata) AS cssa4_metadata, css_a.cssa4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = css_a.fluoridetube_id)) AS cssa5, metadata_mapping(css_a.cssa5_metadata) AS cssa5_metadata, css_a.cssa5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = css_a.geltubeqc_id)) AS cssa6, metadata_mapping(css_a.cssa6_metadata) AS cssa6_metadata, css_a.cssa6_metadata_comment, at.version AS versao_css FROM ((((((lab.css_a css_a JOIN public.activity a ON ((a.id = css_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_css_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: csss_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE csss_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    csssa1ah integer,
    csssa1a_metadata character varying(255),
    csssa1a_metadata_comment text,
    csssa1am integer,
    csssa2a boolean,
    csssa2a_metadata character varying(255),
    csssa2a_metadata_comment text,
    csssa2b boolean,
    csssa2b_metadata character varying(255),
    csssa2b_metadata_comment text,
    csssa2c boolean,
    csssa2c_metadata character varying(255),
    csssa2c_metadata_comment text,
    csssa2d boolean,
    csssa2d_metadata character varying(255),
    csssa2d_metadata_comment text,
    csssa2dq text,
    csssa2dq_metadata character varying(255),
    csssa2dq_metadata_comment text,
    csssa5_metadata character varying(255),
    csssa5_metadata_comment text,
    csssa4_metadata character varying(255),
    csssa4_metadata_comment text,
    csssa6_metadata character varying(255),
    csssa6_metadata_comment text,
    qc_group character varying(255),
    fluoridetube_id integer,
    geltube_id integer,
    geltubeqc_id integer
);


ALTER TABLE lab.csss_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_csss_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_csss_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS csssadataapini, a.finalization_date AS csssadataapfim, o.date AS csssadataoffline, u.code AS csssaaferidor, ou.code AS csssadigitador, csss_a.csssa1ah, csss_a.csssa1am, metadata_mapping(csss_a.csssa1a_metadata) AS csssa1a_metadata, csss_a.csssa1a_metadata_comment, csss_a.csssa2a, metadata_mapping(csss_a.csssa2a_metadata) AS csssa2a_metadata, csss_a.csssa2a_metadata_comment, csss_a.csssa2b, metadata_mapping(csss_a.csssa2b_metadata) AS csssa2b_metadata, csss_a.csssa2b_metadata_comment, csss_a.csssa2c, metadata_mapping(csss_a.csssa2c_metadata) AS csssa2c_metadata, csss_a.csssa2c_metadata_comment, csss_a.csssa2d, metadata_mapping(csss_a.csssa2d_metadata) AS csssa2d_metadata, csss_a.csssa2d_metadata_comment, csss_a.csssa2dq, metadata_mapping(csss_a.csssa2dq_metadata) AS csssa2dq_metadata, csss_a.csssa2dq_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csss_a.geltube_id)) AS csssa4, metadata_mapping(csss_a.csssa4_metadata) AS csssa4_metadata, csss_a.csssa4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csss_a.fluoridetube_id)) AS csssa5, metadata_mapping(csss_a.csssa5_metadata) AS csssa5_metadata, csss_a.csssa5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csss_a.geltubeqc_id)) AS csssa6, metadata_mapping(csss_a.csssa6_metadata) AS csssa6_metadata, csss_a.csssa6_metadata_comment, at.version AS versao_csss FROM ((((((lab.csss_a csss_a JOIN public.activity a ON ((a.id = csss_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_csss_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: cst_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE cst_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    csta5_metadata character varying(255),
    csta5_metadata_comment text,
    csta6_metadata character varying(255),
    csta6_metadata_comment text,
    csta4_metadata character varying(255),
    csta4_metadata_comment text,
    csta2a boolean,
    csta2a_metadata character varying(255),
    csta2a_metadata_comment text,
    csta2b boolean,
    csta2b_metadata character varying(255),
    csta2b_metadata_comment text,
    csta2c boolean,
    csta2c_metadata character varying(255),
    csta2c_metadata_comment text,
    csta2d boolean,
    csta2d_metadata character varying(255),
    csta2d_metadata_comment text,
    qc_group character varying(255),
    csta1ah integer,
    csta1a_metadata character varying(255),
    csta1a_metadata_comment text,
    csta1am integer,
    csta2dq text,
    csta2dq_metadata character varying(255),
    csta2dq_metadata_comment text,
    fluoridetube30_id integer,
    geltube30_id integer,
    geltube30cq_id integer
);


ALTER TABLE lab.cst_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_cst_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_cst_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS cstadataapini, a.finalization_date AS cstadataapfim, o.date AS cstadataoffline, u.code AS cstaaferidor, ou.code AS cstadigitador, cst_a.csta1ah, cst_a.csta1am, metadata_mapping(cst_a.csta1a_metadata) AS csta1a_metadata, cst_a.csta1a_metadata_comment, cst_a.csta2a, metadata_mapping(cst_a.csta2a_metadata) AS csta2a_metadata, cst_a.csta2a_metadata_comment, cst_a.csta2b, metadata_mapping(cst_a.csta2b_metadata) AS csta2b_metadata, cst_a.csta2b_metadata_comment, cst_a.csta2c, metadata_mapping(cst_a.csta2c_metadata) AS csta2c_metadata, cst_a.csta2c_metadata_comment, cst_a.csta2d, metadata_mapping(cst_a.csta2d_metadata) AS csta2d_metadata, cst_a.csta2d_metadata_comment, cst_a.csta2dq, metadata_mapping(cst_a.csta2dq_metadata) AS csta2dq_metadata, cst_a.csta2dq_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cst_a.geltube30_id)) AS csta4, metadata_mapping(cst_a.csta4_metadata) AS csta4_metadata, cst_a.csta4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cst_a.fluoridetube30_id)) AS csta5, metadata_mapping(cst_a.csta5_metadata) AS csta5_metadata, cst_a.csta5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = cst_a.geltube30cq_id)) AS csta6, metadata_mapping(cst_a.csta6_metadata) AS csta6_metadata, cst_a.csta6_metadata_comment, at.version AS versao_cst FROM ((((((lab.cst_a cst_a JOIN public.activity a ON ((a.id = cst_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_cst_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: csts_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE csts_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    cstsa5_metadata character varying(255),
    cstsa5_metadata_comment text,
    cstsa6_metadata character varying(255),
    cstsa6_metadata_comment text,
    cstsa4_metadata character varying(255),
    cstsa4_metadata_comment text,
    cstsa2a boolean,
    cstsa2a_metadata character varying(255),
    cstsa2a_metadata_comment text,
    cstsa2b boolean,
    cstsa2b_metadata character varying(255),
    cstsa2b_metadata_comment text,
    cstsa2c boolean,
    cstsa2c_metadata character varying(255),
    cstsa2c_metadata_comment text,
    cstsa2d boolean,
    cstsa2d_metadata character varying(255),
    cstsa2d_metadata_comment text,
    qc_group character varying(255),
    cstsa1ah integer,
    cstsa1a_metadata character varying(255),
    cstsa1a_metadata_comment text,
    cstsa1am integer,
    cstsa2dq text,
    cstsa2dq_metadata character varying(255),
    cstsa2dq_metadata_comment text,
    fluoridetube30_id integer,
    geltube30_id integer,
    geltube30cq_id integer
);


ALTER TABLE lab.csts_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_csts_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_csts_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS cstsadataapini, a.finalization_date AS cstsadataapfim, o.date AS cstsadataoffline, u.code AS cstsaaferidor, ou.code AS cstsadigitador, csts_a.cstsa1ah, csts_a.cstsa1am, metadata_mapping(csts_a.cstsa1a_metadata) AS cstsa1a_metadata, csts_a.cstsa1a_metadata_comment, csts_a.cstsa2a, metadata_mapping(csts_a.cstsa2a_metadata) AS cstsa2a_metadata, csts_a.cstsa2a_metadata_comment, csts_a.cstsa2b, metadata_mapping(csts_a.cstsa2b_metadata) AS cstsa2b_metadata, csts_a.cstsa2b_metadata_comment, csts_a.cstsa2c, metadata_mapping(csts_a.cstsa2c_metadata) AS cstsa2c_metadata, csts_a.cstsa2c_metadata_comment, csts_a.cstsa2d, metadata_mapping(csts_a.cstsa2d_metadata) AS cstsa2d_metadata, csts_a.cstsa2d_metadata_comment, csts_a.cstsa2dq, metadata_mapping(csts_a.cstsa2dq_metadata) AS cstsa2dq_metadata, csts_a.cstsa2dq_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csts_a.geltube30_id)) AS cstsa4, metadata_mapping(csts_a.cstsa4_metadata) AS cstsa4_metadata, csts_a.cstsa4_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csts_a.fluoridetube30_id)) AS cstsa5, metadata_mapping(csts_a.cstsa5_metadata) AS cstsa5_metadata, csts_a.cstsa5_metadata_comment, (SELECT tube.code FROM lab.tube WHERE (tube.id = csts_a.geltube30cq_id)) AS cstsa6, metadata_mapping(csts_a.cstsa6_metadata) AS cstsa6_metadata, csts_a.cstsa6_metadata_comment, at.version AS versao_csts FROM ((((((lab.csts_a csts_a JOIN public.activity a ON ((a.id = csts_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_csts_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: dna_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE dna_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    dnaa2_metadata character varying(255),
    dnaa2_metadata_comment text,
    dnaa1_metadata character varying(255),
    dnaa1_metadata_comment text,
    qc_group character varying(255),
    bankdna_id integer,
    edtadna_id integer
);


ALTER TABLE lab.dna_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_dna_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_dna_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS dnaadataapini, a.finalization_date AS dnaadataapfim, o.date AS dnaadataoffline, u.code AS dnaaaferidor, ou.code AS dnaadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = dna_a.edtadna_id)) AS dnaa1, metadata_mapping(dna_a.dnaa1_metadata) AS dnaa1_metadata, dna_a.dnaa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = dna_a.bankdna_id)) AS dnaa2, metadata_mapping(dna_a.dnaa2_metadata) AS dnaa2_metadata, dna_a.dnaa2_metadata_comment, at.version AS versao_dna FROM ((((((lab.dna_a dna_a JOIN public.activity a ON ((a.id = dna_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_dna_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: dnas_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE dnas_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    dnasa2_metadata character varying(255),
    dnasa2_metadata_comment text,
    dnasa1_metadata character varying(255),
    dnasa1_metadata_comment text,
    qc_group character varying(255),
    bankdna_id integer,
    edtadna_id integer
);


ALTER TABLE lab.dnas_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_dnas_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_dnas_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS dnasadataapini, a.finalization_date AS dnasadataapfim, o.date AS dnasadataoffline, u.code AS dnasaaferidor, ou.code AS dnasadigitador, (SELECT tube.code FROM lab.tube WHERE (tube.id = dnas_a.edtadna_id)) AS dnasa1, metadata_mapping(dnas_a.dnasa1_metadata) AS dnasa1_metadata, dnas_a.dnasa1_metadata_comment, (SELECT aliquot.code FROM lab.aliquot WHERE (aliquot.id = dnas_a.bankdna_id)) AS dnasa2, metadata_mapping(dnas_a.dnasa2_metadata) AS dnasa2_metadata, dnas_a.dnasa2_metadata_comment, at.version AS versao_dnas FROM ((((((lab.dnas_a dnas_a JOIN public.activity a ON ((a.id = dnas_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_dnas_a OWNER TO postgres;

--
-- Name: v_dso_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_dso_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS dsoadataapini, a.finalization_date AS dsoadataapfim, o.date AS dsoadataoffline, u.code AS dsoaaferidor, ou.code AS dsoadigitador, noyesuppercase_mapping(dso_a.dsoa1) AS dsoa1, metadata_mapping(dso_a.dsoa1_metadata) AS dsoa1_metadata, dso_a.dsoa1_metadata_comment, dso_a.dsoa1a, metadata_mapping(dso_a.dsoa1a_metadata) AS dsoa1a_metadata, dso_a.dsoa1a_metadata_comment, dso_a.dsoa2, metadata_mapping(dso_a.dsoa2_metadata) AS dsoa2_metadata, dso_a.dsoa2_metadata_comment, dso_a.dsoa2ah, dso_a.dsoa2am, metadata_mapping(dso_a.dsoa2a_metadata) AS dsoa2a_metadata, dso_a.dsoa2a_metadata_comment, noyesuppercase_mapping(dso_a.dsoa2b) AS dsoa2b, metadata_mapping(dso_a.dsoa2b_metadata) AS dsoa2b_metadata, dso_a.dsoa2b_metadata_comment, dso_a.dsoa2c, metadata_mapping(dso_a.dsoa2c_metadata) AS dsoa2c_metadata, dso_a.dsoa2c_metadata_comment, dso_a.dsoa2dih, dso_a.dsoa2dim, metadata_mapping(dso_a.dsoa2di_metadata) AS dsoa2di_metadata, dso_a.dsoa2di_metadata_comment, dso_a.dsoa2dfh, dso_a.dsoa2dfm, metadata_mapping(dso_a.dsoa2df_metadata) AS dsoa2df_metadata, dso_a.dsoa2df_metadata_comment, dso_a.dsoa2eih, dso_a.dsoa2eim, metadata_mapping(dso_a.dsoa2ei_metadata) AS dsoa2ei_metadata, dso_a.dsoa2ei_metadata_comment, dso_a.dsoa2efh, dso_a.dsoa2efm, metadata_mapping(dso_a.dsoa2ef_metadata) AS dsoa2ef_metadata, dso_a.dsoa2ef_metadata_comment, dso_a.dsoa2fih, dso_a.dsoa2fim, metadata_mapping(dso_a.dsoa2fi_metadata) AS dsoa2fi_metadata, dso_a.dsoa2fi_metadata_comment, dso_a.dsoa2ffh, dso_a.dsoa2ffm, metadata_mapping(dso_a.dsoa2ff_metadata) AS dsoa2ff_metadata, dso_a.dsoa2ff_metadata_comment, dso_a.dsoa2gih, dso_a.dsoa2gim, metadata_mapping(dso_a.dsoa2gi_metadata) AS dsoa2gi_metadata, dso_a.dsoa2gi_metadata_comment, dso_a.dsoa2gfh, dso_a.dsoa2gfm, metadata_mapping(dso_a.dsoa2gf_metadata) AS dsoa2gf_metadata, dso_a.dsoa2gf_metadata_comment, dso_a.dsoa2hih, dso_a.dsoa2him, metadata_mapping(dso_a.dsoa2hi_metadata) AS dsoa2hi_metadata, dso_a.dsoa2hi_metadata_comment, dso_a.dsoa2hfh, dso_a.dsoa2hfm, metadata_mapping(dso_a.dsoa2hf_metadata) AS dsoa2hf_metadata, dso_a.dsoa2hf_metadata_comment, dso_a.dsoa2iih, dso_a.dsoa2iim, metadata_mapping(dso_a.dsoa2ii_metadata) AS dsoa2ii_metadata, dso_a.dsoa2ii_metadata_comment, dso_a.dsoa2ifh, dso_a.dsoa2ifm, metadata_mapping(dso_a.dsoa2if_metadata) AS dsoa2if_metadata, dso_a.dsoa2if_metadata_comment, dso_a.dsoa2jih, dso_a.dsoa2jim, metadata_mapping(dso_a.dsoa2ji_metadata) AS dsoa2ji_metadata, dso_a.dsoa2ji_metadata_comment, dso_a.dsoa2jfh, dso_a.dsoa2jfm, metadata_mapping(dso_a.dsoa2jf_metadata) AS dsoa2jf_metadata, dso_a.dsoa2jf_metadata_comment, dso_a.dsoa2kih, dso_a.dsoa2kim, metadata_mapping(dso_a.dsoa2ki_metadata) AS dsoa2ki_metadata, dso_a.dsoa2ki_metadata_comment, dso_a.dsoa2kfh, dso_a.dsoa2kfm, metadata_mapping(dso_a.dsoa2kf_metadata) AS dsoa2kf_metadata, dso_a.dsoa2kf_metadata_comment, dso_a.dsoa2lh, dso_a.dsoa2lm, metadata_mapping(dso_a.dsoa2l_metadata) AS dsoa2l_metadata, dso_a.dsoa2l_metadata_comment, dso_a.dsoa3, metadata_mapping(dso_a.dsoa3_metadata) AS dsoa3_metadata, dso_a.dsoa3_metadata_comment, dso_a.dsoa3ah, dso_a.dsoa3am, metadata_mapping(dso_a.dsoa3a_metadata) AS dsoa3a_metadata, dso_a.dsoa3a_metadata_comment, noyesuppercase_mapping(dso_a.dsoa3b) AS dsoa3b, metadata_mapping(dso_a.dsoa3b_metadata) AS dsoa3b_metadata, dso_a.dsoa3b_metadata_comment, dso_a.dsoa3c, metadata_mapping(dso_a.dsoa3c_metadata) AS dsoa3c_metadata, dso_a.dsoa3c_metadata_comment, dso_a.dsoa3dih, dso_a.dsoa3dim, metadata_mapping(dso_a.dsoa3di_metadata) AS dsoa3di_metadata, dso_a.dsoa3di_metadata_comment, dso_a.dsoa3dfh, dso_a.dsoa3dfm, metadata_mapping(dso_a.dsoa3df_metadata) AS dsoa3df_metadata, dso_a.dsoa3df_metadata_comment, dso_a.dsoa3eih, dso_a.dsoa3eim, metadata_mapping(dso_a.dsoa3ei_metadata) AS dsoa3ei_metadata, dso_a.dsoa3ei_metadata_comment, dso_a.dsoa3efh, dso_a.dsoa3efm, metadata_mapping(dso_a.dsoa3ef_metadata) AS dsoa3ef_metadata, dso_a.dsoa3ef_metadata_comment, dso_a.dsoa3fih, dso_a.dsoa3fim, metadata_mapping(dso_a.dsoa3fi_metadata) AS dsoa3fi_metadata, dso_a.dsoa3fi_metadata_comment, dso_a.dsoa3ffh, dso_a.dsoa3ffm, metadata_mapping(dso_a.dsoa3ff_metadata) AS dsoa3ff_metadata, dso_a.dsoa3ff_metadata_comment, dso_a.dsoa3gih, dso_a.dsoa3gim, metadata_mapping(dso_a.dsoa3gi_metadata) AS dsoa3gi_metadata, dso_a.dsoa3gi_metadata_comment, dso_a.dsoa3gfh, dso_a.dsoa3gfm, metadata_mapping(dso_a.dsoa3gf_metadata) AS dsoa3gf_metadata, dso_a.dsoa3gf_metadata_comment, dso_a.dsoa3hih, dso_a.dsoa3him, metadata_mapping(dso_a.dsoa3hi_metadata) AS dsoa3hi_metadata, dso_a.dsoa3hi_metadata_comment, dso_a.dsoa3hfh, dso_a.dsoa3hfm, metadata_mapping(dso_a.dsoa3hf_metadata) AS dsoa3hf_metadata, dso_a.dsoa3hf_metadata_comment, dso_a.dsoa3iih, dso_a.dsoa3iim, metadata_mapping(dso_a.dsoa3ii_metadata) AS dsoa3ii_metadata, dso_a.dsoa3ii_metadata_comment, dso_a.dsoa3ifh, dso_a.dsoa3ifm, metadata_mapping(dso_a.dsoa3if_metadata) AS dsoa3if_metadata, dso_a.dsoa3if_metadata_comment, dso_a.dsoa3jih, dso_a.dsoa3jim, metadata_mapping(dso_a.dsoa3ji_metadata) AS dsoa3ji_metadata, dso_a.dsoa3ji_metadata_comment, dso_a.dsoa3jfh, dso_a.dsoa3jfm, metadata_mapping(dso_a.dsoa3jf_metadata) AS dsoa3jf_metadata, dso_a.dsoa3jf_metadata_comment, dso_a.dsoa3kih, dso_a.dsoa3kim, metadata_mapping(dso_a.dsoa3ki_metadata) AS dsoa3ki_metadata, dso_a.dsoa3ki_metadata_comment, dso_a.dsoa3kfh, dso_a.dsoa3kfm, metadata_mapping(dso_a.dsoa3kf_metadata) AS dsoa3kf_metadata, dso_a.dsoa3kf_metadata_comment, dso_a.dsoa3lh, dso_a.dsoa3lm, metadata_mapping(dso_a.dsoa3l_metadata) AS dsoa3l_metadata, dso_a.dsoa3l_metadata_comment, dso_a.dsoa4, metadata_mapping(dso_a.dsoa4_metadata) AS dsoa4_metadata, dso_a.dsoa4_metadata_comment, dso_a.dsoa4ah, dso_a.dsoa4am, metadata_mapping(dso_a.dsoa4a_metadata) AS dsoa4a_metadata, dso_a.dsoa4a_metadata_comment, noyesuppercase_mapping(dso_a.dsoa4b) AS dsoa4b, metadata_mapping(dso_a.dsoa4b_metadata) AS dsoa4b_metadata, dso_a.dsoa4b_metadata_comment, dso_a.dsoa4c, metadata_mapping(dso_a.dsoa4c_metadata) AS dsoa4c_metadata, dso_a.dsoa4c_metadata_comment, dso_a.dsoa4dih, dso_a.dsoa4dim, metadata_mapping(dso_a.dsoa4di_metadata) AS dsoa4di_metadata, dso_a.dsoa4di_metadata_comment, dso_a.dsoa4dfh, dso_a.dsoa4dfm, metadata_mapping(dso_a.dsoa4df_metadata) AS dsoa4df_metadata, dso_a.dsoa4df_metadata_comment, dso_a.dsoa4eih, dso_a.dsoa4eim, metadata_mapping(dso_a.dsoa4ei_metadata) AS dsoa4ei_metadata, dso_a.dsoa4ei_metadata_comment, dso_a.dsoa4efh, dso_a.dsoa4efm, metadata_mapping(dso_a.dsoa4ef_metadata) AS dsoa4ef_metadata, dso_a.dsoa4ef_metadata_comment, dso_a.dsoa4fih, dso_a.dsoa4fim, metadata_mapping(dso_a.dsoa4fi_metadata) AS dsoa4fi_metadata, dso_a.dsoa4fi_metadata_comment, dso_a.dsoa4ffh, dso_a.dsoa4ffm, metadata_mapping(dso_a.dsoa4ff_metadata) AS dsoa4ff_metadata, dso_a.dsoa4ff_metadata_comment, dso_a.dsoa4gih, dso_a.dsoa4gim, metadata_mapping(dso_a.dsoa4gi_metadata) AS dsoa4gi_metadata, dso_a.dsoa4gi_metadata_comment, dso_a.dsoa4gfh, dso_a.dsoa4gfm, metadata_mapping(dso_a.dsoa4gf_metadata) AS dsoa4gf_metadata, dso_a.dsoa4gf_metadata_comment, dso_a.dsoa4hih, dso_a.dsoa4him, metadata_mapping(dso_a.dsoa4hi_metadata) AS dsoa4hi_metadata, dso_a.dsoa4hi_metadata_comment, dso_a.dsoa4hfh, dso_a.dsoa4hfm, metadata_mapping(dso_a.dsoa4hf_metadata) AS dsoa4hf_metadata, dso_a.dsoa4hf_metadata_comment, dso_a.dsoa4iih, dso_a.dsoa4iim, metadata_mapping(dso_a.dsoa4ii_metadata) AS dsoa4ii_metadata, dso_a.dsoa4ii_metadata_comment, dso_a.dsoa4ifh, dso_a.dsoa4ifm, metadata_mapping(dso_a.dsoa4if_metadata) AS dsoa4if_metadata, dso_a.dsoa4if_metadata_comment, dso_a.dsoa4jih, dso_a.dsoa4jim, metadata_mapping(dso_a.dsoa4ji_metadata) AS dsoa4ji_metadata, dso_a.dsoa4ji_metadata_comment, dso_a.dsoa4jfh, dso_a.dsoa4jfm, metadata_mapping(dso_a.dsoa4jf_metadata) AS dsoa4jf_metadata, dso_a.dsoa4jf_metadata_comment, dso_a.dsoa4kih, dso_a.dsoa4kim, metadata_mapping(dso_a.dsoa4ki_metadata) AS dsoa4ki_metadata, dso_a.dsoa4ki_metadata_comment, dso_a.dsoa4kfh, dso_a.dsoa4kfm, metadata_mapping(dso_a.dsoa4kf_metadata) AS dsoa4kf_metadata, dso_a.dsoa4kf_metadata_comment, dso_a.dsoa4lh, dso_a.dsoa4lm, metadata_mapping(dso_a.dsoa4l_metadata) AS dsoa4l_metadata, dso_a.dsoa4l_metadata_comment, dso_a.dsoa5, metadata_mapping(dso_a.dsoa5_metadata) AS dsoa5_metadata, dso_a.dsoa5_metadata_comment, dso_a.dsoa5ah, dso_a.dsoa5am, metadata_mapping(dso_a.dsoa5a_metadata) AS dsoa5a_metadata, dso_a.dsoa5a_metadata_comment, noyesuppercase_mapping(dso_a.dsoa5b) AS dsoa5b, metadata_mapping(dso_a.dsoa5b_metadata) AS dsoa5b_metadata, dso_a.dsoa5b_metadata_comment, dso_a.dsoa5c, metadata_mapping(dso_a.dsoa5c_metadata) AS dsoa5c_metadata, dso_a.dsoa5c_metadata_comment, dso_a.dsoa5dih, dso_a.dsoa5dim, metadata_mapping(dso_a.dsoa5di_metadata) AS dsoa5di_metadata, dso_a.dsoa5di_metadata_comment, dso_a.dsoa5dfh, dso_a.dsoa5dfm, metadata_mapping(dso_a.dsoa5df_metadata) AS dsoa5df_metadata, dso_a.dsoa5df_metadata_comment, dso_a.dsoa5eih, dso_a.dsoa5eim, metadata_mapping(dso_a.dsoa5ei_metadata) AS dsoa5ei_metadata, dso_a.dsoa5ei_metadata_comment, dso_a.dsoa5efh, dso_a.dsoa5efm, metadata_mapping(dso_a.dsoa5ef_metadata) AS dsoa5ef_metadata, dso_a.dsoa5ef_metadata_comment, dso_a.dsoa5fih, dso_a.dsoa5fim, metadata_mapping(dso_a.dsoa5fi_metadata) AS dsoa5fi_metadata, dso_a.dsoa5fi_metadata_comment, dso_a.dsoa5ffh, dso_a.dsoa5ffm, metadata_mapping(dso_a.dsoa5ff_metadata) AS dsoa5ff_metadata, dso_a.dsoa5ff_metadata_comment, dso_a.dsoa5gih, dso_a.dsoa5gim, metadata_mapping(dso_a.dsoa5gi_metadata) AS dsoa5gi_metadata, dso_a.dsoa5gi_metadata_comment, dso_a.dsoa5gfh, dso_a.dsoa5gfm, metadata_mapping(dso_a.dsoa5gf_metadata) AS dsoa5gf_metadata, dso_a.dsoa5gf_metadata_comment, dso_a.dsoa5hih, dso_a.dsoa5him, metadata_mapping(dso_a.dsoa5hi_metadata) AS dsoa5hi_metadata, dso_a.dsoa5hi_metadata_comment, dso_a.dsoa5hfh, dso_a.dsoa5hfm, metadata_mapping(dso_a.dsoa5hf_metadata) AS dsoa5hf_metadata, dso_a.dsoa5hf_metadata_comment, dso_a.dsoa5iih, dso_a.dsoa5iim, metadata_mapping(dso_a.dsoa5ii_metadata) AS dsoa5ii_metadata, dso_a.dsoa5ii_metadata_comment, dso_a.dsoa5ifh, dso_a.dsoa5ifm, metadata_mapping(dso_a.dsoa5if_metadata) AS dsoa5if_metadata, dso_a.dsoa5if_metadata_comment, dso_a.dsoa5jih, dso_a.dsoa5jim, metadata_mapping(dso_a.dsoa5ji_metadata) AS dsoa5ji_metadata, dso_a.dsoa5ji_metadata_comment, dso_a.dsoa5jfh, dso_a.dsoa5jfm, metadata_mapping(dso_a.dsoa5jf_metadata) AS dsoa5jf_metadata, dso_a.dsoa5jf_metadata_comment, dso_a.dsoa5kih, dso_a.dsoa5kim, metadata_mapping(dso_a.dsoa5ki_metadata) AS dsoa5ki_metadata, dso_a.dsoa5ki_metadata_comment, dso_a.dsoa5kfh, dso_a.dsoa5kfm, metadata_mapping(dso_a.dsoa5kf_metadata) AS dsoa5kf_metadata, dso_a.dsoa5kf_metadata_comment, dso_a.dsoa5lh, dso_a.dsoa5lm, metadata_mapping(dso_a.dsoa5l_metadata) AS dsoa5l_metadata, dso_a.dsoa5l_metadata_comment, dso_a.dsoa6, metadata_mapping(dso_a.dsoa6_metadata) AS dsoa6_metadata, dso_a.dsoa6_metadata_comment, dso_a.dsoa6ah, dso_a.dsoa6am, metadata_mapping(dso_a.dsoa6a_metadata) AS dsoa6a_metadata, dso_a.dsoa6a_metadata_comment, noyesuppercase_mapping(dso_a.dsoa6b) AS dsoa6b, metadata_mapping(dso_a.dsoa6b_metadata) AS dsoa6b_metadata, dso_a.dsoa6b_metadata_comment, dso_a.dsoa6c, metadata_mapping(dso_a.dsoa6c_metadata) AS dsoa6c_metadata, dso_a.dsoa6c_metadata_comment, dso_a.dsoa6dih, dso_a.dsoa6dim, metadata_mapping(dso_a.dsoa6di_metadata) AS dsoa6di_metadata, dso_a.dsoa6di_metadata_comment, dso_a.dsoa6dfh, dso_a.dsoa6dfm, metadata_mapping(dso_a.dsoa6df_metadata) AS dsoa6df_metadata, dso_a.dsoa6df_metadata_comment, dso_a.dsoa6eih, dso_a.dsoa6eim, metadata_mapping(dso_a.dsoa6ei_metadata) AS dsoa6ei_metadata, dso_a.dsoa6ei_metadata_comment, dso_a.dsoa6efh, dso_a.dsoa6efm, metadata_mapping(dso_a.dsoa6ef_metadata) AS dsoa6ef_metadata, dso_a.dsoa6ef_metadata_comment, dso_a.dsoa6fih, dso_a.dsoa6fim, metadata_mapping(dso_a.dsoa6fi_metadata) AS dsoa6fi_metadata, dso_a.dsoa6fi_metadata_comment, dso_a.dsoa6ffh, dso_a.dsoa6ffm, metadata_mapping(dso_a.dsoa6ff_metadata) AS dsoa6ff_metadata, dso_a.dsoa6ff_metadata_comment, dso_a.dsoa6gih, dso_a.dsoa6gim, metadata_mapping(dso_a.dsoa6gi_metadata) AS dsoa6gi_metadata, dso_a.dsoa6gi_metadata_comment, dso_a.dsoa6gfh, dso_a.dsoa6gfm, metadata_mapping(dso_a.dsoa6gf_metadata) AS dsoa6gf_metadata, dso_a.dsoa6gf_metadata_comment, dso_a.dsoa6hih, dso_a.dsoa6him, metadata_mapping(dso_a.dsoa6hi_metadata) AS dsoa6hi_metadata, dso_a.dsoa6hi_metadata_comment, dso_a.dsoa6hfh, dso_a.dsoa6hfm, metadata_mapping(dso_a.dsoa6hf_metadata) AS dsoa6hf_metadata, dso_a.dsoa6hf_metadata_comment, dso_a.dsoa6iih, dso_a.dsoa6iim, metadata_mapping(dso_a.dsoa6ii_metadata) AS dsoa6ii_metadata, dso_a.dsoa6ii_metadata_comment, dso_a.dsoa6ifh, dso_a.dsoa6ifm, metadata_mapping(dso_a.dsoa6if_metadata) AS dsoa6if_metadata, dso_a.dsoa6if_metadata_comment, dso_a.dsoa6jih, dso_a.dsoa6jim, metadata_mapping(dso_a.dsoa6ji_metadata) AS dsoa6ji_metadata, dso_a.dsoa6ji_metadata_comment, dso_a.dsoa6jfh, dso_a.dsoa6jfm, metadata_mapping(dso_a.dsoa6jf_metadata) AS dsoa6jf_metadata, dso_a.dsoa6jf_metadata_comment, dso_a.dsoa6kih, dso_a.dsoa6kim, metadata_mapping(dso_a.dsoa6ki_metadata) AS dsoa6ki_metadata, dso_a.dsoa6ki_metadata_comment, dso_a.dsoa6kfh, dso_a.dsoa6kfm, metadata_mapping(dso_a.dsoa6kf_metadata) AS dsoa6kf_metadata, dso_a.dsoa6kf_metadata_comment, dso_a.dsoa6lh, dso_a.dsoa6lm, metadata_mapping(dso_a.dsoa6l_metadata) AS dsoa6l_metadata, dso_a.dsoa6l_metadata_comment, dso_a.dsoa7, metadata_mapping(dso_a.dsoa7_metadata) AS dsoa7_metadata, dso_a.dsoa7_metadata_comment, dso_a.dsoa7ah, dso_a.dsoa7am, metadata_mapping(dso_a.dsoa7a_metadata) AS dsoa7a_metadata, dso_a.dsoa7a_metadata_comment, noyesuppercase_mapping(dso_a.dsoa7b) AS dsoa7b, metadata_mapping(dso_a.dsoa7b_metadata) AS dsoa7b_metadata, dso_a.dsoa7b_metadata_comment, dso_a.dsoa7c, metadata_mapping(dso_a.dsoa7c_metadata) AS dsoa7c_metadata, dso_a.dsoa7c_metadata_comment, dso_a.dsoa7dih, dso_a.dsoa7dim, metadata_mapping(dso_a.dsoa7di_metadata) AS dsoa7di_metadata, dso_a.dsoa7di_metadata_comment, dso_a.dsoa7dfh, dso_a.dsoa7dfm, metadata_mapping(dso_a.dsoa7df_metadata) AS dsoa7df_metadata, dso_a.dsoa7df_metadata_comment, dso_a.dsoa7eih, dso_a.dsoa7eim, metadata_mapping(dso_a.dsoa7ei_metadata) AS dsoa7ei_metadata, dso_a.dsoa7ei_metadata_comment, dso_a.dsoa7efh, dso_a.dsoa7efm, metadata_mapping(dso_a.dsoa7ef_metadata) AS dsoa7ef_metadata, dso_a.dsoa7ef_metadata_comment, dso_a.dsoa7fih, dso_a.dsoa7fim, metadata_mapping(dso_a.dsoa7fi_metadata) AS dsoa7fi_metadata, dso_a.dsoa7fi_metadata_comment, dso_a.dsoa7ffh, dso_a.dsoa7ffm, metadata_mapping(dso_a.dsoa7ff_metadata) AS dsoa7ff_metadata, dso_a.dsoa7ff_metadata_comment, dso_a.dsoa7gih, dso_a.dsoa7gim, metadata_mapping(dso_a.dsoa7gi_metadata) AS dsoa7gi_metadata, dso_a.dsoa7gi_metadata_comment, dso_a.dsoa7gfh, dso_a.dsoa7gfm, metadata_mapping(dso_a.dsoa7gf_metadata) AS dsoa7gf_metadata, dso_a.dsoa7gf_metadata_comment, dso_a.dsoa7hih, dso_a.dsoa7him, metadata_mapping(dso_a.dsoa7hi_metadata) AS dsoa7hi_metadata, dso_a.dsoa7hi_metadata_comment, dso_a.dsoa7hfh, dso_a.dsoa7hfm, metadata_mapping(dso_a.dsoa7hf_metadata) AS dsoa7hf_metadata, dso_a.dsoa7hf_metadata_comment, dso_a.dsoa7iih, dso_a.dsoa7iim, metadata_mapping(dso_a.dsoa7ii_metadata) AS dsoa7ii_metadata, dso_a.dsoa7ii_metadata_comment, dso_a.dsoa7ifh, dso_a.dsoa7ifm, metadata_mapping(dso_a.dsoa7if_metadata) AS dsoa7if_metadata, dso_a.dsoa7if_metadata_comment, dso_a.dsoa7jih, dso_a.dsoa7jim, metadata_mapping(dso_a.dsoa7ji_metadata) AS dsoa7ji_metadata, dso_a.dsoa7ji_metadata_comment, dso_a.dsoa7jfh, dso_a.dsoa7jfm, metadata_mapping(dso_a.dsoa7jf_metadata) AS dsoa7jf_metadata, dso_a.dsoa7jf_metadata_comment, dso_a.dsoa7kih, dso_a.dsoa7kim, metadata_mapping(dso_a.dsoa7ki_metadata) AS dsoa7ki_metadata, dso_a.dsoa7ki_metadata_comment, dso_a.dsoa7kfh, dso_a.dsoa7kfm, metadata_mapping(dso_a.dsoa7kf_metadata) AS dsoa7kf_metadata, dso_a.dsoa7kf_metadata_comment, dso_a.dsoa7lh, dso_a.dsoa7lm, metadata_mapping(dso_a.dsoa7l_metadata) AS dsoa7l_metadata, dso_a.dsoa7l_metadata_comment, dso_a.dsoa8, metadata_mapping(dso_a.dsoa8_metadata) AS dsoa8_metadata, dso_a.dsoa8_metadata_comment, dso_a.dsoa8ah, dso_a.dsoa8am, metadata_mapping(dso_a.dsoa8a_metadata) AS dsoa8a_metadata, dso_a.dsoa8a_metadata_comment, noyesuppercase_mapping(dso_a.dsoa8b) AS dsoa8b, metadata_mapping(dso_a.dsoa8b_metadata) AS dsoa8b_metadata, dso_a.dsoa8b_metadata_comment, dso_a.dsoa8c, metadata_mapping(dso_a.dsoa8c_metadata) AS dsoa8c_metadata, dso_a.dsoa8c_metadata_comment, dso_a.dsoa8dih, dso_a.dsoa8dim, metadata_mapping(dso_a.dsoa8di_metadata) AS dsoa8di_metadata, dso_a.dsoa8di_metadata_comment, dso_a.dsoa8dfh, dso_a.dsoa8dfm, metadata_mapping(dso_a.dsoa8df_metadata) AS dsoa8df_metadata, dso_a.dsoa8df_metadata_comment, dso_a.dsoa8eih, dso_a.dsoa8eim, metadata_mapping(dso_a.dsoa8ei_metadata) AS dsoa8ei_metadata, dso_a.dsoa8ei_metadata_comment, dso_a.dsoa8efh, dso_a.dsoa8efm, metadata_mapping(dso_a.dsoa8ef_metadata) AS dsoa8ef_metadata, dso_a.dsoa8ef_metadata_comment, dso_a.dsoa8fih, dso_a.dsoa8fim, metadata_mapping(dso_a.dsoa8fi_metadata) AS dsoa8fi_metadata, dso_a.dsoa8fi_metadata_comment, dso_a.dsoa8ffh, dso_a.dsoa8ffm, metadata_mapping(dso_a.dsoa8ff_metadata) AS dsoa8ff_metadata, dso_a.dsoa8ff_metadata_comment, dso_a.dsoa8gih, dso_a.dsoa8gim, metadata_mapping(dso_a.dsoa8gi_metadata) AS dsoa8gi_metadata, dso_a.dsoa8gi_metadata_comment, dso_a.dsoa8gfh, dso_a.dsoa8gfm, metadata_mapping(dso_a.dsoa8gf_metadata) AS dsoa8gf_metadata, dso_a.dsoa8gf_metadata_comment, dso_a.dsoa8hih, dso_a.dsoa8him, metadata_mapping(dso_a.dsoa8hi_metadata) AS dsoa8hi_metadata, dso_a.dsoa8hi_metadata_comment, dso_a.dsoa8hfh, dso_a.dsoa8hfm, metadata_mapping(dso_a.dsoa8hf_metadata) AS dsoa8hf_metadata, dso_a.dsoa8hf_metadata_comment, dso_a.dsoa8iih, dso_a.dsoa8iim, metadata_mapping(dso_a.dsoa8ii_metadata) AS dsoa8ii_metadata, dso_a.dsoa8ii_metadata_comment, dso_a.dsoa8ifh, dso_a.dsoa8ifm, metadata_mapping(dso_a.dsoa8if_metadata) AS dsoa8if_metadata, dso_a.dsoa8if_metadata_comment, dso_a.dsoa8jih, dso_a.dsoa8jim, metadata_mapping(dso_a.dsoa8ji_metadata) AS dsoa8ji_metadata, dso_a.dsoa8ji_metadata_comment, dso_a.dsoa8jfh, dso_a.dsoa8jfm, metadata_mapping(dso_a.dsoa8jf_metadata) AS dsoa8jf_metadata, dso_a.dsoa8jf_metadata_comment, dso_a.dsoa8kih, dso_a.dsoa8kim, metadata_mapping(dso_a.dsoa8ki_metadata) AS dsoa8ki_metadata, dso_a.dsoa8ki_metadata_comment, dso_a.dsoa8kfh, dso_a.dsoa8kfm, metadata_mapping(dso_a.dsoa8kf_metadata) AS dsoa8kf_metadata, dso_a.dsoa8kf_metadata_comment, dso_a.dsoa8lh, dso_a.dsoa8lm, metadata_mapping(dso_a.dsoa8l_metadata) AS dsoa8l_metadata, dso_a.dsoa8l_metadata_comment, dso_a.dsoa9, metadata_mapping(dso_a.dsoa9_metadata) AS dsoa9_metadata, dso_a.dsoa9_metadata_comment, dso_a.dsoa9ah, dso_a.dsoa9am, metadata_mapping(dso_a.dsoa9a_metadata) AS dsoa9a_metadata, dso_a.dsoa9a_metadata_comment, noyesuppercase_mapping(dso_a.dsoa9b) AS dsoa9b, metadata_mapping(dso_a.dsoa9b_metadata) AS dsoa9b_metadata, dso_a.dsoa9b_metadata_comment, dso_a.dsoa9c, metadata_mapping(dso_a.dsoa9c_metadata) AS dsoa9c_metadata, dso_a.dsoa9c_metadata_comment, dso_a.dsoa9dih, dso_a.dsoa9dim, metadata_mapping(dso_a.dsoa9di_metadata) AS dsoa9di_metadata, dso_a.dsoa9di_metadata_comment, dso_a.dsoa9dfh, dso_a.dsoa9dfm, metadata_mapping(dso_a.dsoa9df_metadata) AS dsoa9df_metadata, dso_a.dsoa9df_metadata_comment, dso_a.dsoa9eih, dso_a.dsoa9eim, metadata_mapping(dso_a.dsoa9ei_metadata) AS dsoa9ei_metadata, dso_a.dsoa9ei_metadata_comment, dso_a.dsoa9efh, dso_a.dsoa9efm, metadata_mapping(dso_a.dsoa9ef_metadata) AS dsoa9ef_metadata, dso_a.dsoa9ef_metadata_comment, dso_a.dsoa9fih, dso_a.dsoa9fim, metadata_mapping(dso_a.dsoa9fi_metadata) AS dsoa9fi_metadata, dso_a.dsoa9fi_metadata_comment, dso_a.dsoa9ffh, dso_a.dsoa9ffm, metadata_mapping(dso_a.dsoa9ff_metadata) AS dsoa9ff_metadata, dso_a.dsoa9ff_metadata_comment, dso_a.dsoa9gih, dso_a.dsoa9gim, metadata_mapping(dso_a.dsoa9gi_metadata) AS dsoa9gi_metadata, dso_a.dsoa9gi_metadata_comment, dso_a.dsoa9gfh, dso_a.dsoa9gfm, metadata_mapping(dso_a.dsoa9gf_metadata) AS dsoa9gf_metadata, dso_a.dsoa9gf_metadata_comment, dso_a.dsoa9hih, dso_a.dsoa9him, metadata_mapping(dso_a.dsoa9hi_metadata) AS dsoa9hi_metadata, dso_a.dsoa9hi_metadata_comment, dso_a.dsoa9hfh, dso_a.dsoa9hfm, metadata_mapping(dso_a.dsoa9hf_metadata) AS dsoa9hf_metadata, dso_a.dsoa9hf_metadata_comment, dso_a.dsoa9iih, dso_a.dsoa9iim, metadata_mapping(dso_a.dsoa9ii_metadata) AS dsoa9ii_metadata, dso_a.dsoa9ii_metadata_comment, dso_a.dsoa9ifh, dso_a.dsoa9ifm, metadata_mapping(dso_a.dsoa9if_metadata) AS dsoa9if_metadata, dso_a.dsoa9if_metadata_comment, dso_a.dsoa9jih, dso_a.dsoa9jim, metadata_mapping(dso_a.dsoa9ji_metadata) AS dsoa9ji_metadata, dso_a.dsoa9ji_metadata_comment, dso_a.dsoa9jfh, dso_a.dsoa9jfm, metadata_mapping(dso_a.dsoa9jf_metadata) AS dsoa9jf_metadata, dso_a.dsoa9jf_metadata_comment, dso_a.dsoa9kih, dso_a.dsoa9kim, metadata_mapping(dso_a.dsoa9ki_metadata) AS dsoa9ki_metadata, dso_a.dsoa9ki_metadata_comment, dso_a.dsoa9kfh, dso_a.dsoa9kfm, metadata_mapping(dso_a.dsoa9kf_metadata) AS dsoa9kf_metadata, dso_a.dsoa9kf_metadata_comment, dso_a.dsoa9lh, dso_a.dsoa9lm, metadata_mapping(dso_a.dsoa9l_metadata) AS dsoa9l_metadata, dso_a.dsoa9l_metadata_comment, at.version AS versao_dso FROM ((((((coorte.dso_a dso_a JOIN public.activity a ON ((a.id = dso_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_dso_a OWNER TO postgres;

--
-- Name: v_dsos_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_dsos_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS dsosadataapini, a.finalization_date AS dsosadataapfim, o.date AS dsosadataoffline, u.code AS dsosaaferidor, ou.code AS dsosadigitador, noyesuppercase_mapping(dsos_a.dsosa1) AS dsosa1, metadata_mapping(dsos_a.dsosa1_metadata) AS dsosa1_metadata, dsos_a.dsosa1_metadata_comment, dsos_a.dsosa1a, metadata_mapping(dsos_a.dsosa1a_metadata) AS dsosa1a_metadata, dsos_a.dsosa1a_metadata_comment, dsos_a.dsosa2, metadata_mapping(dsos_a.dsosa2_metadata) AS dsosa2_metadata, dsos_a.dsosa2_metadata_comment, dsos_a.dsosa2ah, dsos_a.dsosa2am, metadata_mapping(dsos_a.dsosa2a_metadata) AS dsosa2a_metadata, dsos_a.dsosa2a_metadata_comment, noyesuppercase_mapping(dsos_a.dsosa2b) AS dsosa2b, metadata_mapping(dsos_a.dsosa2b_metadata) AS dsosa2b_metadata, dsos_a.dsosa2b_metadata_comment, dsos_a.dsosa2c, metadata_mapping(dsos_a.dsosa2c_metadata) AS dsosa2c_metadata, dsos_a.dsosa2c_metadata_comment, dsos_a.dsosa2dih, dsos_a.dsosa2dim, metadata_mapping(dsos_a.dsosa2di_metadata) AS dsosa2di_metadata, dsos_a.dsosa2di_metadata_comment, dsos_a.dsosa2dfh, dsos_a.dsosa2dfm, metadata_mapping(dsos_a.dsosa2df_metadata) AS dsosa2df_metadata, dsos_a.dsosa2df_metadata_comment, dsos_a.dsosa2eih, dsos_a.dsosa2eim, metadata_mapping(dsos_a.dsosa2ei_metadata) AS dsosa2ei_metadata, dsos_a.dsosa2ei_metadata_comment, dsos_a.dsosa2efh, dsos_a.dsosa2efm, metadata_mapping(dsos_a.dsosa2ef_metadata) AS dsosa2ef_metadata, dsos_a.dsosa2ef_metadata_comment, dsos_a.dsosa2fih, dsos_a.dsosa2fim, metadata_mapping(dsos_a.dsosa2fi_metadata) AS dsosa2fi_metadata, dsos_a.dsosa2fi_metadata_comment, dsos_a.dsosa2ffh, dsos_a.dsosa2ffm, metadata_mapping(dsos_a.dsosa2ff_metadata) AS dsosa2ff_metadata, dsos_a.dsosa2ff_metadata_comment, dsos_a.dsosa2gih, dsos_a.dsosa2gim, metadata_mapping(dsos_a.dsosa2gi_metadata) AS dsosa2gi_metadata, dsos_a.dsosa2gi_metadata_comment, dsos_a.dsosa2gfh, dsos_a.dsosa2gfm, metadata_mapping(dsos_a.dsosa2gf_metadata) AS dsosa2gf_metadata, dsos_a.dsosa2gf_metadata_comment, dsos_a.dsosa2hih, dsos_a.dsosa2him, metadata_mapping(dsos_a.dsosa2hi_metadata) AS dsosa2hi_metadata, dsos_a.dsosa2hi_metadata_comment, dsos_a.dsosa2hfh, dsos_a.dsosa2hfm, metadata_mapping(dsos_a.dsosa2hf_metadata) AS dsosa2hf_metadata, dsos_a.dsosa2hf_metadata_comment, dsos_a.dsosa2iih, dsos_a.dsosa2iim, metadata_mapping(dsos_a.dsosa2ii_metadata) AS dsosa2ii_metadata, dsos_a.dsosa2ii_metadata_comment, dsos_a.dsosa2ifh, dsos_a.dsosa2ifm, metadata_mapping(dsos_a.dsosa2if_metadata) AS dsosa2if_metadata, dsos_a.dsosa2if_metadata_comment, dsos_a.dsosa2jih, dsos_a.dsosa2jim, metadata_mapping(dsos_a.dsosa2ji_metadata) AS dsosa2ji_metadata, dsos_a.dsosa2ji_metadata_comment, dsos_a.dsosa2jfh, dsos_a.dsosa2jfm, metadata_mapping(dsos_a.dsosa2jf_metadata) AS dsosa2jf_metadata, dsos_a.dsosa2jf_metadata_comment, dsos_a.dsosa2kih, dsos_a.dsosa2kim, metadata_mapping(dsos_a.dsosa2ki_metadata) AS dsosa2ki_metadata, dsos_a.dsosa2ki_metadata_comment, dsos_a.dsosa2kfh, dsos_a.dsosa2kfm, metadata_mapping(dsos_a.dsosa2kf_metadata) AS dsosa2kf_metadata, dsos_a.dsosa2kf_metadata_comment, dsos_a.dsosa2lh, dsos_a.dsosa2lm, metadata_mapping(dsos_a.dsosa2l_metadata) AS dsosa2l_metadata, dsos_a.dsosa2l_metadata_comment, dsos_a.dsosa3, metadata_mapping(dsos_a.dsosa3_metadata) AS dsosa3_metadata, dsos_a.dsosa3_metadata_comment, dsos_a.dsosa3ah, dsos_a.dsosa3am, metadata_mapping(dsos_a.dsosa3a_metadata) AS dsosa3a_metadata, dsos_a.dsosa3a_metadata_comment, noyesuppercase_mapping(dsos_a.dsosa3b) AS dsosa3b, metadata_mapping(dsos_a.dsosa3b_metadata) AS dsosa3b_metadata, dsos_a.dsosa3b_metadata_comment, dsos_a.dsosa3c, metadata_mapping(dsos_a.dsosa3c_metadata) AS dsosa3c_metadata, dsos_a.dsosa3c_metadata_comment, dsos_a.dsosa3dih, dsos_a.dsosa3dim, metadata_mapping(dsos_a.dsosa3di_metadata) AS dsosa3di_metadata, dsos_a.dsosa3di_metadata_comment, dsos_a.dsosa3dfh, dsos_a.dsosa3dfm, metadata_mapping(dsos_a.dsosa3df_metadata) AS dsosa3df_metadata, dsos_a.dsosa3df_metadata_comment, dsos_a.dsosa3eih, dsos_a.dsosa3eim, metadata_mapping(dsos_a.dsosa3ei_metadata) AS dsosa3ei_metadata, dsos_a.dsosa3ei_metadata_comment, dsos_a.dsosa3efh, dsos_a.dsosa3efm, metadata_mapping(dsos_a.dsosa3ef_metadata) AS dsosa3ef_metadata, dsos_a.dsosa3ef_metadata_comment, dsos_a.dsosa3fih, dsos_a.dsosa3fim, metadata_mapping(dsos_a.dsosa3fi_metadata) AS dsosa3fi_metadata, dsos_a.dsosa3fi_metadata_comment, dsos_a.dsosa3ffh, dsos_a.dsosa3ffm, metadata_mapping(dsos_a.dsosa3ff_metadata) AS dsosa3ff_metadata, dsos_a.dsosa3ff_metadata_comment, dsos_a.dsosa3gih, dsos_a.dsosa3gim, metadata_mapping(dsos_a.dsosa3gi_metadata) AS dsosa3gi_metadata, dsos_a.dsosa3gi_metadata_comment, dsos_a.dsosa3gfh, dsos_a.dsosa3gfm, metadata_mapping(dsos_a.dsosa3gf_metadata) AS dsosa3gf_metadata, dsos_a.dsosa3gf_metadata_comment, dsos_a.dsosa3hih, dsos_a.dsosa3him, metadata_mapping(dsos_a.dsosa3hi_metadata) AS dsosa3hi_metadata, dsos_a.dsosa3hi_metadata_comment, dsos_a.dsosa3hfh, dsos_a.dsosa3hfm, metadata_mapping(dsos_a.dsosa3hf_metadata) AS dsosa3hf_metadata, dsos_a.dsosa3hf_metadata_comment, dsos_a.dsosa3iih, dsos_a.dsosa3iim, metadata_mapping(dsos_a.dsosa3ii_metadata) AS dsosa3ii_metadata, dsos_a.dsosa3ii_metadata_comment, dsos_a.dsosa3ifh, dsos_a.dsosa3ifm, metadata_mapping(dsos_a.dsosa3if_metadata) AS dsosa3if_metadata, dsos_a.dsosa3if_metadata_comment, dsos_a.dsosa3jih, dsos_a.dsosa3jim, metadata_mapping(dsos_a.dsosa3ji_metadata) AS dsosa3ji_metadata, dsos_a.dsosa3ji_metadata_comment, dsos_a.dsosa3jfh, dsos_a.dsosa3jfm, metadata_mapping(dsos_a.dsosa3jf_metadata) AS dsosa3jf_metadata, dsos_a.dsosa3jf_metadata_comment, dsos_a.dsosa3kih, dsos_a.dsosa3kim, metadata_mapping(dsos_a.dsosa3ki_metadata) AS dsosa3ki_metadata, dsos_a.dsosa3ki_metadata_comment, dsos_a.dsosa3kfh, dsos_a.dsosa3kfm, metadata_mapping(dsos_a.dsosa3kf_metadata) AS dsosa3kf_metadata, dsos_a.dsosa3kf_metadata_comment, dsos_a.dsosa3lh, dsos_a.dsosa3lm, metadata_mapping(dsos_a.dsosa3l_metadata) AS dsosa3l_metadata, dsos_a.dsosa3l_metadata_comment, dsos_a.dsosa4, metadata_mapping(dsos_a.dsosa4_metadata) AS dsosa4_metadata, dsos_a.dsosa4_metadata_comment, dsos_a.dsosa4ah, dsos_a.dsosa4am, metadata_mapping(dsos_a.dsosa4a_metadata) AS dsosa4a_metadata, dsos_a.dsosa4a_metadata_comment, noyesuppercase_mapping(dsos_a.dsosa4b) AS dsosa4b, metadata_mapping(dsos_a.dsosa4b_metadata) AS dsosa4b_metadata, dsos_a.dsosa4b_metadata_comment, dsos_a.dsosa4c, metadata_mapping(dsos_a.dsosa4c_metadata) AS dsosa4c_metadata, dsos_a.dsosa4c_metadata_comment, dsos_a.dsosa4dih, dsos_a.dsosa4dim, metadata_mapping(dsos_a.dsosa4di_metadata) AS dsosa4di_metadata, dsos_a.dsosa4di_metadata_comment, dsos_a.dsosa4dfh, dsos_a.dsosa4dfm, metadata_mapping(dsos_a.dsosa4df_metadata) AS dsosa4df_metadata, dsos_a.dsosa4df_metadata_comment, dsos_a.dsosa4eih, dsos_a.dsosa4eim, metadata_mapping(dsos_a.dsosa4ei_metadata) AS dsosa4ei_metadata, dsos_a.dsosa4ei_metadata_comment, dsos_a.dsosa4efh, dsos_a.dsosa4efm, metadata_mapping(dsos_a.dsosa4ef_metadata) AS dsosa4ef_metadata, dsos_a.dsosa4ef_metadata_comment, dsos_a.dsosa4fih, dsos_a.dsosa4fim, metadata_mapping(dsos_a.dsosa4fi_metadata) AS dsosa4fi_metadata, dsos_a.dsosa4fi_metadata_comment, dsos_a.dsosa4ffh, dsos_a.dsosa4ffm, metadata_mapping(dsos_a.dsosa4ff_metadata) AS dsosa4ff_metadata, dsos_a.dsosa4ff_metadata_comment, dsos_a.dsosa4gih, dsos_a.dsosa4gim, metadata_mapping(dsos_a.dsosa4gi_metadata) AS dsosa4gi_metadata, dsos_a.dsosa4gi_metadata_comment, dsos_a.dsosa4gfh, dsos_a.dsosa4gfm, metadata_mapping(dsos_a.dsosa4gf_metadata) AS dsosa4gf_metadata, dsos_a.dsosa4gf_metadata_comment, dsos_a.dsosa4hih, dsos_a.dsosa4him, metadata_mapping(dsos_a.dsosa4hi_metadata) AS dsosa4hi_metadata, dsos_a.dsosa4hi_metadata_comment, dsos_a.dsosa4hfh, dsos_a.dsosa4hfm, metadata_mapping(dsos_a.dsosa4hf_metadata) AS dsosa4hf_metadata, dsos_a.dsosa4hf_metadata_comment, dsos_a.dsosa4iih, dsos_a.dsosa4iim, metadata_mapping(dsos_a.dsosa4ii_metadata) AS dsosa4ii_metadata, dsos_a.dsosa4ii_metadata_comment, dsos_a.dsosa4ifh, dsos_a.dsosa4ifm, metadata_mapping(dsos_a.dsosa4if_metadata) AS dsosa4if_metadata, dsos_a.dsosa4if_metadata_comment, dsos_a.dsosa4jih, dsos_a.dsosa4jim, metadata_mapping(dsos_a.dsosa4ji_metadata) AS dsosa4ji_metadata, dsos_a.dsosa4ji_metadata_comment, dsos_a.dsosa4jfh, dsos_a.dsosa4jfm, metadata_mapping(dsos_a.dsosa4jf_metadata) AS dsosa4jf_metadata, dsos_a.dsosa4jf_metadata_comment, dsos_a.dsosa4kih, dsos_a.dsosa4kim, metadata_mapping(dsos_a.dsosa4ki_metadata) AS dsosa4ki_metadata, dsos_a.dsosa4ki_metadata_comment, dsos_a.dsosa4kfh, dsos_a.dsosa4kfm, metadata_mapping(dsos_a.dsosa4kf_metadata) AS dsosa4kf_metadata, dsos_a.dsosa4kf_metadata_comment, dsos_a.dsosa4lh, dsos_a.dsosa4lm, metadata_mapping(dsos_a.dsosa4l_metadata) AS dsosa4l_metadata, dsos_a.dsosa4l_metadata_comment, dsos_a.dsosa5, metadata_mapping(dsos_a.dsosa5_metadata) AS dsosa5_metadata, dsos_a.dsosa5_metadata_comment, dsos_a.dsosa5ah, dsos_a.dsosa5am, metadata_mapping(dsos_a.dsosa5a_metadata) AS dsosa5a_metadata, dsos_a.dsosa5a_metadata_comment, noyesuppercase_mapping(dsos_a.dsosa5b) AS dsosa5b, metadata_mapping(dsos_a.dsosa5b_metadata) AS dsosa5b_metadata, dsos_a.dsosa5b_metadata_comment, dsos_a.dsosa5c, metadata_mapping(dsos_a.dsosa5c_metadata) AS dsosa5c_metadata, dsos_a.dsosa5c_metadata_comment, dsos_a.dsosa5dih, dsos_a.dsosa5dim, metadata_mapping(dsos_a.dsosa5di_metadata) AS dsosa5di_metadata, dsos_a.dsosa5di_metadata_comment, dsos_a.dsosa5dfh, dsos_a.dsosa5dfm, metadata_mapping(dsos_a.dsosa5df_metadata) AS dsosa5df_metadata, dsos_a.dsosa5df_metadata_comment, dsos_a.dsosa5eih, dsos_a.dsosa5eim, metadata_mapping(dsos_a.dsosa5ei_metadata) AS dsosa5ei_metadata, dsos_a.dsosa5ei_metadata_comment, dsos_a.dsosa5efh, dsos_a.dsosa5efm, metadata_mapping(dsos_a.dsosa5ef_metadata) AS dsosa5ef_metadata, dsos_a.dsosa5ef_metadata_comment, dsos_a.dsosa5fih, dsos_a.dsosa5fim, metadata_mapping(dsos_a.dsosa5fi_metadata) AS dsosa5fi_metadata, dsos_a.dsosa5fi_metadata_comment, dsos_a.dsosa5ffh, dsos_a.dsosa5ffm, metadata_mapping(dsos_a.dsosa5ff_metadata) AS dsosa5ff_metadata, dsos_a.dsosa5ff_metadata_comment, dsos_a.dsosa5gih, dsos_a.dsosa5gim, metadata_mapping(dsos_a.dsosa5gi_metadata) AS dsosa5gi_metadata, dsos_a.dsosa5gi_metadata_comment, dsos_a.dsosa5gfh, dsos_a.dsosa5gfm, metadata_mapping(dsos_a.dsosa5gf_metadata) AS dsosa5gf_metadata, dsos_a.dsosa5gf_metadata_comment, dsos_a.dsosa5hih, dsos_a.dsosa5him, metadata_mapping(dsos_a.dsosa5hi_metadata) AS dsosa5hi_metadata, dsos_a.dsosa5hi_metadata_comment, dsos_a.dsosa5hfh, dsos_a.dsosa5hfm, metadata_mapping(dsos_a.dsosa5hf_metadata) AS dsosa5hf_metadata, dsos_a.dsosa5hf_metadata_comment, dsos_a.dsosa5iih, dsos_a.dsosa5iim, metadata_mapping(dsos_a.dsosa5ii_metadata) AS dsosa5ii_metadata, dsos_a.dsosa5ii_metadata_comment, dsos_a.dsosa5ifh, dsos_a.dsosa5ifm, metadata_mapping(dsos_a.dsosa5if_metadata) AS dsosa5if_metadata, dsos_a.dsosa5if_metadata_comment, dsos_a.dsosa5jih, dsos_a.dsosa5jim, metadata_mapping(dsos_a.dsosa5ji_metadata) AS dsosa5ji_metadata, dsos_a.dsosa5ji_metadata_comment, dsos_a.dsosa5jfh, dsos_a.dsosa5jfm, metadata_mapping(dsos_a.dsosa5jf_metadata) AS dsosa5jf_metadata, dsos_a.dsosa5jf_metadata_comment, dsos_a.dsosa5kih, dsos_a.dsosa5kim, metadata_mapping(dsos_a.dsosa5ki_metadata) AS dsosa5ki_metadata, dsos_a.dsosa5ki_metadata_comment, dsos_a.dsosa5kfh, dsos_a.dsosa5kfm, metadata_mapping(dsos_a.dsosa5kf_metadata) AS dsosa5kf_metadata, dsos_a.dsosa5kf_metadata_comment, dsos_a.dsosa5lh, dsos_a.dsosa5lm, metadata_mapping(dsos_a.dsosa5l_metadata) AS dsosa5l_metadata, dsos_a.dsosa5l_metadata_comment, dsos_a.dsosa6, metadata_mapping(dsos_a.dsosa6_metadata) AS dsosa6_metadata, dsos_a.dsosa6_metadata_comment, dsos_a.dsosa6ah, dsos_a.dsosa6am, metadata_mapping(dsos_a.dsosa6a_metadata) AS dsosa6a_metadata, dsos_a.dsosa6a_metadata_comment, noyesuppercase_mapping(dsos_a.dsosa6b) AS dsosa6b, metadata_mapping(dsos_a.dsosa6b_metadata) AS dsosa6b_metadata, dsos_a.dsosa6b_metadata_comment, dsos_a.dsosa6c, metadata_mapping(dsos_a.dsosa6c_metadata) AS dsosa6c_metadata, dsos_a.dsosa6c_metadata_comment, dsos_a.dsosa6dih, dsos_a.dsosa6dim, metadata_mapping(dsos_a.dsosa6di_metadata) AS dsosa6di_metadata, dsos_a.dsosa6di_metadata_comment, dsos_a.dsosa6dfh, dsos_a.dsosa6dfm, metadata_mapping(dsos_a.dsosa6df_metadata) AS dsosa6df_metadata, dsos_a.dsosa6df_metadata_comment, dsos_a.dsosa6eih, dsos_a.dsosa6eim, metadata_mapping(dsos_a.dsosa6ei_metadata) AS dsosa6ei_metadata, dsos_a.dsosa6ei_metadata_comment, dsos_a.dsosa6efh, dsos_a.dsosa6efm, metadata_mapping(dsos_a.dsosa6ef_metadata) AS dsosa6ef_metadata, dsos_a.dsosa6ef_metadata_comment, dsos_a.dsosa6fih, dsos_a.dsosa6fim, metadata_mapping(dsos_a.dsosa6fi_metadata) AS dsosa6fi_metadata, dsos_a.dsosa6fi_metadata_comment, dsos_a.dsosa6ffh, dsos_a.dsosa6ffm, metadata_mapping(dsos_a.dsosa6ff_metadata) AS dsosa6ff_metadata, dsos_a.dsosa6ff_metadata_comment, dsos_a.dsosa6gih, dsos_a.dsosa6gim, metadata_mapping(dsos_a.dsosa6gi_metadata) AS dsosa6gi_metadata, dsos_a.dsosa6gi_metadata_comment, dsos_a.dsosa6gfh, dsos_a.dsosa6gfm, metadata_mapping(dsos_a.dsosa6gf_metadata) AS dsosa6gf_metadata, dsos_a.dsosa6gf_metadata_comment, dsos_a.dsosa6hih, dsos_a.dsosa6him, metadata_mapping(dsos_a.dsosa6hi_metadata) AS dsosa6hi_metadata, dsos_a.dsosa6hi_metadata_comment, dsos_a.dsosa6hfh, dsos_a.dsosa6hfm, metadata_mapping(dsos_a.dsosa6hf_metadata) AS dsosa6hf_metadata, dsos_a.dsosa6hf_metadata_comment, dsos_a.dsosa6iih, dsos_a.dsosa6iim, metadata_mapping(dsos_a.dsosa6ii_metadata) AS dsosa6ii_metadata, dsos_a.dsosa6ii_metadata_comment, dsos_a.dsosa6ifh, dsos_a.dsosa6ifm, metadata_mapping(dsos_a.dsosa6if_metadata) AS dsosa6if_metadata, dsos_a.dsosa6if_metadata_comment, dsos_a.dsosa6jih, dsos_a.dsosa6jim, metadata_mapping(dsos_a.dsosa6ji_metadata) AS dsosa6ji_metadata, dsos_a.dsosa6ji_metadata_comment, dsos_a.dsosa6jfh, dsos_a.dsosa6jfm, metadata_mapping(dsos_a.dsosa6jf_metadata) AS dsosa6jf_metadata, dsos_a.dsosa6jf_metadata_comment, dsos_a.dsosa6kih, dsos_a.dsosa6kim, metadata_mapping(dsos_a.dsosa6ki_metadata) AS dsosa6ki_metadata, dsos_a.dsosa6ki_metadata_comment, dsos_a.dsosa6kfh, dsos_a.dsosa6kfm, metadata_mapping(dsos_a.dsosa6kf_metadata) AS dsosa6kf_metadata, dsos_a.dsosa6kf_metadata_comment, dsos_a.dsosa6lh, dsos_a.dsosa6lm, metadata_mapping(dsos_a.dsosa6l_metadata) AS dsosa6l_metadata, dsos_a.dsosa6l_metadata_comment, dsos_a.dsosa7, metadata_mapping(dsos_a.dsosa7_metadata) AS dsosa7_metadata, dsos_a.dsosa7_metadata_comment, dsos_a.dsosa7ah, dsos_a.dsosa7am, metadata_mapping(dsos_a.dsosa7a_metadata) AS dsosa7a_metadata, dsos_a.dsosa7a_metadata_comment, noyesuppercase_mapping(dsos_a.dsosa7b) AS dsosa7b, metadata_mapping(dsos_a.dsosa7b_metadata) AS dsosa7b_metadata, dsos_a.dsosa7b_metadata_comment, dsos_a.dsosa7c, metadata_mapping(dsos_a.dsosa7c_metadata) AS dsosa7c_metadata, dsos_a.dsosa7c_metadata_comment, dsos_a.dsosa7dih, dsos_a.dsosa7dim, metadata_mapping(dsos_a.dsosa7di_metadata) AS dsosa7di_metadata, dsos_a.dsosa7di_metadata_comment, dsos_a.dsosa7dfh, dsos_a.dsosa7dfm, metadata_mapping(dsos_a.dsosa7df_metadata) AS dsosa7df_metadata, dsos_a.dsosa7df_metadata_comment, dsos_a.dsosa7eih, dsos_a.dsosa7eim, metadata_mapping(dsos_a.dsosa7ei_metadata) AS dsosa7ei_metadata, dsos_a.dsosa7ei_metadata_comment, dsos_a.dsosa7efh, dsos_a.dsosa7efm, metadata_mapping(dsos_a.dsosa7ef_metadata) AS dsosa7ef_metadata, dsos_a.dsosa7ef_metadata_comment, dsos_a.dsosa7fih, dsos_a.dsosa7fim, metadata_mapping(dsos_a.dsosa7fi_metadata) AS dsosa7fi_metadata, dsos_a.dsosa7fi_metadata_comment, dsos_a.dsosa7ffh, dsos_a.dsosa7ffm, metadata_mapping(dsos_a.dsosa7ff_metadata) AS dsosa7ff_metadata, dsos_a.dsosa7ff_metadata_comment, dsos_a.dsosa7gih, dsos_a.dsosa7gim, metadata_mapping(dsos_a.dsosa7gi_metadata) AS dsosa7gi_metadata, dsos_a.dsosa7gi_metadata_comment, dsos_a.dsosa7gfh, dsos_a.dsosa7gfm, metadata_mapping(dsos_a.dsosa7gf_metadata) AS dsosa7gf_metadata, dsos_a.dsosa7gf_metadata_comment, dsos_a.dsosa7hih, dsos_a.dsosa7him, metadata_mapping(dsos_a.dsosa7hi_metadata) AS dsosa7hi_metadata, dsos_a.dsosa7hi_metadata_comment, dsos_a.dsosa7hfh, dsos_a.dsosa7hfm, metadata_mapping(dsos_a.dsosa7hf_metadata) AS dsosa7hf_metadata, dsos_a.dsosa7hf_metadata_comment, dsos_a.dsosa7iih, dsos_a.dsosa7iim, metadata_mapping(dsos_a.dsosa7ii_metadata) AS dsosa7ii_metadata, dsos_a.dsosa7ii_metadata_comment, dsos_a.dsosa7ifh, dsos_a.dsosa7ifm, metadata_mapping(dsos_a.dsosa7if_metadata) AS dsosa7if_metadata, dsos_a.dsosa7if_metadata_comment, dsos_a.dsosa7jih, dsos_a.dsosa7jim, metadata_mapping(dsos_a.dsosa7ji_metadata) AS dsosa7ji_metadata, dsos_a.dsosa7ji_metadata_comment, dsos_a.dsosa7jfh, dsos_a.dsosa7jfm, metadata_mapping(dsos_a.dsosa7jf_metadata) AS dsosa7jf_metadata, dsos_a.dsosa7jf_metadata_comment, dsos_a.dsosa7kih, dsos_a.dsosa7kim, metadata_mapping(dsos_a.dsosa7ki_metadata) AS dsosa7ki_metadata, dsos_a.dsosa7ki_metadata_comment, dsos_a.dsosa7kfh, dsos_a.dsosa7kfm, metadata_mapping(dsos_a.dsosa7kf_metadata) AS dsosa7kf_metadata, dsos_a.dsosa7kf_metadata_comment, dsos_a.dsosa7lh, dsos_a.dsosa7lm, metadata_mapping(dsos_a.dsosa7l_metadata) AS dsosa7l_metadata, dsos_a.dsosa7l_metadata_comment, dsos_a.dsosa8, metadata_mapping(dsos_a.dsosa8_metadata) AS dsosa8_metadata, dsos_a.dsosa8_metadata_comment, dsos_a.dsosa8ah, dsos_a.dsosa8am, metadata_mapping(dsos_a.dsosa8a_metadata) AS dsosa8a_metadata, dsos_a.dsosa8a_metadata_comment, noyesuppercase_mapping(dsos_a.dsosa8b) AS dsosa8b, metadata_mapping(dsos_a.dsosa8b_metadata) AS dsosa8b_metadata, dsos_a.dsosa8b_metadata_comment, dsos_a.dsosa8c, metadata_mapping(dsos_a.dsosa8c_metadata) AS dsosa8c_metadata, dsos_a.dsosa8c_metadata_comment, dsos_a.dsosa8dih, dsos_a.dsosa8dim, metadata_mapping(dsos_a.dsosa8di_metadata) AS dsosa8di_metadata, dsos_a.dsosa8di_metadata_comment, dsos_a.dsosa8dfh, dsos_a.dsosa8dfm, metadata_mapping(dsos_a.dsosa8df_metadata) AS dsosa8df_metadata, dsos_a.dsosa8df_metadata_comment, dsos_a.dsosa8eih, dsos_a.dsosa8eim, metadata_mapping(dsos_a.dsosa8ei_metadata) AS dsosa8ei_metadata, dsos_a.dsosa8ei_metadata_comment, dsos_a.dsosa8efh, dsos_a.dsosa8efm, metadata_mapping(dsos_a.dsosa8ef_metadata) AS dsosa8ef_metadata, dsos_a.dsosa8ef_metadata_comment, dsos_a.dsosa8fih, dsos_a.dsosa8fim, metadata_mapping(dsos_a.dsosa8fi_metadata) AS dsosa8fi_metadata, dsos_a.dsosa8fi_metadata_comment, dsos_a.dsosa8ffh, dsos_a.dsosa8ffm, metadata_mapping(dsos_a.dsosa8ff_metadata) AS dsosa8ff_metadata, dsos_a.dsosa8ff_metadata_comment, dsos_a.dsosa8gih, dsos_a.dsosa8gim, metadata_mapping(dsos_a.dsosa8gi_metadata) AS dsosa8gi_metadata, dsos_a.dsosa8gi_metadata_comment, dsos_a.dsosa8gfh, dsos_a.dsosa8gfm, metadata_mapping(dsos_a.dsosa8gf_metadata) AS dsosa8gf_metadata, dsos_a.dsosa8gf_metadata_comment, dsos_a.dsosa8hih, dsos_a.dsosa8him, metadata_mapping(dsos_a.dsosa8hi_metadata) AS dsosa8hi_metadata, dsos_a.dsosa8hi_metadata_comment, dsos_a.dsosa8hfh, dsos_a.dsosa8hfm, metadata_mapping(dsos_a.dsosa8hf_metadata) AS dsosa8hf_metadata, dsos_a.dsosa8hf_metadata_comment, dsos_a.dsosa8iih, dsos_a.dsosa8iim, metadata_mapping(dsos_a.dsosa8ii_metadata) AS dsosa8ii_metadata, dsos_a.dsosa8ii_metadata_comment, dsos_a.dsosa8ifh, dsos_a.dsosa8ifm, metadata_mapping(dsos_a.dsosa8if_metadata) AS dsosa8if_metadata, dsos_a.dsosa8if_metadata_comment, dsos_a.dsosa8jih, dsos_a.dsosa8jim, metadata_mapping(dsos_a.dsosa8ji_metadata) AS dsosa8ji_metadata, dsos_a.dsosa8ji_metadata_comment, dsos_a.dsosa8jfh, dsos_a.dsosa8jfm, metadata_mapping(dsos_a.dsosa8jf_metadata) AS dsosa8jf_metadata, dsos_a.dsosa8jf_metadata_comment, dsos_a.dsosa8kih, dsos_a.dsosa8kim, metadata_mapping(dsos_a.dsosa8ki_metadata) AS dsosa8ki_metadata, dsos_a.dsosa8ki_metadata_comment, dsos_a.dsosa8kfh, dsos_a.dsosa8kfm, metadata_mapping(dsos_a.dsosa8kf_metadata) AS dsosa8kf_metadata, dsos_a.dsosa8kf_metadata_comment, dsos_a.dsosa8lh, dsos_a.dsosa8lm, metadata_mapping(dsos_a.dsosa8l_metadata) AS dsosa8l_metadata, dsos_a.dsosa8l_metadata_comment, dsos_a.dsosa9, metadata_mapping(dsos_a.dsosa9_metadata) AS dsosa9_metadata, dsos_a.dsosa9_metadata_comment, dsos_a.dsosa9ah, dsos_a.dsosa9am, metadata_mapping(dsos_a.dsosa9a_metadata) AS dsosa9a_metadata, dsos_a.dsosa9a_metadata_comment, noyesuppercase_mapping(dsos_a.dsosa9b) AS dsosa9b, metadata_mapping(dsos_a.dsosa9b_metadata) AS dsosa9b_metadata, dsos_a.dsosa9b_metadata_comment, dsos_a.dsosa9c, metadata_mapping(dsos_a.dsosa9c_metadata) AS dsosa9c_metadata, dsos_a.dsosa9c_metadata_comment, dsos_a.dsosa9dih, dsos_a.dsosa9dim, metadata_mapping(dsos_a.dsosa9di_metadata) AS dsosa9di_metadata, dsos_a.dsosa9di_metadata_comment, dsos_a.dsosa9dfh, dsos_a.dsosa9dfm, metadata_mapping(dsos_a.dsosa9df_metadata) AS dsosa9df_metadata, dsos_a.dsosa9df_metadata_comment, dsos_a.dsosa9eih, dsos_a.dsosa9eim, metadata_mapping(dsos_a.dsosa9ei_metadata) AS dsosa9ei_metadata, dsos_a.dsosa9ei_metadata_comment, dsos_a.dsosa9efh, dsos_a.dsosa9efm, metadata_mapping(dsos_a.dsosa9ef_metadata) AS dsosa9ef_metadata, dsos_a.dsosa9ef_metadata_comment, dsos_a.dsosa9fih, dsos_a.dsosa9fim, metadata_mapping(dsos_a.dsosa9fi_metadata) AS dsosa9fi_metadata, dsos_a.dsosa9fi_metadata_comment, dsos_a.dsosa9ffh, dsos_a.dsosa9ffm, metadata_mapping(dsos_a.dsosa9ff_metadata) AS dsosa9ff_metadata, dsos_a.dsosa9ff_metadata_comment, dsos_a.dsosa9gih, dsos_a.dsosa9gim, metadata_mapping(dsos_a.dsosa9gi_metadata) AS dsosa9gi_metadata, dsos_a.dsosa9gi_metadata_comment, dsos_a.dsosa9gfh, dsos_a.dsosa9gfm, metadata_mapping(dsos_a.dsosa9gf_metadata) AS dsosa9gf_metadata, dsos_a.dsosa9gf_metadata_comment, dsos_a.dsosa9hih, dsos_a.dsosa9him, metadata_mapping(dsos_a.dsosa9hi_metadata) AS dsosa9hi_metadata, dsos_a.dsosa9hi_metadata_comment, dsos_a.dsosa9hfh, dsos_a.dsosa9hfm, metadata_mapping(dsos_a.dsosa9hf_metadata) AS dsosa9hf_metadata, dsos_a.dsosa9hf_metadata_comment, dsos_a.dsosa9iih, dsos_a.dsosa9iim, metadata_mapping(dsos_a.dsosa9ii_metadata) AS dsosa9ii_metadata, dsos_a.dsosa9ii_metadata_comment, dsos_a.dsosa9ifh, dsos_a.dsosa9ifm, metadata_mapping(dsos_a.dsosa9if_metadata) AS dsosa9if_metadata, dsos_a.dsosa9if_metadata_comment, dsos_a.dsosa9jih, dsos_a.dsosa9jim, metadata_mapping(dsos_a.dsosa9ji_metadata) AS dsosa9ji_metadata, dsos_a.dsosa9ji_metadata_comment, dsos_a.dsosa9jfh, dsos_a.dsosa9jfm, metadata_mapping(dsos_a.dsosa9jf_metadata) AS dsosa9jf_metadata, dsos_a.dsosa9jf_metadata_comment, dsos_a.dsosa9kih, dsos_a.dsosa9kim, metadata_mapping(dsos_a.dsosa9ki_metadata) AS dsosa9ki_metadata, dsos_a.dsosa9ki_metadata_comment, dsos_a.dsosa9kfh, dsos_a.dsosa9kfm, metadata_mapping(dsos_a.dsosa9kf_metadata) AS dsosa9kf_metadata, dsos_a.dsosa9kf_metadata_comment, dsos_a.dsosa9lh, dsos_a.dsosa9lm, metadata_mapping(dsos_a.dsosa9l_metadata) AS dsosa9l_metadata, dsos_a.dsosa9l_metadata_comment, at.version AS versao_dsos FROM ((((((coorte.dsos_a dsos_a JOIN public.activity a ON ((a.id = dsos_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_dsos_a OWNER TO postgres;

--
-- Name: v_edg_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_edg_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS edgadataapini, a.finalization_date AS edgadataapfim, o.date AS edgadataoffline, u.code AS edgaaferidor, ou.code AS edgadigitador, moodstate_mapping(edg_a.edga1) AS edga1, metadata_mapping(edg_a.edga1_metadata) AS edga1_metadata, edg_a.edga1_metadata_comment, futurehappiness_mapping(edg_a.edga2) AS edga2, metadata_mapping(edg_a.edga2_metadata) AS edga2_metadata, edg_a.edga2_metadata_comment, guiltwithoutreason_mapping(edg_a.edga3) AS edga3, metadata_mapping(edg_a.edga3_metadata) AS edga3_metadata, edg_a.edga3_metadata_comment, withanxiety_mapping(edg_a.edga4) AS edga4, metadata_mapping(edg_a.edga4_metadata) AS edga4_metadata, edg_a.edga4_metadata_comment, frightenedorpanic_mapping(edg_a.edga5) AS edga5, metadata_mapping(edg_a.edga5_metadata) AS edga5_metadata, edg_a.edga5_metadata_comment, overloadedwithtasks_mapping(edg_a.edga6) AS edga6, metadata_mapping(edg_a.edga6_metadata) AS edga6_metadata, edg_a.edga6_metadata_comment, unhappinessdifficultysleeping_mapping(edg_a.edga7) AS edga7, metadata_mapping(edg_a.edga7_metadata) AS edga7_metadata, edg_a.edga7_metadata_comment, verysad_mapping(edg_a.edga8) AS edga8, metadata_mapping(edg_a.edga8_metadata) AS edga8_metadata, edg_a.edga8_metadata_comment, tearsofsorrow_mapping(edg_a.edga9) AS edga9, metadata_mapping(edg_a.edga9_metadata) AS edga9_metadata, edg_a.edga9_metadata_comment, againstme_mapping(edg_a.edga10) AS edga10, metadata_mapping(edg_a.edga10_metadata) AS edga10_metadata, edg_a.edga10_metadata_comment, at.version AS versao_edg FROM ((((((coorte.edg_a edg_a JOIN public.activity a ON ((a.id = edg_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_edg_a OWNER TO postgres;

--
-- Name: v_edgs_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_edgs_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS edgsadataapini, a.finalization_date AS edgsadataapfim, o.date AS edgsadataoffline, u.code AS edgsaaferidor, ou.code AS edgsadigitador, moodstate_mapping(edgs_a.edgsa1) AS edgsa1, metadata_mapping(edgs_a.edgsa1_metadata) AS edgsa1_metadata, edgs_a.edgsa1_metadata_comment, futurehappiness_mapping(edgs_a.edgsa2) AS edgsa2, metadata_mapping(edgs_a.edgsa2_metadata) AS edgsa2_metadata, edgs_a.edgsa2_metadata_comment, guiltwithoutreason_mapping(edgs_a.edgsa3) AS edgsa3, metadata_mapping(edgs_a.edgsa3_metadata) AS edgsa3_metadata, edgs_a.edgsa3_metadata_comment, withanxiety_mapping(edgs_a.edgsa4) AS edgsa4, metadata_mapping(edgs_a.edgsa4_metadata) AS edgsa4_metadata, edgs_a.edgsa4_metadata_comment, frightenedorpanic_mapping(edgs_a.edgsa5) AS edgsa5, metadata_mapping(edgs_a.edgsa5_metadata) AS edgsa5_metadata, edgs_a.edgsa5_metadata_comment, overloadedwithtasks_mapping(edgs_a.edgsa6) AS edgsa6, metadata_mapping(edgs_a.edgsa6_metadata) AS edgsa6_metadata, edgs_a.edgsa6_metadata_comment, unhappinessdifficultysleeping_mapping(edgs_a.edgsa7) AS edgsa7, metadata_mapping(edgs_a.edgsa7_metadata) AS edgsa7_metadata, edgs_a.edgsa7_metadata_comment, verysad_mapping(edgs_a.edgsa8) AS edgsa8, metadata_mapping(edgs_a.edgsa8_metadata) AS edgsa8_metadata, edgs_a.edgsa8_metadata_comment, tearsofsorrow_mapping(edgs_a.edgsa9) AS edgsa9, metadata_mapping(edgs_a.edgsa9_metadata) AS edgsa9_metadata, edgs_a.edgsa9_metadata_comment, againstme_mapping(edgs_a.edgsa10) AS edgsa10, metadata_mapping(edgs_a.edgsa10_metadata) AS edgsa10_metadata, edgs_a.edgsa10_metadata_comment, at.version AS versao_edgs FROM ((((((coorte.edgs_a edgs_a JOIN public.activity a ON ((a.id = edgs_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_edgs_a OWNER TO postgres;

--
-- Name: v_elc_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_elc_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS elcadataapini, a.finalization_date AS elcadataapfim, o.date AS elcadataoffline, u.code AS elcaaferidor, ou.code AS elcadigitador, noyesuppercase_mapping(elc_a.elca1) AS elca1, metadata_mapping(elc_a.elca1_metadata) AS elca1_metadata, elc_a.elca1_metadata_comment, elc_a.elca2, metadata_mapping(elc_a.elca2_metadata) AS elca2_metadata, elc_a.elca2_metadata_comment, noyesuppercase_mapping(elc_a.elca3) AS elca3, metadata_mapping(elc_a.elca3_metadata) AS elca3_metadata, elc_a.elca3_metadata_comment, noyesuppercase_mapping(elc_a.elca4) AS elca4, metadata_mapping(elc_a.elca4_metadata) AS elca4_metadata, elc_a.elca4_metadata_comment, noyesuppercase_mapping(elc_a.elca4a) AS elca4a, metadata_mapping(elc_a.elca4a_metadata) AS elca4a_metadata, elc_a.elca4a_metadata_comment, at.version AS versao_elc FROM ((((((coorte.elc_a elc_a JOIN public.activity a ON ((a.id = elc_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_elc_a OWNER TO postgres;

--
-- Name: v_enc_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_enc_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS encadataapini, a.finalization_date AS encadataapfim, o.date AS encadataoffline, u.code AS encaaferidor, ou.code AS encadigitador, enc_a.enca1, metadata_mapping(enc_a.enca1_metadata) AS enca1_metadata, enc_a.enca1_metadata_comment, enc_a.enca11, metadata_mapping(enc_a.enca11_metadata) AS enca11_metadata, enc_a.enca11_metadata_comment, enc_a.enca2a, metadata_mapping(enc_a.enca2a_metadata) AS enca2a_metadata, enc_a.enca2a_metadata_comment, enc_a.enca2b, metadata_mapping(enc_a.enca2b_metadata) AS enca2b_metadata, enc_a.enca2b_metadata_comment, at.version AS versao_enc FROM ((((((coorte.enc_a enc_a JOIN public.activity a ON ((a.id = enc_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_enc_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: exa_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE exa_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    exaa4a timestamp without time zone,
    exaa4a_metadata character varying(255),
    exaa4a_metadata_comment text,
    exaa1a timestamp without time zone,
    exaa1a_metadata character varying(255),
    exaa1a_metadata_comment text,
    exaa3a timestamp without time zone,
    exaa3a_metadata character varying(255),
    exaa3a_metadata_comment text,
    exaa5a timestamp without time zone,
    exaa5a_metadata character varying(255),
    exaa5a_metadata_comment text,
    exaa2a timestamp without time zone,
    exaa2a_metadata character varying(255),
    exaa2a_metadata_comment text,
    exaa4b text,
    exaa4b_metadata character varying(255),
    exaa4b_metadata_comment text,
    exaa1b text,
    exaa1b_metadata character varying(255),
    exaa1b_metadata_comment text,
    exaa3b text,
    exaa3b_metadata character varying(255),
    exaa3b_metadata_comment text,
    exaa5b text,
    exaa5b_metadata character varying(255),
    exaa5b_metadata_comment text,
    exaa2b text,
    exaa2b_metadata character varying(255),
    exaa2b_metadata_comment text,
    exaa4c integer,
    exaa4c_metadata character varying(255),
    exaa4c_metadata_comment text,
    exaa1c real,
    exaa1c_metadata character varying(255),
    exaa1c_metadata_comment text,
    exaa3c real,
    exaa3c_metadata character varying(255),
    exaa3c_metadata_comment text,
    exaa5c integer,
    exaa5c_metadata character varying(255),
    exaa5c_metadata_comment text,
    exaa2c real,
    exaa2c_metadata character varying(255),
    exaa2c_metadata_comment text,
    exaa4 boolean,
    exaa4_metadata character varying(255),
    exaa4_metadata_comment text,
    exaa1 boolean,
    exaa1_metadata character varying(255),
    exaa1_metadata_comment text,
    exaa3 boolean,
    exaa3_metadata character varying(255),
    exaa3_metadata_comment text,
    exaa5 boolean,
    exaa5_metadata character varying(255),
    exaa5_metadata_comment text,
    exaa2 boolean,
    exaa2_metadata character varying(255),
    exaa2_metadata_comment text
);


ALTER TABLE lab.exa_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_exa_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_exa_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS exaadataapini, a.finalization_date AS exaadataapfim, o.date AS exaadataoffline, u.code AS exaaaferidor, ou.code AS exaadigitador, exa_a.exaa1, metadata_mapping(exa_a.exaa1_metadata) AS exaa1_metadata, exa_a.exaa1_metadata_comment, exa_a.exaa1a, metadata_mapping(exa_a.exaa1a_metadata) AS exaa1a_metadata, exa_a.exaa1a_metadata_comment, exa_a.exaa1b, metadata_mapping(exa_a.exaa1b_metadata) AS exaa1b_metadata, exa_a.exaa1b_metadata_comment, exa_a.exaa1c, metadata_mapping(exa_a.exaa1c_metadata) AS exaa1c_metadata, exa_a.exaa1c_metadata_comment, exa_a.exaa2, metadata_mapping(exa_a.exaa2_metadata) AS exaa2_metadata, exa_a.exaa2_metadata_comment, exa_a.exaa2a, metadata_mapping(exa_a.exaa2a_metadata) AS exaa2a_metadata, exa_a.exaa2a_metadata_comment, exa_a.exaa2b, metadata_mapping(exa_a.exaa2b_metadata) AS exaa2b_metadata, exa_a.exaa2b_metadata_comment, exa_a.exaa2c, metadata_mapping(exa_a.exaa2c_metadata) AS exaa2c_metadata, exa_a.exaa2c_metadata_comment, exa_a.exaa3, metadata_mapping(exa_a.exaa3_metadata) AS exaa3_metadata, exa_a.exaa3_metadata_comment, exa_a.exaa3a, metadata_mapping(exa_a.exaa3a_metadata) AS exaa3a_metadata, exa_a.exaa3a_metadata_comment, exa_a.exaa3b, metadata_mapping(exa_a.exaa3b_metadata) AS exaa3b_metadata, exa_a.exaa3b_metadata_comment, exa_a.exaa3c, metadata_mapping(exa_a.exaa3c_metadata) AS exaa3c_metadata, exa_a.exaa3c_metadata_comment, exa_a.exaa4, metadata_mapping(exa_a.exaa4_metadata) AS exaa4_metadata, exa_a.exaa4_metadata_comment, exa_a.exaa4a, metadata_mapping(exa_a.exaa4a_metadata) AS exaa4a_metadata, exa_a.exaa4a_metadata_comment, exa_a.exaa4b, metadata_mapping(exa_a.exaa4b_metadata) AS exaa4b_metadata, exa_a.exaa4b_metadata_comment, exa_a.exaa4c, metadata_mapping(exa_a.exaa4c_metadata) AS exaa4c_metadata, exa_a.exaa4c_metadata_comment, exa_a.exaa5, metadata_mapping(exa_a.exaa5_metadata) AS exaa5_metadata, exa_a.exaa5_metadata_comment, exa_a.exaa5a, metadata_mapping(exa_a.exaa5a_metadata) AS exaa5a_metadata, exa_a.exaa5a_metadata_comment, exa_a.exaa5b, metadata_mapping(exa_a.exaa5b_metadata) AS exaa5b_metadata, exa_a.exaa5b_metadata_comment, exa_a.exaa5c, metadata_mapping(exa_a.exaa5c_metadata) AS exaa5c_metadata, exa_a.exaa5c_metadata_comment, at.version AS versao_exa FROM ((((((lab.exa_a exa_a JOIN public.activity a ON ((a.id = exa_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_exa_a OWNER TO postgres;

--
-- Name: v_exas_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_exas_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS exasadataapini, a.finalization_date AS exasadataapfim, o.date AS exasadataoffline, u.code AS exasaaferidor, ou.code AS exasadigitador, exas_a.exasa1, metadata_mapping(exas_a.exasa1_metadata) AS exasa1_metadata, exas_a.exasa1_metadata_comment, exas_a.exasa1a, metadata_mapping(exas_a.exasa1a_metadata) AS exasa1a_metadata, exas_a.exasa1a_metadata_comment, exas_a.exasa1b, metadata_mapping(exas_a.exasa1b_metadata) AS exasa1b_metadata, exas_a.exasa1b_metadata_comment, exas_a.exasa1c, metadata_mapping(exas_a.exasa1c_metadata) AS exasa1c_metadata, exas_a.exasa1c_metadata_comment, exas_a.exasa2, metadata_mapping(exas_a.exasa2_metadata) AS exasa2_metadata, exas_a.exasa2_metadata_comment, exas_a.exasa2a, metadata_mapping(exas_a.exasa2a_metadata) AS exasa2a_metadata, exas_a.exasa2a_metadata_comment, exas_a.exasa2b, metadata_mapping(exas_a.exasa2b_metadata) AS exasa2b_metadata, exas_a.exasa2b_metadata_comment, exas_a.exasa2c, metadata_mapping(exas_a.exasa2c_metadata) AS exasa2c_metadata, exas_a.exasa2c_metadata_comment, exas_a.exasa3, metadata_mapping(exas_a.exasa3_metadata) AS exasa3_metadata, exas_a.exasa3_metadata_comment, exas_a.exasa3a, metadata_mapping(exas_a.exasa3a_metadata) AS exasa3a_metadata, exas_a.exasa3a_metadata_comment, exas_a.exasa3b, metadata_mapping(exas_a.exasa3b_metadata) AS exasa3b_metadata, exas_a.exasa3b_metadata_comment, exas_a.exasa3c, metadata_mapping(exas_a.exasa3c_metadata) AS exasa3c_metadata, exas_a.exasa3c_metadata_comment, exas_a.exasa4, metadata_mapping(exas_a.exasa4_metadata) AS exasa4_metadata, exas_a.exasa4_metadata_comment, exas_a.exasa4a, metadata_mapping(exas_a.exasa4a_metadata) AS exasa4a_metadata, exas_a.exasa4a_metadata_comment, exas_a.exasa4b, metadata_mapping(exas_a.exasa4b_metadata) AS exasa4b_metadata, exas_a.exasa4b_metadata_comment, exas_a.exasa4c, metadata_mapping(exas_a.exasa4c_metadata) AS exasa4c_metadata, exas_a.exasa4c_metadata_comment, exas_a.exasa5, metadata_mapping(exas_a.exasa5_metadata) AS exasa5_metadata, exas_a.exasa5_metadata_comment, exas_a.exasa5a, metadata_mapping(exas_a.exasa5a_metadata) AS exasa5a_metadata, exas_a.exasa5a_metadata_comment, exas_a.exasa5b, metadata_mapping(exas_a.exasa5b_metadata) AS exasa5b_metadata, exas_a.exasa5b_metadata_comment, exas_a.exasa5c, metadata_mapping(exas_a.exasa5c_metadata) AS exasa5c_metadata, exas_a.exasa5c_metadata_comment, at.version AS versao_exas FROM ((((((coorte.exas_a exas_a JOIN public.activity a ON ((a.id = exas_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_exas_a OWNER TO postgres;

--
-- Name: v_exp_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_exp_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS expadataapini, a.finalization_date AS expadataapfim, o.date AS expadataoffline, u.code AS expaaferidor, ou.code AS expadigitador, exp_a.expa1, metadata_mapping(exp_a.expa1_metadata) AS expa1_metadata, exp_a.expa1_metadata_comment, exp_a.expa1a, metadata_mapping(exp_a.expa1a_metadata) AS expa1a_metadata, exp_a.expa1a_metadata_comment, exp_a.expa1b, metadata_mapping(exp_a.expa1b_metadata) AS expa1b_metadata, exp_a.expa1b_metadata_comment, exp_a.expa1c, metadata_mapping(exp_a.expa1c_metadata) AS expa1c_metadata, exp_a.expa1c_metadata_comment, exp_a.expa2, metadata_mapping(exp_a.expa2_metadata) AS expa2_metadata, exp_a.expa2_metadata_comment, exp_a.expa2a, metadata_mapping(exp_a.expa2a_metadata) AS expa2a_metadata, exp_a.expa2a_metadata_comment, exp_a.expa2b, metadata_mapping(exp_a.expa2b_metadata) AS expa2b_metadata, exp_a.expa2b_metadata_comment, exp_a.expa2c, metadata_mapping(exp_a.expa2c_metadata) AS expa2c_metadata, exp_a.expa2c_metadata_comment, exp_a.expa3, metadata_mapping(exp_a.expa3_metadata) AS expa3_metadata, exp_a.expa3_metadata_comment, exp_a.expa3a, metadata_mapping(exp_a.expa3a_metadata) AS expa3a_metadata, exp_a.expa3a_metadata_comment, exp_a.expa3b, metadata_mapping(exp_a.expa3b_metadata) AS expa3b_metadata, exp_a.expa3b_metadata_comment, exp_a.expa3c, metadata_mapping(exp_a.expa3c_metadata) AS expa3c_metadata, exp_a.expa3c_metadata_comment, exp_a.expa4, metadata_mapping(exp_a.expa4_metadata) AS expa4_metadata, exp_a.expa4_metadata_comment, exp_a.expa4a, metadata_mapping(exp_a.expa4a_metadata) AS expa4a_metadata, exp_a.expa4a_metadata_comment, exp_a.expa4b, metadata_mapping(exp_a.expa4b_metadata) AS expa4b_metadata, exp_a.expa4b_metadata_comment, exp_a.expa4c, metadata_mapping(exp_a.expa4c_metadata) AS expa4c_metadata, exp_a.expa4c_metadata_comment, exp_a.expa5, metadata_mapping(exp_a.expa5_metadata) AS expa5_metadata, exp_a.expa5_metadata_comment, exp_a.expa5a, metadata_mapping(exp_a.expa5a_metadata) AS expa5a_metadata, exp_a.expa5a_metadata_comment, exp_a.expa5b, metadata_mapping(exp_a.expa5b_metadata) AS expa5b_metadata, exp_a.expa5b_metadata_comment, exp_a.expa5c, metadata_mapping(exp_a.expa5c_metadata) AS expa5c_metadata, exp_a.expa5c_metadata_comment, at.version AS versao_exp FROM ((((((coorte.exp_a exp_a JOIN public.activity a ON ((a.id = exp_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_exp_a OWNER TO postgres;

--
-- Name: v_fci_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_fci_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS fciadataapini, a.finalization_date AS fciadataapfim, o.date AS fciadataoffline, u.code AS fciaaferidor, ou.code AS fciadigitador, noyesuppercase_mapping(fci_a.fcia1) AS fcia1, metadata_mapping(fci_a.fcia1_metadata) AS fcia1_metadata, fci_a.fcia1_metadata_comment, fci_a.fcia1a, metadata_mapping(fci_a.fcia1a_metadata) AS fcia1a_metadata, fci_a.fcia1a_metadata_comment, fci_a.fcia1b, metadata_mapping(fci_a.fcia1b_metadata) AS fcia1b_metadata, fci_a.fcia1b_metadata_comment, frequenciesofresponsestoeat_mapping(fci_a.fcia1c) AS fcia1c, metadata_mapping(fci_a.fcia1c_metadata) AS fcia1c_metadata, fci_a.fcia1c_metadata_comment, noyesuppercase_mapping(fci_a.fcia2) AS fcia2, metadata_mapping(fci_a.fcia2_metadata) AS fcia2_metadata, fci_a.fcia2_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia2a) AS fcia2a, metadata_mapping(fci_a.fcia2a_metadata) AS fcia2a_metadata, fci_a.fcia2a_metadata_comment, noyesuppercase_mapping(fci_a.fcia3) AS fcia3, metadata_mapping(fci_a.fcia3_metadata) AS fcia3_metadata, fci_a.fcia3_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia3a) AS fcia3a, metadata_mapping(fci_a.fcia3a_metadata) AS fcia3a_metadata, fci_a.fcia3a_metadata_comment, noyesuppercase_mapping(fci_a.fcia4) AS fcia4, metadata_mapping(fci_a.fcia4_metadata) AS fcia4_metadata, fci_a.fcia4_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia4a) AS fcia4a, metadata_mapping(fci_a.fcia4a_metadata) AS fcia4a_metadata, fci_a.fcia4a_metadata_comment, noyesuppercase_mapping(fci_a.fcia5) AS fcia5, metadata_mapping(fci_a.fcia5_metadata) AS fcia5_metadata, fci_a.fcia5_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia5a) AS fcia5a, metadata_mapping(fci_a.fcia5a_metadata) AS fcia5a_metadata, fci_a.fcia5a_metadata_comment, noyesuppercase_mapping(fci_a.fcia6) AS fcia6, metadata_mapping(fci_a.fcia6_metadata) AS fcia6_metadata, fci_a.fcia6_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia6a) AS fcia6a, metadata_mapping(fci_a.fcia6a_metadata) AS fcia6a_metadata, fci_a.fcia6a_metadata_comment, noyesuppercase_mapping(fci_a.fcia7) AS fcia7, metadata_mapping(fci_a.fcia7_metadata) AS fcia7_metadata, fci_a.fcia7_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia7a) AS fcia7a, metadata_mapping(fci_a.fcia7a_metadata) AS fcia7a_metadata, fci_a.fcia7a_metadata_comment, noyesuppercase_mapping(fci_a.fcia8) AS fcia8, metadata_mapping(fci_a.fcia8_metadata) AS fcia8_metadata, fci_a.fcia8_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia8a) AS fcia8a, metadata_mapping(fci_a.fcia8a_metadata) AS fcia8a_metadata, fci_a.fcia8a_metadata_comment, noyesuppercase_mapping(fci_a.fcia9) AS fcia9, metadata_mapping(fci_a.fcia9_metadata) AS fcia9_metadata, fci_a.fcia9_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia9a) AS fcia9a, metadata_mapping(fci_a.fcia9a_metadata) AS fcia9a_metadata, fci_a.fcia9a_metadata_comment, noyesuppercase_mapping(fci_a.fcia10) AS fcia10, metadata_mapping(fci_a.fcia10_metadata) AS fcia10_metadata, fci_a.fcia10_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia10a) AS fcia10a, metadata_mapping(fci_a.fcia10a_metadata) AS fcia10a_metadata, fci_a.fcia10a_metadata_comment, noyesuppercase_mapping(fci_a.fcia11) AS fcia11, metadata_mapping(fci_a.fcia11_metadata) AS fcia11_metadata, fci_a.fcia11_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia11a) AS fcia11a, metadata_mapping(fci_a.fcia11a_metadata) AS fcia11a_metadata, fci_a.fcia11a_metadata_comment, noyesuppercase_mapping(fci_a.fcia12) AS fcia12, metadata_mapping(fci_a.fcia12_metadata) AS fcia12_metadata, fci_a.fcia12_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia12a) AS fcia12a, metadata_mapping(fci_a.fcia12a_metadata) AS fcia12a_metadata, fci_a.fcia12a_metadata_comment, noyesuppercase_mapping(fci_a.fcia13) AS fcia13, metadata_mapping(fci_a.fcia13_metadata) AS fcia13_metadata, fci_a.fcia13_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia13a) AS fcia13a, metadata_mapping(fci_a.fcia13a_metadata) AS fcia13a_metadata, fci_a.fcia13a_metadata_comment, noyesuppercase_mapping(fci_a.fcia14) AS fcia14, metadata_mapping(fci_a.fcia14_metadata) AS fcia14_metadata, fci_a.fcia14_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia14a) AS fcia14a, metadata_mapping(fci_a.fcia14a_metadata) AS fcia14a_metadata, fci_a.fcia14a_metadata_comment, noyesuppercase_mapping(fci_a.fcia15) AS fcia15, metadata_mapping(fci_a.fcia15_metadata) AS fcia15_metadata, fci_a.fcia15_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia15a) AS fcia15a, metadata_mapping(fci_a.fcia15a_metadata) AS fcia15a_metadata, fci_a.fcia15a_metadata_comment, noyesuppercase_mapping(fci_a.fcia16) AS fcia16, metadata_mapping(fci_a.fcia16_metadata) AS fcia16_metadata, fci_a.fcia16_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia16a) AS fcia16a, metadata_mapping(fci_a.fcia16a_metadata) AS fcia16a_metadata, fci_a.fcia16a_metadata_comment, noyesuppercase_mapping(fci_a.fcia17) AS fcia17, metadata_mapping(fci_a.fcia17_metadata) AS fcia17_metadata, fci_a.fcia17_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia17a) AS fcia17a, metadata_mapping(fci_a.fcia17a_metadata) AS fcia17a_metadata, fci_a.fcia17a_metadata_comment, noyesuppercase_mapping(fci_a.fcia18) AS fcia18, metadata_mapping(fci_a.fcia18_metadata) AS fcia18_metadata, fci_a.fcia18_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia18a) AS fcia18a, metadata_mapping(fci_a.fcia18a_metadata) AS fcia18a_metadata, fci_a.fcia18a_metadata_comment, noyesuppercase_mapping(fci_a.fcia19) AS fcia19, metadata_mapping(fci_a.fcia19_metadata) AS fcia19_metadata, fci_a.fcia19_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia19a) AS fcia19a, metadata_mapping(fci_a.fcia19a_metadata) AS fcia19a_metadata, fci_a.fcia19a_metadata_comment, noyesuppercase_mapping(fci_a.fcia20) AS fcia20, metadata_mapping(fci_a.fcia20_metadata) AS fcia20_metadata, fci_a.fcia20_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia20a) AS fcia20a, metadata_mapping(fci_a.fcia20a_metadata) AS fcia20a_metadata, fci_a.fcia20a_metadata_comment, noyesuppercase_mapping(fci_a.fcia21) AS fcia21, metadata_mapping(fci_a.fcia21_metadata) AS fcia21_metadata, fci_a.fcia21_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia21a) AS fcia21a, metadata_mapping(fci_a.fcia21a_metadata) AS fcia21a_metadata, fci_a.fcia21a_metadata_comment, noyesuppercase_mapping(fci_a.fcia22) AS fcia22, metadata_mapping(fci_a.fcia22_metadata) AS fcia22_metadata, fci_a.fcia22_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia22a) AS fcia22a, metadata_mapping(fci_a.fcia22a_metadata) AS fcia22a_metadata, fci_a.fcia22a_metadata_comment, noyesuppercase_mapping(fci_a.fcia23) AS fcia23, metadata_mapping(fci_a.fcia23_metadata) AS fcia23_metadata, fci_a.fcia23_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia23a) AS fcia23a, metadata_mapping(fci_a.fcia23a_metadata) AS fcia23a_metadata, fci_a.fcia23a_metadata_comment, noyesuppercase_mapping(fci_a.fcia24) AS fcia24, metadata_mapping(fci_a.fcia24_metadata) AS fcia24_metadata, fci_a.fcia24_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia24a) AS fcia24a, metadata_mapping(fci_a.fcia24a_metadata) AS fcia24a_metadata, fci_a.fcia24a_metadata_comment, noyesuppercase_mapping(fci_a.fcia25) AS fcia25, metadata_mapping(fci_a.fcia25_metadata) AS fcia25_metadata, fci_a.fcia25_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia25a) AS fcia25a, metadata_mapping(fci_a.fcia25a_metadata) AS fcia25a_metadata, fci_a.fcia25a_metadata_comment, noyesuppercase_mapping(fci_a.fcia26) AS fcia26, metadata_mapping(fci_a.fcia26_metadata) AS fcia26_metadata, fci_a.fcia26_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia26a) AS fcia26a, metadata_mapping(fci_a.fcia26a_metadata) AS fcia26a_metadata, fci_a.fcia26a_metadata_comment, noyesuppercase_mapping(fci_a.fcia27) AS fcia27, metadata_mapping(fci_a.fcia27_metadata) AS fcia27_metadata, fci_a.fcia27_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia27a) AS fcia27a, metadata_mapping(fci_a.fcia27a_metadata) AS fcia27a_metadata, fci_a.fcia27a_metadata_comment, noyesuppercase_mapping(fci_a.fcia28) AS fcia28, metadata_mapping(fci_a.fcia28_metadata) AS fcia28_metadata, fci_a.fcia28_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia28a) AS fcia28a, metadata_mapping(fci_a.fcia28a_metadata) AS fcia28a_metadata, fci_a.fcia28a_metadata_comment, noyesuppercase_mapping(fci_a.fcia29) AS fcia29, metadata_mapping(fci_a.fcia29_metadata) AS fcia29_metadata, fci_a.fcia29_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia29a) AS fcia29a, metadata_mapping(fci_a.fcia29a_metadata) AS fcia29a_metadata, fci_a.fcia29a_metadata_comment, noyesuppercase_mapping(fci_a.fcia30) AS fcia30, metadata_mapping(fci_a.fcia30_metadata) AS fcia30_metadata, fci_a.fcia30_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia30a) AS fcia30a, metadata_mapping(fci_a.fcia30a_metadata) AS fcia30a_metadata, fci_a.fcia30a_metadata_comment, noyesuppercase_mapping(fci_a.fcia31) AS fcia31, metadata_mapping(fci_a.fcia31_metadata) AS fcia31_metadata, fci_a.fcia31_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia31a) AS fcia31a, metadata_mapping(fci_a.fcia31a_metadata) AS fcia31a_metadata, fci_a.fcia31a_metadata_comment, noyesuppercase_mapping(fci_a.fcia32) AS fcia32, metadata_mapping(fci_a.fcia32_metadata) AS fcia32_metadata, fci_a.fcia32_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia32a) AS fcia32a, metadata_mapping(fci_a.fcia32a_metadata) AS fcia32a_metadata, fci_a.fcia32a_metadata_comment, noyesuppercase_mapping(fci_a.fcia33) AS fcia33, metadata_mapping(fci_a.fcia33_metadata) AS fcia33_metadata, fci_a.fcia33_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia33a) AS fcia33a, metadata_mapping(fci_a.fcia33a_metadata) AS fcia33a_metadata, fci_a.fcia33a_metadata_comment, noyesuppercase_mapping(fci_a.fcia34) AS fcia34, metadata_mapping(fci_a.fcia34_metadata) AS fcia34_metadata, fci_a.fcia34_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia34a) AS fcia34a, metadata_mapping(fci_a.fcia34a_metadata) AS fcia34a_metadata, fci_a.fcia34a_metadata_comment, noyesuppercase_mapping(fci_a.fcia35) AS fcia35, metadata_mapping(fci_a.fcia35_metadata) AS fcia35_metadata, fci_a.fcia35_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia35a) AS fcia35a, metadata_mapping(fci_a.fcia35a_metadata) AS fcia35a_metadata, fci_a.fcia35a_metadata_comment, noyesuppercase_mapping(fci_a.fcia36) AS fcia36, metadata_mapping(fci_a.fcia36_metadata) AS fcia36_metadata, fci_a.fcia36_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia36a) AS fcia36a, metadata_mapping(fci_a.fcia36a_metadata) AS fcia36a_metadata, fci_a.fcia36a_metadata_comment, noyesuppercase_mapping(fci_a.fcia37) AS fcia37, metadata_mapping(fci_a.fcia37_metadata) AS fcia37_metadata, fci_a.fcia37_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia37a) AS fcia37a, metadata_mapping(fci_a.fcia37a_metadata) AS fcia37a_metadata, fci_a.fcia37a_metadata_comment, noyesuppercase_mapping(fci_a.fcia38) AS fcia38, metadata_mapping(fci_a.fcia38_metadata) AS fcia38_metadata, fci_a.fcia38_metadata_comment, fci_a.fcia38a, metadata_mapping(fci_a.fcia38a_metadata) AS fcia38a_metadata, fci_a.fcia38a_metadata_comment, frequenciesofresponses_mapping(fci_a.fcia38b) AS fcia38b, metadata_mapping(fci_a.fcia38b_metadata) AS fcia38b_metadata, fci_a.fcia38b_metadata_comment, noyesuppercase_mapping(fci_a.fcia39) AS fcia39, metadata_mapping(fci_a.fcia39_metadata) AS fcia39_metadata, fci_a.fcia39_metadata_comment, fci_a.fcia39a, metadata_mapping(fci_a.fcia39a_metadata) AS fcia39a_metadata, fci_a.fcia39a_metadata_comment, noyesuppercase_mapping(fci_a.fcia40) AS fcia40, metadata_mapping(fci_a.fcia40_metadata) AS fcia40_metadata, fci_a.fcia40_metadata_comment, fci_a.fcia40a, metadata_mapping(fci_a.fcia40a_metadata) AS fcia40a_metadata, fci_a.fcia40a_metadata_comment, at.version AS versao_fci FROM ((((((coorte.fci_a fci_a JOIN public.activity a ON ((a.id = fci_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_fci_a OWNER TO postgres;

--
-- Name: v_for_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_for_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS foradataapini, a.finalization_date AS foradataapfim, o.date AS foradataoffline, u.code AS foraaferidor, ou.code AS foradigitador, noyesuppercase_mapping(for_a.fora1) AS fora1, metadata_mapping(for_a.fora1_metadata) AS fora1_metadata, for_a.fora1_metadata_comment, whichhand_mapping(for_a.fora1a) AS fora1a, metadata_mapping(for_a.fora1a_metadata) AS fora1a_metadata, for_a.fora1a_metadata_comment, for_a.fora7, metadata_mapping(for_a.fora7_metadata) AS fora7_metadata, for_a.fora7_metadata_comment, for_a.fora7a, metadata_mapping(for_a.fora7a_metadata) AS fora7a_metadata, for_a.fora7a_metadata_comment, for_a.fora7b, metadata_mapping(for_a.fora7b_metadata) AS fora7b_metadata, for_a.fora7b_metadata_comment, for_a.fora7c, metadata_mapping(for_a.fora7c_metadata) AS fora7c_metadata, for_a.fora7c_metadata_comment, for_a.fora7cq, metadata_mapping(for_a.fora7cq_metadata) AS fora7cq_metadata, for_a.fora7cq_metadata_comment, wichhandjob_mapping(for_a.fora2) AS fora2, metadata_mapping(for_a.fora2_metadata) AS fora2_metadata, for_a.fora2_metadata_comment, for_a.fora3a, metadata_mapping(for_a.fora3a_metadata) AS fora3a_metadata, for_a.fora3a_metadata_comment, for_a.fora3d, metadata_mapping(for_a.fora3d_metadata) AS fora3d_metadata, for_a.fora3d_metadata_comment, for_a.fora3b, metadata_mapping(for_a.fora3b_metadata) AS fora3b_metadata, for_a.fora3b_metadata_comment, for_a.fora3e, metadata_mapping(for_a.fora3e_metadata) AS fora3e_metadata, for_a.fora3e_metadata_comment, for_a.fora3c, metadata_mapping(for_a.fora3c_metadata) AS fora3c_metadata, for_a.fora3c_metadata_comment, for_a.fora3f, metadata_mapping(for_a.fora3f_metadata) AS fora3f_metadata, for_a.fora3f_metadata_comment, for_a.fora6, metadata_mapping(for_a.fora6_metadata) AS fora6_metadata, for_a.fora6_metadata_comment, for_a.fora6a, metadata_mapping(for_a.fora6a_metadata) AS fora6a_metadata, for_a.fora6a_metadata_comment, for_a.fora6b, metadata_mapping(for_a.fora6b_metadata) AS fora6b_metadata, for_a.fora6b_metadata_comment, for_a.fora6c, metadata_mapping(for_a.fora6c_metadata) AS fora6c_metadata, for_a.fora6c_metadata_comment, for_a.fora6cq, metadata_mapping(for_a.fora6cq_metadata) AS fora6cq_metadata, for_a.fora6cq_metadata_comment, at.version AS versao_for FROM ((((((coorte.for_a for_a JOIN public.activity a ON ((a.id = for_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_for_a OWNER TO postgres;

--
-- Name: v_gst_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_gst_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS gstadataapini, a.finalization_date AS gstadataapfim, o.date AS gstadataoffline, u.code AS gstaaferidor, ou.code AS gstadigitador, race_mapping(gst_a.gsta1) AS gsta1, metadata_mapping(gst_a.gsta1_metadata) AS gsta1_metadata, gst_a.gsta1_metadata_comment, schooling_mapping(gst_a.gsta2) AS gsta2, metadata_mapping(gst_a.gsta2_metadata) AS gsta2_metadata, gst_a.gsta2_metadata_comment, familyincome_mapping(gst_a.gsta3) AS gsta3, metadata_mapping(gst_a.gsta3_metadata) AS gsta3_metadata, gst_a.gsta3_metadata_comment, gst_a.gsta3a, metadata_mapping(gst_a.gsta3a_metadata) AS gsta3a_metadata, gst_a.gsta3a_metadata_comment, noyesuppercase_mapping(gst_a.gsta4) AS gsta4, metadata_mapping(gst_a.gsta4_metadata) AS gsta4_metadata, gst_a.gsta4_metadata_comment, noyesuppercase_mapping(gst_a.gsta4a) AS gsta4a, metadata_mapping(gst_a.gsta4a_metadata) AS gsta4a_metadata, gst_a.gsta4a_metadata_comment, noyesuppercase_mapping(gst_a.gsta5) AS gsta5, metadata_mapping(gst_a.gsta5_metadata) AS gsta5_metadata, gst_a.gsta5_metadata_comment, birthweight_mapping(gst_a.gsta6) AS gsta6, metadata_mapping(gst_a.gsta6_metadata) AS gsta6_metadata, gst_a.gsta6_metadata_comment, gst_a.gsta7, metadata_mapping(gst_a.gsta7_metadata) AS gsta7_metadata, gst_a.gsta7_metadata_comment, noyesuppercase_mapping(gst_a.gsta8) AS gsta8, metadata_mapping(gst_a.gsta8_metadata) AS gsta8_metadata, gst_a.gsta8_metadata_comment, gst_a.gsta9, metadata_mapping(gst_a.gsta9_metadata) AS gsta9_metadata, gst_a.gsta9_metadata_comment, yesno_mapping(gst_a.gsta10) AS gsta10, metadata_mapping(gst_a.gsta10_metadata) AS gsta10_metadata, gst_a.gsta10_metadata_comment, gst_a.gsta11, metadata_mapping(gst_a.gsta11_metadata) AS gsta11_metadata, gst_a.gsta11_metadata_comment, gst_a.gsta12, metadata_mapping(gst_a.gsta12_metadata) AS gsta12_metadata, gst_a.gsta12_metadata_comment, gst_a.gsta13, metadata_mapping(gst_a.gsta13_metadata) AS gsta13_metadata, gst_a.gsta13_metadata_comment, gst_a.gsta14, metadata_mapping(gst_a.gsta14_metadata) AS gsta14_metadata, gst_a.gsta14_metadata_comment, noyesuppercase_mapping(gst_a.gsta15) AS gsta15, metadata_mapping(gst_a.gsta15_metadata) AS gsta15_metadata, gst_a.gsta15_metadata_comment, howmanymonths_mapping(gst_a.gsta16) AS gsta16, metadata_mapping(gst_a.gsta16_metadata) AS gsta16_metadata, gst_a.gsta16_metadata_comment, howmanymonths_mapping(gst_a.gsta17) AS gsta17, metadata_mapping(gst_a.gsta17_metadata) AS gsta17_metadata, gst_a.gsta17_metadata_comment, noyesuppercase_mapping(gst_a.gsta18) AS gsta18, metadata_mapping(gst_a.gsta18_metadata) AS gsta18_metadata, gst_a.gsta18_metadata_comment, gst_a.gsta19a, metadata_mapping(gst_a.gsta19a_metadata) AS gsta19a_metadata, gst_a.gsta19a_metadata_comment, gst_a.gsta19b, metadata_mapping(gst_a.gsta19b_metadata) AS gsta19b_metadata, gst_a.gsta19b_metadata_comment, gst_a.gsta19c, metadata_mapping(gst_a.gsta19c_metadata) AS gsta19c_metadata, gst_a.gsta19c_metadata_comment, gst_a.gsta19d, metadata_mapping(gst_a.gsta19d_metadata) AS gsta19d_metadata, gst_a.gsta19d_metadata_comment, gst_a.gsta19e, metadata_mapping(gst_a.gsta19e_metadata) AS gsta19e_metadata, gst_a.gsta19e_metadata_comment, gst_a.gsta19f, metadata_mapping(gst_a.gsta19f_metadata) AS gsta19f_metadata, gst_a.gsta19f_metadata_comment, gst_a.gsta20, metadata_mapping(gst_a.gsta20_metadata) AS gsta20_metadata, gst_a.gsta20_metadata_comment, noyesuppercase_mapping(gst_a.gsta21) AS gsta21, metadata_mapping(gst_a.gsta21_metadata) AS gsta21_metadata, gst_a.gsta21_metadata_comment, gst_a.gsta21a, metadata_mapping(gst_a.gsta21a_metadata) AS gsta21a_metadata, gst_a.gsta21a_metadata_comment, noyesuppercase_mapping(gst_a.gsta22) AS gsta22, metadata_mapping(gst_a.gsta22_metadata) AS gsta22_metadata, gst_a.gsta22_metadata_comment, gst_a.gsta22a, metadata_mapping(gst_a.gsta22a_metadata) AS gsta22a_metadata, gst_a.gsta22a_metadata_comment, noyesuppercase_mapping(gst_a.gsta23) AS gsta23, metadata_mapping(gst_a.gsta23_metadata) AS gsta23_metadata, gst_a.gsta23_metadata_comment, noyesuppercase_mapping(gst_a.gsta23a) AS gsta23a, metadata_mapping(gst_a.gsta23a_metadata) AS gsta23a_metadata, gst_a.gsta23a_metadata_comment, noyesuppercase_mapping(gst_a.gsta23b) AS gsta23b, metadata_mapping(gst_a.gsta23b_metadata) AS gsta23b_metadata, gst_a.gsta23b_metadata_comment, noyesuppercase_mapping(gst_a.gsta24) AS gsta24, metadata_mapping(gst_a.gsta24_metadata) AS gsta24_metadata, gst_a.gsta24_metadata_comment, laughability_mapping(gst_a.gsta25) AS gsta25, metadata_mapping(gst_a.gsta25_metadata) AS gsta25_metadata, gst_a.gsta25_metadata_comment, cheerfuloutlook_mapping(gst_a.gsta26) AS gsta26, metadata_mapping(gst_a.gsta26_metadata) AS gsta26_metadata, gst_a.gsta26_metadata_comment, selfpunishment_mapping(gst_a.gsta27) AS gsta27, metadata_mapping(gst_a.gsta27_metadata) AS gsta27_metadata, gst_a.gsta27_metadata_comment, concern_mapping(gst_a.gsta28) AS gsta28, metadata_mapping(gst_a.gsta28_metadata) AS gsta28_metadata, gst_a.gsta28_metadata_comment, panicfeeling_mapping(gst_a.gsta29) AS gsta29, metadata_mapping(gst_a.gsta29_metadata) AS gsta29_metadata, gst_a.gsta29_metadata_comment, overloaded_mapping(gst_a.gsta30) AS gsta30, metadata_mapping(gst_a.gsta30_metadata) AS gsta30_metadata, gst_a.gsta30_metadata_comment, sleepproblems_mapping(gst_a.gsta31) AS gsta31, metadata_mapping(gst_a.gsta31_metadata) AS gsta31_metadata, gst_a.gsta31_metadata_comment, unhappyfeeling_mapping(gst_a.gsta32) AS gsta32, metadata_mapping(gst_a.gsta32_metadata) AS gsta32_metadata, gst_a.gsta32_metadata_comment, beencrying_mapping(gst_a.gsta33) AS gsta33, metadata_mapping(gst_a.gsta33_metadata) AS gsta33_metadata, gst_a.gsta33_metadata_comment, actagainstmyself_mapping(gst_a.gsta34) AS gsta34, metadata_mapping(gst_a.gsta34_metadata) AS gsta34_metadata, gst_a.gsta34_metadata_comment, gst_a.gsta35a, metadata_mapping(gst_a.gsta35a_metadata) AS gsta35a_metadata, gst_a.gsta35a_metadata_comment, consumptionfrequency_mapping(gst_a.gsta35a1) AS gsta35a1, metadata_mapping(gst_a.gsta35a1_metadata) AS gsta35a1_metadata, gst_a.gsta35a1_metadata_comment, gst_a.gsta35b, metadata_mapping(gst_a.gsta35b_metadata) AS gsta35b_metadata, gst_a.gsta35b_metadata_comment, consumptionfrequency_mapping(gst_a.gsta35b1) AS gsta35b1, metadata_mapping(gst_a.gsta35b1_metadata) AS gsta35b1_metadata, gst_a.gsta35b1_metadata_comment, gst_a.gsta35c, metadata_mapping(gst_a.gsta35c_metadata) AS gsta35c_metadata, gst_a.gsta35c_metadata_comment, gst_a.gsta35c1, metadata_mapping(gst_a.gsta35c1_metadata) AS gsta35c1_metadata, gst_a.gsta35c1_metadata_comment, gst_a.gsta35d, metadata_mapping(gst_a.gsta35d_metadata) AS gsta35d_metadata, gst_a.gsta35d_metadata_comment, gst_a.gsta35d1, metadata_mapping(gst_a.gsta35d1_metadata) AS gsta35d1_metadata, gst_a.gsta35d1_metadata_comment, gst_a.gsta35e, metadata_mapping(gst_a.gsta35e_metadata) AS gsta35e_metadata, gst_a.gsta35e_metadata_comment, gst_a.gsta35f, metadata_mapping(gst_a.gsta35f_metadata) AS gsta35f_metadata, gst_a.gsta35f_metadata_comment, gst_a.gsta35g, metadata_mapping(gst_a.gsta35g_metadata) AS gsta35g_metadata, gst_a.gsta35g_metadata_comment, gst_a.gsta35h, metadata_mapping(gst_a.gsta35h_metadata) AS gsta35h_metadata, gst_a.gsta35h_metadata_comment, gst_a.gsta35i, metadata_mapping(gst_a.gsta35i_metadata) AS gsta35i_metadata, gst_a.gsta35i_metadata_comment, gst_a.gsta35j, metadata_mapping(gst_a.gsta35j_metadata) AS gsta35j_metadata, gst_a.gsta35j_metadata_comment, gst_a.gsta35k, metadata_mapping(gst_a.gsta35k_metadata) AS gsta35k_metadata, gst_a.gsta35k_metadata_comment, gst_a.gsta35l, metadata_mapping(gst_a.gsta35l_metadata) AS gsta35l_metadata, gst_a.gsta35l_metadata_comment, gst_a.gsta35m, metadata_mapping(gst_a.gsta35m_metadata) AS gsta35m_metadata, gst_a.gsta35m_metadata_comment, gst_a.gsta35n, metadata_mapping(gst_a.gsta35n_metadata) AS gsta35n_metadata, gst_a.gsta35n_metadata_comment, gst_a.gsta35o, metadata_mapping(gst_a.gsta35o_metadata) AS gsta35o_metadata, gst_a.gsta35o_metadata_comment, chickenpreparing_mapping(gst_a.gsta35oa) AS gsta35oa, metadata_mapping(gst_a.gsta35oa_metadata) AS gsta35oa_metadata, gst_a.gsta35oa_metadata_comment, gst_a.gsta35p, metadata_mapping(gst_a.gsta35p_metadata) AS gsta35p_metadata, gst_a.gsta35p_metadata_comment, gst_a.gsta36, metadata_mapping(gst_a.gsta36_metadata) AS gsta36_metadata, gst_a.gsta36_metadata_comment, gst_a.gsta36a, metadata_mapping(gst_a.gsta36a_metadata) AS gsta36a_metadata, gst_a.gsta36a_metadata_comment, gst_a.gsta37, metadata_mapping(gst_a.gsta37_metadata) AS gsta37_metadata, gst_a.gsta37_metadata_comment, gst_a.gsta37a, metadata_mapping(gst_a.gsta37a_metadata) AS gsta37a_metadata, gst_a.gsta37a_metadata_comment, gst_a.gsta38, metadata_mapping(gst_a.gsta38_metadata) AS gsta38_metadata, gst_a.gsta38_metadata_comment, gst_a.gsta38a, metadata_mapping(gst_a.gsta38a_metadata) AS gsta38a_metadata, gst_a.gsta38a_metadata_comment, gst_a.gsta39, metadata_mapping(gst_a.gsta39_metadata) AS gsta39_metadata, gst_a.gsta39_metadata_comment, gst_a.gsta39a, metadata_mapping(gst_a.gsta39a_metadata) AS gsta39a_metadata, gst_a.gsta39a_metadata_comment, gst_a.gsta40, metadata_mapping(gst_a.gsta40_metadata) AS gsta40_metadata, gst_a.gsta40_metadata_comment, gst_a.gsta40a, metadata_mapping(gst_a.gsta40a_metadata) AS gsta40a_metadata, gst_a.gsta40a_metadata_comment, intensitydegree_mapping(gst_a.gsta41) AS gsta41, metadata_mapping(gst_a.gsta41_metadata) AS gsta41_metadata, gst_a.gsta41_metadata_comment, noyesuppercase_mapping(gst_a.gsta42) AS gsta42, metadata_mapping(gst_a.gsta42_metadata) AS gsta42_metadata, gst_a.gsta42_metadata_comment, shouldornot_mapping(gst_a.gsta42a) AS gsta42a, metadata_mapping(gst_a.gsta42a_metadata) AS gsta42a_metadata, gst_a.gsta42a_metadata_comment, noyesuppercase_mapping(gst_a.gsta43) AS gsta43, metadata_mapping(gst_a.gsta43_metadata) AS gsta43_metadata, gst_a.gsta43_metadata_comment, shouldornot_mapping(gst_a.gsta43a) AS gsta43a, metadata_mapping(gst_a.gsta43a_metadata) AS gsta43a_metadata, gst_a.gsta43a_metadata_comment, gst_a.gsta44, metadata_mapping(gst_a.gsta44_metadata) AS gsta44_metadata, gst_a.gsta44_metadata_comment, at.version AS versao_gst FROM ((((((coorte.gst_a gst_a JOIN public.activity a ON ((a.id = gst_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_gst_a OWNER TO postgres;

--
-- Name: v_gst_b; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_gst_b AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS gstbdataapini, a.finalization_date AS gstbdataapfim, o.date AS gstbdataoffline, u.code AS gstbaferidor, ou.code AS gstbdigitador, race_mapping(gst_b.gstb1) AS gstb1, metadata_mapping(gst_b.gstb1_metadata) AS gstb1_metadata, gst_b.gstb1_metadata_comment, schooling_mapping(gst_b.gstb2) AS gstb2, metadata_mapping(gst_b.gstb2_metadata) AS gstb2_metadata, gst_b.gstb2_metadata_comment, familyincome_mapping(gst_b.gstb3) AS gstb3, metadata_mapping(gst_b.gstb3_metadata) AS gstb3_metadata, gst_b.gstb3_metadata_comment, gst_b.gstb3a, metadata_mapping(gst_b.gstb3a_metadata) AS gstb3a_metadata, gst_b.gstb3a_metadata_comment, noyesuppercase_mapping(gst_b.gstb4) AS gstb4, metadata_mapping(gst_b.gstb4_metadata) AS gstb4_metadata, gst_b.gstb4_metadata_comment, noyesuppercase_mapping(gst_b.gstb4a) AS gstb4a, metadata_mapping(gst_b.gstb4a_metadata) AS gstb4a_metadata, gst_b.gstb4a_metadata_comment, noyesuppercase_mapping(gst_b.gstb5) AS gstb5, metadata_mapping(gst_b.gstb5_metadata) AS gstb5_metadata, gst_b.gstb5_metadata_comment, birthweight_mapping(gst_b.gstb6) AS gstb6, metadata_mapping(gst_b.gstb6_metadata) AS gstb6_metadata, gst_b.gstb6_metadata_comment, gst_b.gstb7, metadata_mapping(gst_b.gstb7_metadata) AS gstb7_metadata, gst_b.gstb7_metadata_comment, noyesuppercase_mapping(gst_b.gstb8) AS gstb8, metadata_mapping(gst_b.gstb8_metadata) AS gstb8_metadata, gst_b.gstb8_metadata_comment, gst_b.gstb9, metadata_mapping(gst_b.gstb9_metadata) AS gstb9_metadata, gst_b.gstb9_metadata_comment, yesno_mapping(gst_b.gstb10) AS gstb10, metadata_mapping(gst_b.gstb10_metadata) AS gstb10_metadata, gst_b.gstb10_metadata_comment, gst_b.gstb11, metadata_mapping(gst_b.gstb11_metadata) AS gstb11_metadata, gst_b.gstb11_metadata_comment, gst_b.gstb12, metadata_mapping(gst_b.gstb12_metadata) AS gstb12_metadata, gst_b.gstb12_metadata_comment, gst_b.gstb13, metadata_mapping(gst_b.gstb13_metadata) AS gstb13_metadata, gst_b.gstb13_metadata_comment, noyesuppercase_mapping(gst_b.gstb18) AS gstb18, metadata_mapping(gst_b.gstb18_metadata) AS gstb18_metadata, gst_b.gstb18_metadata_comment, gst_b.gstb19a, metadata_mapping(gst_b.gstb19a_metadata) AS gstb19a_metadata, gst_b.gstb19a_metadata_comment, gst_b.gstb19b, metadata_mapping(gst_b.gstb19b_metadata) AS gstb19b_metadata, gst_b.gstb19b_metadata_comment, gst_b.gstb19c, metadata_mapping(gst_b.gstb19c_metadata) AS gstb19c_metadata, gst_b.gstb19c_metadata_comment, gst_b.gstb19d, metadata_mapping(gst_b.gstb19d_metadata) AS gstb19d_metadata, gst_b.gstb19d_metadata_comment, gst_b.gstb19e, metadata_mapping(gst_b.gstb19e_metadata) AS gstb19e_metadata, gst_b.gstb19e_metadata_comment, gst_b.gstb19f, metadata_mapping(gst_b.gstb19f_metadata) AS gstb19f_metadata, gst_b.gstb19f_metadata_comment, gst_b.gstb19g, metadata_mapping(gst_b.gstb19g_metadata) AS gstb19g_metadata, gst_b.gstb19g_metadata_comment, gst_b.gstb19h, metadata_mapping(gst_b.gstb19h_metadata) AS gstb19h_metadata, gst_b.gstb19h_metadata_comment, gst_b.gstb19i, metadata_mapping(gst_b.gstb19i_metadata) AS gstb19i_metadata, gst_b.gstb19i_metadata_comment, gst_b.gstb19j, metadata_mapping(gst_b.gstb19j_metadata) AS gstb19j_metadata, gst_b.gstb19j_metadata_comment, gst_b.gstb14, metadata_mapping(gst_b.gstb14_metadata) AS gstb14_metadata, gst_b.gstb14_metadata_comment, noyesuppercase_mapping(gst_b.gstb15) AS gstb15, metadata_mapping(gst_b.gstb15_metadata) AS gstb15_metadata, gst_b.gstb15_metadata_comment, howmanymonths_mapping(gst_b.gstb16) AS gstb16, metadata_mapping(gst_b.gstb16_metadata) AS gstb16_metadata, gst_b.gstb16_metadata_comment, howmanymonths_mapping(gst_b.gstb17) AS gstb17, metadata_mapping(gst_b.gstb17_metadata) AS gstb17_metadata, gst_b.gstb17_metadata_comment, gst_b.gstb20, metadata_mapping(gst_b.gstb20_metadata) AS gstb20_metadata, gst_b.gstb20_metadata_comment, noyesuppercase_mapping(gst_b.gstb21) AS gstb21, metadata_mapping(gst_b.gstb21_metadata) AS gstb21_metadata, gst_b.gstb21_metadata_comment, gst_b.gstb21a, metadata_mapping(gst_b.gstb21a_metadata) AS gstb21a_metadata, gst_b.gstb21a_metadata_comment, noyesuppercase_mapping(gst_b.gstb22) AS gstb22, metadata_mapping(gst_b.gstb22_metadata) AS gstb22_metadata, gst_b.gstb22_metadata_comment, gst_b.gstb22a, metadata_mapping(gst_b.gstb22a_metadata) AS gstb22a_metadata, gst_b.gstb22a_metadata_comment, noyesuppercase_mapping(gst_b.gstb23) AS gstb23, metadata_mapping(gst_b.gstb23_metadata) AS gstb23_metadata, gst_b.gstb23_metadata_comment, noyesuppercase_mapping(gst_b.gstb23a) AS gstb23a, metadata_mapping(gst_b.gstb23a_metadata) AS gstb23a_metadata, gst_b.gstb23a_metadata_comment, noyesuppercase_mapping(gst_b.gstb23b) AS gstb23b, metadata_mapping(gst_b.gstb23b_metadata) AS gstb23b_metadata, gst_b.gstb23b_metadata_comment, noyesuppercase_mapping(gst_b.gstb24) AS gstb24, metadata_mapping(gst_b.gstb24_metadata) AS gstb24_metadata, gst_b.gstb24_metadata_comment, gst_b.gstb35a, metadata_mapping(gst_b.gstb35a_metadata) AS gstb35a_metadata, gst_b.gstb35a_metadata_comment, consumptionfrequency_mapping(gst_b.gstb35a1) AS gstb35a1, metadata_mapping(gst_b.gstb35a1_metadata) AS gstb35a1_metadata, gst_b.gstb35a1_metadata_comment, gst_b.gstb35b, metadata_mapping(gst_b.gstb35b_metadata) AS gstb35b_metadata, gst_b.gstb35b_metadata_comment, consumptionfrequency_mapping(gst_b.gstb35b1) AS gstb35b1, metadata_mapping(gst_b.gstb35b1_metadata) AS gstb35b1_metadata, gst_b.gstb35b1_metadata_comment, gst_b.gstb35c, metadata_mapping(gst_b.gstb35c_metadata) AS gstb35c_metadata, gst_b.gstb35c_metadata_comment, gst_b.gstb35c1, metadata_mapping(gst_b.gstb35c1_metadata) AS gstb35c1_metadata, gst_b.gstb35c1_metadata_comment, gst_b.gstb35d, metadata_mapping(gst_b.gstb35d_metadata) AS gstb35d_metadata, gst_b.gstb35d_metadata_comment, gst_b.gstb35d1, metadata_mapping(gst_b.gstb35d1_metadata) AS gstb35d1_metadata, gst_b.gstb35d1_metadata_comment, gst_b.gstb35e, metadata_mapping(gst_b.gstb35e_metadata) AS gstb35e_metadata, gst_b.gstb35e_metadata_comment, gst_b.gstb35f, metadata_mapping(gst_b.gstb35f_metadata) AS gstb35f_metadata, gst_b.gstb35f_metadata_comment, gst_b.gstb35g, metadata_mapping(gst_b.gstb35g_metadata) AS gstb35g_metadata, gst_b.gstb35g_metadata_comment, gst_b.gstb35h, metadata_mapping(gst_b.gstb35h_metadata) AS gstb35h_metadata, gst_b.gstb35h_metadata_comment, gst_b.gstb35i, metadata_mapping(gst_b.gstb35i_metadata) AS gstb35i_metadata, gst_b.gstb35i_metadata_comment, gst_b.gstb35j, metadata_mapping(gst_b.gstb35j_metadata) AS gstb35j_metadata, gst_b.gstb35j_metadata_comment, gst_b.gstb35k, metadata_mapping(gst_b.gstb35k_metadata) AS gstb35k_metadata, gst_b.gstb35k_metadata_comment, gst_b.gstb35l, metadata_mapping(gst_b.gstb35l_metadata) AS gstb35l_metadata, gst_b.gstb35l_metadata_comment, gst_b.gstb35m, metadata_mapping(gst_b.gstb35m_metadata) AS gstb35m_metadata, gst_b.gstb35m_metadata_comment, gst_b.gstb35n, metadata_mapping(gst_b.gstb35n_metadata) AS gstb35n_metadata, gst_b.gstb35n_metadata_comment, gst_b.gstb35o, metadata_mapping(gst_b.gstb35o_metadata) AS gstb35o_metadata, gst_b.gstb35o_metadata_comment, chickenpreparing_mapping(gst_b.gstb35oa) AS gstb35oa, metadata_mapping(gst_b.gstb35oa_metadata) AS gstb35oa_metadata, gst_b.gstb35oa_metadata_comment, gst_b.gstb35p, metadata_mapping(gst_b.gstb35p_metadata) AS gstb35p_metadata, gst_b.gstb35p_metadata_comment, gst_b.gstb36, metadata_mapping(gst_b.gstb36_metadata) AS gstb36_metadata, gst_b.gstb36_metadata_comment, gst_b.gstb36a, metadata_mapping(gst_b.gstb36a_metadata) AS gstb36a_metadata, gst_b.gstb36a_metadata_comment, gst_b.gstb37, metadata_mapping(gst_b.gstb37_metadata) AS gstb37_metadata, gst_b.gstb37_metadata_comment, gst_b.gstb37a, metadata_mapping(gst_b.gstb37a_metadata) AS gstb37a_metadata, gst_b.gstb37a_metadata_comment, gst_b.gstb38, metadata_mapping(gst_b.gstb38_metadata) AS gstb38_metadata, gst_b.gstb38_metadata_comment, gst_b.gstb38a, metadata_mapping(gst_b.gstb38a_metadata) AS gstb38a_metadata, gst_b.gstb38a_metadata_comment, gst_b.gstb39, metadata_mapping(gst_b.gstb39_metadata) AS gstb39_metadata, gst_b.gstb39_metadata_comment, gst_b.gstb39a, metadata_mapping(gst_b.gstb39a_metadata) AS gstb39a_metadata, gst_b.gstb39a_metadata_comment, gst_b.gstb40, metadata_mapping(gst_b.gstb40_metadata) AS gstb40_metadata, gst_b.gstb40_metadata_comment, gst_b.gstb40a, metadata_mapping(gst_b.gstb40a_metadata) AS gstb40a_metadata, gst_b.gstb40a_metadata_comment, intensitydegree_mapping(gst_b.gstb41) AS gstb41, metadata_mapping(gst_b.gstb41_metadata) AS gstb41_metadata, gst_b.gstb41_metadata_comment, noyesuppercase_mapping(gst_b.gstb42) AS gstb42, metadata_mapping(gst_b.gstb42_metadata) AS gstb42_metadata, gst_b.gstb42_metadata_comment, shouldornot_mapping(gst_b.gstb42a) AS gstb42a, metadata_mapping(gst_b.gstb42a_metadata) AS gstb42a_metadata, gst_b.gstb42a_metadata_comment, noyesuppercase_mapping(gst_b.gstb43) AS gstb43, metadata_mapping(gst_b.gstb43_metadata) AS gstb43_metadata, gst_b.gstb43_metadata_comment, shouldornot_mapping(gst_b.gstb43a) AS gstb43a, metadata_mapping(gst_b.gstb43a_metadata) AS gstb43a_metadata, gst_b.gstb43a_metadata_comment, gst_b.gstb44, metadata_mapping(gst_b.gstb44_metadata) AS gstb44_metadata, gst_b.gstb44_metadata_comment, at.version AS versao_gst FROM ((((((coorte.gst_b gst_b JOIN public.activity a ON ((a.id = gst_b.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_gst_b OWNER TO postgres;

--
-- Name: v_iae_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_iae_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS iaeadataapini, a.finalization_date AS iaeadataapfim, o.date AS iaeadataoffline, u.code AS iaeaaferidor, ou.code AS iaeadigitador, agreeswithministryofhealth_mapping(iae_a.iaea1) AS iaea1, metadata_mapping(iae_a.iaea1_metadata) AS iaea1_metadata, iae_a.iaea1_metadata_comment, intentionofbreastfeed_mapping(iae_a.iaea2) AS iaea2, metadata_mapping(iae_a.iaea2_metadata) AS iaea2_metadata, iae_a.iaea2_metadata_comment, iae_a.iaea2a, metadata_mapping(iae_a.iaea2a_metadata) AS iaea2a_metadata, iae_a.iaea2a_metadata_comment, iae_a.iaea3a1, metadata_mapping(iae_a.iaea3a1_metadata) AS iaea3a1_metadata, iae_a.iaea3a1_metadata_comment, iae_a.iaea3a2, metadata_mapping(iae_a.iaea3a2_metadata) AS iaea3a2_metadata, iae_a.iaea3a2_metadata_comment, iae_a.iaea3a3, metadata_mapping(iae_a.iaea3a3_metadata) AS iaea3a3_metadata, iae_a.iaea3a3_metadata_comment, iae_a.iaea3a4, metadata_mapping(iae_a.iaea3a4_metadata) AS iaea3a4_metadata, iae_a.iaea3a4_metadata_comment, iae_a.iaea3a5, metadata_mapping(iae_a.iaea3a5_metadata) AS iaea3a5_metadata, iae_a.iaea3a5_metadata_comment, iae_a.iaea3a6, metadata_mapping(iae_a.iaea3a6_metadata) AS iaea3a6_metadata, iae_a.iaea3a6_metadata_comment, iae_a.iaea3a7, metadata_mapping(iae_a.iaea3a7_metadata) AS iaea3a7_metadata, iae_a.iaea3a7_metadata_comment, iae_a.iaea3a8, metadata_mapping(iae_a.iaea3a8_metadata) AS iaea3a8_metadata, iae_a.iaea3a8_metadata_comment, iae_a.iaea3a9, metadata_mapping(iae_a.iaea3a9_metadata) AS iaea3a9_metadata, iae_a.iaea3a9_metadata_comment, iae_a.iaea3a10, metadata_mapping(iae_a.iaea3a10_metadata) AS iaea3a10_metadata, iae_a.iaea3a10_metadata_comment, iae_a.iaea3a11, metadata_mapping(iae_a.iaea3a11_metadata) AS iaea3a11_metadata, iae_a.iaea3a11_metadata_comment, iae_a.iaea3a12, metadata_mapping(iae_a.iaea3a12_metadata) AS iaea3a12_metadata, iae_a.iaea3a12_metadata_comment, iae_a.iaea3a13, metadata_mapping(iae_a.iaea3a13_metadata) AS iaea3a13_metadata, iae_a.iaea3a13_metadata_comment, iae_a.iaea3a14, metadata_mapping(iae_a.iaea3a14_metadata) AS iaea3a14_metadata, iae_a.iaea3a14_metadata_comment, iae_a.iaea3a15, metadata_mapping(iae_a.iaea3a15_metadata) AS iaea3a15_metadata, iae_a.iaea3a15_metadata_comment, iae_a.iaea3a16, metadata_mapping(iae_a.iaea3a16_metadata) AS iaea3a16_metadata, iae_a.iaea3a16_metadata_comment, iae_a.iaea3a17, metadata_mapping(iae_a.iaea3a17_metadata) AS iaea3a17_metadata, iae_a.iaea3a17_metadata_comment, iae_a.iaea3a18, metadata_mapping(iae_a.iaea3a18_metadata) AS iaea3a18_metadata, iae_a.iaea3a18_metadata_comment, iae_a.iaea3a19, metadata_mapping(iae_a.iaea3a19_metadata) AS iaea3a19_metadata, iae_a.iaea3a19_metadata_comment, iae_a.iaea3a20, metadata_mapping(iae_a.iaea3a20_metadata) AS iaea3a20_metadata, iae_a.iaea3a20_metadata_comment, iae_a.iaea3a20q, metadata_mapping(iae_a.iaea3a20q_metadata) AS iaea3a20q_metadata, iae_a.iaea3a20q_metadata_comment, at.version AS versao_iae FROM ((((((coorte.iae_a iae_a JOIN public.activity a ON ((a.id = iae_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_iae_a OWNER TO postgres;

--
-- Name: v_iap_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_iap_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS iapadataapini, a.finalization_date AS iapadataapfim, o.date AS iapadataoffline, u.code AS iapaaferidor, ou.code AS iapadigitador, noyesuppercase_mapping(iap_a.iapa1) AS iapa1, metadata_mapping(iap_a.iapa1_metadata) AS iapa1_metadata, iap_a.iapa1_metadata_comment, iap_a.iapa1a1, metadata_mapping(iap_a.iapa1a1_metadata) AS iapa1a1_metadata, iap_a.iapa1a1_metadata_comment, iap_a.iapa1a2, metadata_mapping(iap_a.iapa1a2_metadata) AS iapa1a2_metadata, iap_a.iapa1a2_metadata_comment, iap_a.iapa1a3, metadata_mapping(iap_a.iapa1a3_metadata) AS iapa1a3_metadata, iap_a.iapa1a3_metadata_comment, iap_a.iapa1a4, metadata_mapping(iap_a.iapa1a4_metadata) AS iapa1a4_metadata, iap_a.iapa1a4_metadata_comment, iap_a.iapa1a5, metadata_mapping(iap_a.iapa1a5_metadata) AS iapa1a5_metadata, iap_a.iapa1a5_metadata_comment, iap_a.iapa1a6, metadata_mapping(iap_a.iapa1a6_metadata) AS iapa1a6_metadata, iap_a.iapa1a6_metadata_comment, iap_a.iapa1a6q, metadata_mapping(iap_a.iapa1a6q_metadata) AS iapa1a6q_metadata, iap_a.iapa1a6q_metadata_comment, noyesuppercase_mapping(iap_a.iapa2) AS iapa2, metadata_mapping(iap_a.iapa2_metadata) AS iapa2_metadata, iap_a.iapa2_metadata_comment, aboutbreastfeeding_mapping(iap_a.iapa3) AS iapa3, metadata_mapping(iap_a.iapa3_metadata) AS iapa3_metadata, iap_a.iapa3_metadata_comment, iap_a.iapa3a, metadata_mapping(iap_a.iapa3a_metadata) AS iapa3a_metadata, iap_a.iapa3a_metadata_comment, iap_a.iapa4a1, metadata_mapping(iap_a.iapa4a1_metadata) AS iapa4a1_metadata, iap_a.iapa4a1_metadata_comment, iap_a.iapa4a2, metadata_mapping(iap_a.iapa4a2_metadata) AS iapa4a2_metadata, iap_a.iapa4a2_metadata_comment, iap_a.iapa4a3, metadata_mapping(iap_a.iapa4a3_metadata) AS iapa4a3_metadata, iap_a.iapa4a3_metadata_comment, iap_a.iapa4a4, metadata_mapping(iap_a.iapa4a4_metadata) AS iapa4a4_metadata, iap_a.iapa4a4_metadata_comment, iap_a.iapa4a5, metadata_mapping(iap_a.iapa4a5_metadata) AS iapa4a5_metadata, iap_a.iapa4a5_metadata_comment, iap_a.iapa4a6, metadata_mapping(iap_a.iapa4a6_metadata) AS iapa4a6_metadata, iap_a.iapa4a6_metadata_comment, iap_a.iapa4a7, metadata_mapping(iap_a.iapa4a7_metadata) AS iapa4a7_metadata, iap_a.iapa4a7_metadata_comment, iap_a.iapa4a8, metadata_mapping(iap_a.iapa4a8_metadata) AS iapa4a8_metadata, iap_a.iapa4a8_metadata_comment, iap_a.iapa4a9, metadata_mapping(iap_a.iapa4a9_metadata) AS iapa4a9_metadata, iap_a.iapa4a9_metadata_comment, iap_a.iapa4a10, metadata_mapping(iap_a.iapa4a10_metadata) AS iapa4a10_metadata, iap_a.iapa4a10_metadata_comment, iap_a.iapa4a11, metadata_mapping(iap_a.iapa4a11_metadata) AS iapa4a11_metadata, iap_a.iapa4a11_metadata_comment, iap_a.iapa4a12, metadata_mapping(iap_a.iapa4a12_metadata) AS iapa4a12_metadata, iap_a.iapa4a12_metadata_comment, iap_a.iapa4a13, metadata_mapping(iap_a.iapa4a13_metadata) AS iapa4a13_metadata, iap_a.iapa4a13_metadata_comment, iap_a.iapa4a14, metadata_mapping(iap_a.iapa4a14_metadata) AS iapa4a14_metadata, iap_a.iapa4a14_metadata_comment, iap_a.iapa4a15, metadata_mapping(iap_a.iapa4a15_metadata) AS iapa4a15_metadata, iap_a.iapa4a15_metadata_comment, iap_a.iapa4a16, metadata_mapping(iap_a.iapa4a16_metadata) AS iapa4a16_metadata, iap_a.iapa4a16_metadata_comment, iap_a.iapa4a17, metadata_mapping(iap_a.iapa4a17_metadata) AS iapa4a17_metadata, iap_a.iapa4a17_metadata_comment, iap_a.iapa4a18, metadata_mapping(iap_a.iapa4a18_metadata) AS iapa4a18_metadata, iap_a.iapa4a18_metadata_comment, iap_a.iapa4a19, metadata_mapping(iap_a.iapa4a19_metadata) AS iapa4a19_metadata, iap_a.iapa4a19_metadata_comment, iap_a.iapa4a20, metadata_mapping(iap_a.iapa4a20_metadata) AS iapa4a20_metadata, iap_a.iapa4a20_metadata_comment, iap_a.iapa4a20q, metadata_mapping(iap_a.iapa4a20q_metadata) AS iapa4a20q_metadata, iap_a.iapa4a20q_metadata_comment, at.version AS versao_iap FROM ((((((coorte.iap_a iap_a JOIN public.activity a ON ((a.id = iap_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_iap_a OWNER TO postgres;

--
-- Name: v_iar_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_iar_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS iaradataapini, a.finalization_date AS iaradataapfim, o.date AS iaradataoffline, u.code AS iaraaferidor, ou.code AS iaradigitador, thinkaboutbreastfeeding_mapping(iar_a.iara1) AS iara1, metadata_mapping(iar_a.iara1_metadata) AS iara1_metadata, iar_a.iara1_metadata_comment, breastfeedingintention_mapping(iar_a.iara2) AS iara2, metadata_mapping(iar_a.iara2_metadata) AS iara2_metadata, iar_a.iara2_metadata_comment, iar_a.iara2a, metadata_mapping(iar_a.iara2a_metadata) AS iara2a_metadata, iar_a.iara2a_metadata_comment, metadata_mapping(iar_a.reasonfornotbreastfeedinggroup_metadata) AS reasonfornotbreastfeedinggroup_metadata, iar_a.reasonfornotbreastfeedinggroup_metadata_comment, iar_a.iara3a1, metadata_mapping(iar_a.iara3a1_metadata) AS iara3a1_metadata, iar_a.iara3a1_metadata_comment, iar_a.iara3a2, metadata_mapping(iar_a.iara3a2_metadata) AS iara3a2_metadata, iar_a.iara3a2_metadata_comment, iar_a.iara3a3, metadata_mapping(iar_a.iara3a3_metadata) AS iara3a3_metadata, iar_a.iara3a3_metadata_comment, iar_a.iara3a4, metadata_mapping(iar_a.iara3a4_metadata) AS iara3a4_metadata, iar_a.iara3a4_metadata_comment, iar_a.iara3a5, metadata_mapping(iar_a.iara3a5_metadata) AS iara3a5_metadata, iar_a.iara3a5_metadata_comment, iar_a.iara3a6, metadata_mapping(iar_a.iara3a6_metadata) AS iara3a6_metadata, iar_a.iara3a6_metadata_comment, iar_a.iara3a7, metadata_mapping(iar_a.iara3a7_metadata) AS iara3a7_metadata, iar_a.iara3a7_metadata_comment, iar_a.iara3a8, metadata_mapping(iar_a.iara3a8_metadata) AS iara3a8_metadata, iar_a.iara3a8_metadata_comment, iar_a.iara3a9, metadata_mapping(iar_a.iara3a9_metadata) AS iara3a9_metadata, iar_a.iara3a9_metadata_comment, iar_a.iara3a10, metadata_mapping(iar_a.iara3a10_metadata) AS iara3a10_metadata, iar_a.iara3a10_metadata_comment, iar_a.iara3a11, metadata_mapping(iar_a.iara3a11_metadata) AS iara3a11_metadata, iar_a.iara3a11_metadata_comment, iar_a.iara3a12, metadata_mapping(iar_a.iara3a12_metadata) AS iara3a12_metadata, iar_a.iara3a12_metadata_comment, iar_a.iara3a13, metadata_mapping(iar_a.iara3a13_metadata) AS iara3a13_metadata, iar_a.iara3a13_metadata_comment, iar_a.iara3a14, metadata_mapping(iar_a.iara3a14_metadata) AS iara3a14_metadata, iar_a.iara3a14_metadata_comment, iar_a.iara3a15, metadata_mapping(iar_a.iara3a15_metadata) AS iara3a15_metadata, iar_a.iara3a15_metadata_comment, iar_a.iara3a16, metadata_mapping(iar_a.iara3a16_metadata) AS iara3a16_metadata, iar_a.iara3a16_metadata_comment, iar_a.iara3a17, metadata_mapping(iar_a.iara3a17_metadata) AS iara3a17_metadata, iar_a.iara3a17_metadata_comment, iar_a.iara3a18, metadata_mapping(iar_a.iara3a18_metadata) AS iara3a18_metadata, iar_a.iara3a18_metadata_comment, iar_a.iara3a19, metadata_mapping(iar_a.iara3a19_metadata) AS iara3a19_metadata, iar_a.iara3a19_metadata_comment, iar_a.iara3a20, metadata_mapping(iar_a.iara3a20_metadata) AS iara3a20_metadata, iar_a.iara3a20_metadata_comment, iar_a.iara3a20q, metadata_mapping(iar_a.iara3a20q_metadata) AS iara3a20q_metadata, iar_a.iara3a20q_metadata_comment, howbreastfeedthesons_mapping(iar_a.iara4) AS iara4, metadata_mapping(iar_a.iara4_metadata) AS iara4_metadata, iar_a.iara4_metadata_comment, at.version AS versao_iar FROM ((((((coorte.iar_a iar_a JOIN public.activity a ON ((a.id = iar_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_iar_a OWNER TO postgres;

--
-- Name: v_imas_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_imas_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS imasadataapini, a.finalization_date AS imasadataapfim, o.date AS imasadataoffline, u.code AS imasaaferidor, ou.code AS imasadigitador, bodyshapequestions_mapping(imas_a.imasa1) AS imasa1, metadata_mapping(imas_a.imasa1_metadata) AS imasa1_metadata, imas_a.imasa1_metadata_comment, bodyshapequestions_mapping(imas_a.imasa2) AS imasa2, metadata_mapping(imas_a.imasa2_metadata) AS imasa2_metadata, imas_a.imasa2_metadata_comment, at.version AS versao_imas FROM ((((((coorte.imas_a imas_a JOIN public.activity a ON ((a.id = imas_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_imas_a OWNER TO postgres;

--
-- Name: v_ine_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_ine_a AS
SELECT p.recruitment_number AS numerorecrutamento, ine_a.realization_date AS ineadataapini, u.code AS ineaaferidor, ine_a.inea1, ine_a.ineacom1, ine_a.inea2, ine_a.inea3, ine_a.ineacom3 FROM ((coorte.ine_a ine_a JOIN public.participant p ON ((p.id = ine_a.participant_id))) JOIN public."user" u ON ((u.id = ine_a.user_id)));


ALTER TABLE extraction.v_ine_a OWNER TO postgres;

--
-- Name: v_int_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_int_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS intadataapini, a.finalization_date AS intadataapfim, o.date AS intadataoffline, u.code AS intaaferidor, ou.code AS intadigitador, situtation_mapping(int_a.inta1) AS inta1, metadata_mapping(int_a.inta1_metadata) AS inta1_metadata, int_a.inta1_metadata_comment, breastfeedingplan_mapping(int_a.inta2) AS inta2, metadata_mapping(int_a.inta2_metadata) AS inta2_metadata, int_a.inta2_metadata_comment, breastfeedingplanoption_mapping(int_a.inta3) AS inta3, metadata_mapping(int_a.inta3_metadata) AS inta3_metadata, int_a.inta3_metadata_comment, int_a.inta3q, metadata_mapping(int_a.inta3q_metadata) AS inta3q_metadata, int_a.inta3q_metadata_comment, int_a.intaobs, metadata_mapping(int_a.intaobs_metadata) AS intaobs_metadata, int_a.intaobs_metadata_comment, int_a.intacom, metadata_mapping(int_a.intacom_metadata) AS intacom_metadata, int_a.intacom_metadata_comment, at.version AS versao_int FROM ((((((coorte.int_a int_a JOIN public.activity a ON ((a.id = int_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_int_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: isg_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE isg_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    isga3a boolean,
    isga3a_metadata character varying(255),
    isga3a_metadata_comment text,
    isg1ah integer,
    isg1a_metadata character varying(255),
    isg1a_metadata_comment text,
    isg1am integer,
    isg2ah integer,
    isg2a_metadata character varying(255),
    isg2a_metadata_comment text,
    isg2am integer,
    isga3b boolean,
    isga3b_metadata character varying(255),
    isga3b_metadata_comment text,
    isga3d boolean,
    isga3d_metadata character varying(255),
    isga3d_metadata_comment text,
    isga3c boolean,
    isga3c_metadata character varying(255),
    isga3c_metadata_comment text,
    isga3dq text,
    isga3dq_metadata character varying(255),
    isga3dq_metadata_comment text
);


ALTER TABLE lab.isg_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_isg_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_isg_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS isgadataapini, a.finalization_date AS isgadataapfim, o.date AS isgadataoffline, u.code AS isgaaferidor, ou.code AS isgadigitador, isg_a.isg1ah, isg_a.isg1am, metadata_mapping(isg_a.isg1a_metadata) AS isg1a_metadata, isg_a.isg1a_metadata_comment, isg_a.isg2ah, isg_a.isg2am, metadata_mapping(isg_a.isg2a_metadata) AS isg2a_metadata, isg_a.isg2a_metadata_comment, isg_a.isga3a, metadata_mapping(isg_a.isga3a_metadata) AS isga3a_metadata, isg_a.isga3a_metadata_comment, isg_a.isga3b, metadata_mapping(isg_a.isga3b_metadata) AS isga3b_metadata, isg_a.isga3b_metadata_comment, isg_a.isga3c, metadata_mapping(isg_a.isga3c_metadata) AS isga3c_metadata, isg_a.isga3c_metadata_comment, isg_a.isga3d, metadata_mapping(isg_a.isga3d_metadata) AS isga3d_metadata, isg_a.isga3d_metadata_comment, isg_a.isga3dq, metadata_mapping(isg_a.isga3dq_metadata) AS isga3dq_metadata, isg_a.isga3dq_metadata_comment, at.version AS versao_isg FROM ((((((lab.isg_a isg_a JOIN public.activity a ON ((a.id = isg_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_isg_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: isgs_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE isgs_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    isgsa1ah integer,
    isgsa1a_metadata character varying(255),
    isgsa1a_metadata_comment text,
    isgsa1am integer,
    isgsa2ah integer,
    isgsa2a_metadata character varying(255),
    isgsa2a_metadata_comment text,
    isgsa2am integer,
    isgsa3a boolean,
    isgsa3a_metadata character varying(255),
    isgsa3a_metadata_comment text,
    isgsa3b boolean,
    isgsa3b_metadata character varying(255),
    isgsa3b_metadata_comment text,
    isgsa3d boolean,
    isgsa3d_metadata character varying(255),
    isgsa3d_metadata_comment text,
    isgsa3c boolean,
    isgsa3c_metadata character varying(255),
    isgsa3c_metadata_comment text,
    isgsa3dq text,
    isgsa3dq_metadata character varying(255),
    isgsa3dq_metadata_comment text
);


ALTER TABLE lab.isgs_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_isgs_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_isgs_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS isgsadataapini, a.finalization_date AS isgsadataapfim, o.date AS isgsadataoffline, u.code AS isgsaaferidor, ou.code AS isgsadigitador, isgs_a.isgsa1ah, isgs_a.isgsa1am, metadata_mapping(isgs_a.isgsa1a_metadata) AS isgsa1a_metadata, isgs_a.isgsa1a_metadata_comment, isgs_a.isgsa2ah, isgs_a.isgsa2am, metadata_mapping(isgs_a.isgsa2a_metadata) AS isgsa2a_metadata, isgs_a.isgsa2a_metadata_comment, isgs_a.isgsa3a, metadata_mapping(isgs_a.isgsa3a_metadata) AS isgsa3a_metadata, isgs_a.isgsa3a_metadata_comment, isgs_a.isgsa3b, metadata_mapping(isgs_a.isgsa3b_metadata) AS isgsa3b_metadata, isgs_a.isgsa3b_metadata_comment, isgs_a.isgsa3c, metadata_mapping(isgs_a.isgsa3c_metadata) AS isgsa3c_metadata, isgs_a.isgsa3c_metadata_comment, isgs_a.isgsa3d, metadata_mapping(isgs_a.isgsa3d_metadata) AS isgsa3d_metadata, isgs_a.isgsa3d_metadata_comment, isgs_a.isgsa3dq, metadata_mapping(isgs_a.isgsa3dq_metadata) AS isgsa3dq_metadata, isgs_a.isgsa3dq_metadata_comment, at.version AS versao_isgs FROM ((((((lab.isgs_a isgs_a JOIN public.activity a ON ((a.id = isgs_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_isgs_a OWNER TO postgres;

--
-- Name: v_lap_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_lap_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS lapadataapini, a.finalization_date AS lapadataapfim, o.date AS lapadataoffline, u.code AS lapaaferidor, ou.code AS lapadigitador, stillpregnant_mapping(lap_a.lapa1) AS lapa1, metadata_mapping(lap_a.lapa1_metadata) AS lapa1_metadata, lap_a.lapa1_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa2) AS lapa2, metadata_mapping(lap_a.lapa2_metadata) AS lapa2_metadata, lap_a.lapa2_metadata_comment, lap_a.lapa2a, metadata_mapping(lap_a.lapa2a_metadata) AS lapa2a_metadata, lap_a.lapa2a_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa3) AS lapa3, metadata_mapping(lap_a.lapa3_metadata) AS lapa3_metadata, lap_a.lapa3_metadata_comment, lap_a.lapa3a, metadata_mapping(lap_a.lapa3a_metadata) AS lapa3a_metadata, lap_a.lapa3a_metadata_comment, lap_a.lapa4, metadata_mapping(lap_a.lapa4_metadata) AS lapa4_metadata, lap_a.lapa4_metadata_comment, babysiting_mapping(lap_a.lapa5) AS lapa5, metadata_mapping(lap_a.lapa5_metadata) AS lapa5_metadata, lap_a.lapa5_metadata_comment, lap_a.lapa5a, metadata_mapping(lap_a.lapa5a_metadata) AS lapa5a_metadata, lap_a.lapa5a_metadata_comment, lap_a.lapa5b, metadata_mapping(lap_a.lapa5b_metadata) AS lapa5b_metadata, lap_a.lapa5b_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa5c) AS lapa5c, metadata_mapping(lap_a.lapa5c_metadata) AS lapa5c_metadata, lap_a.lapa5c_metadata_comment, lap_a.lapa5d, metadata_mapping(lap_a.lapa5d_metadata) AS lapa5d_metadata, lap_a.lapa5d_metadata_comment, lap_a.lapa6, metadata_mapping(lap_a.lapa6_metadata) AS lapa6_metadata, lap_a.lapa6_metadata_comment, sex_mapping(lap_a.lapa7) AS lapa7, metadata_mapping(lap_a.lapa7_metadata) AS lapa7_metadata, lap_a.lapa7_metadata_comment, lap_a.lapa8, metadata_mapping(lap_a.lapa8_metadata) AS lapa8_metadata, lap_a.lapa8_metadata_comment, lap_a.lapa9, metadata_mapping(lap_a.lapa9_metadata) AS lapa9_metadata, lap_a.lapa9_metadata_comment, lap_a.lapa10, metadata_mapping(lap_a.lapa10_metadata) AS lapa10_metadata, lap_a.lapa10_metadata_comment, lap_a.lapa11a, metadata_mapping(lap_a.lapa11a_metadata) AS lapa11a_metadata, lap_a.lapa11a_metadata_comment, lap_a.lapa11b, metadata_mapping(lap_a.lapa11b_metadata) AS lapa11b_metadata, lap_a.lapa11b_metadata_comment, typepregnancy_mapping(lap_a.prta5) AS prta5, metadata_mapping(lap_a.prta5_metadata) AS prta5_metadata, lap_a.prta5_metadata_comment, lap_a.prta5a, metadata_mapping(lap_a.prta5a_metadata) AS prta5a_metadata, lap_a.prta5a_metadata_comment, lap_a.lapa4g, metadata_mapping(lap_a.lapa4g_metadata) AS lapa4g_metadata, lap_a.lapa4g_metadata_comment, babysiting_mapping(lap_a.lapa5g) AS lapa5g, metadata_mapping(lap_a.lapa5g_metadata) AS lapa5g_metadata, lap_a.lapa5g_metadata_comment, lap_a.lapa5ag, metadata_mapping(lap_a.lapa5ag_metadata) AS lapa5ag_metadata, lap_a.lapa5ag_metadata_comment, lap_a.lapa5bg, metadata_mapping(lap_a.lapa5bg_metadata) AS lapa5bg_metadata, lap_a.lapa5bg_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa5cg) AS lapa5cg, metadata_mapping(lap_a.lapa5cg_metadata) AS lapa5cg_metadata, lap_a.lapa5cg_metadata_comment, lap_a.lapa5dg, metadata_mapping(lap_a.lapa5dg_metadata) AS lapa5dg_metadata, lap_a.lapa5dg_metadata_comment, lap_a.lapa6g, metadata_mapping(lap_a.lapa6g_metadata) AS lapa6g_metadata, lap_a.lapa6g_metadata_comment, sex_mapping(lap_a.lapa7g) AS lapa7g, metadata_mapping(lap_a.lapa7g_metadata) AS lapa7g_metadata, lap_a.lapa7g_metadata_comment, lap_a.lapa8g, metadata_mapping(lap_a.lapa8g_metadata) AS lapa8g_metadata, lap_a.lapa8g_metadata_comment, lap_a.lapa9g, metadata_mapping(lap_a.lapa9g_metadata) AS lapa9g_metadata, lap_a.lapa9g_metadata_comment, lap_a.lapa10g, metadata_mapping(lap_a.lapa10g_metadata) AS lapa10g_metadata, lap_a.lapa10g_metadata_comment, lap_a.lapa11ag, metadata_mapping(lap_a.lapa11ag_metadata) AS lapa11ag_metadata, lap_a.lapa11ag_metadata_comment, lap_a.lapa11bg, metadata_mapping(lap_a.lapa11bg_metadata) AS lapa11bg_metadata, lap_a.lapa11bg_metadata_comment, lap_a.lapa4g2, metadata_mapping(lap_a.lapa4g2_metadata) AS lapa4g2_metadata, lap_a.lapa4g2_metadata_comment, babysiting_mapping(lap_a.lapa5g2) AS lapa5g2, metadata_mapping(lap_a.lapa5g2_metadata) AS lapa5g2_metadata, lap_a.lapa5g2_metadata_comment, lap_a.lapa5ag2, metadata_mapping(lap_a.lapa5ag2_metadata) AS lapa5ag2_metadata, lap_a.lapa5ag2_metadata_comment, lap_a.lapa5bg2, metadata_mapping(lap_a.lapa5bg2_metadata) AS lapa5bg2_metadata, lap_a.lapa5bg2_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa5cg2) AS lapa5cg2, metadata_mapping(lap_a.lapa5cg2_metadata) AS lapa5cg2_metadata, lap_a.lapa5cg2_metadata_comment, lap_a.lapa5dg2, metadata_mapping(lap_a.lapa5dg2_metadata) AS lapa5dg2_metadata, lap_a.lapa5dg2_metadata_comment, lap_a.lapa6g2, metadata_mapping(lap_a.lapa6g2_metadata) AS lapa6g2_metadata, lap_a.lapa6g2_metadata_comment, sex_mapping(lap_a.lapa7g2) AS lapa7g2, metadata_mapping(lap_a.lapa7g2_metadata) AS lapa7g2_metadata, lap_a.lapa7g2_metadata_comment, lap_a.lapa8g2, metadata_mapping(lap_a.lapa8g2_metadata) AS lapa8g2_metadata, lap_a.lapa8g2_metadata_comment, lap_a.lapa9g2, metadata_mapping(lap_a.lapa9g2_metadata) AS lapa9g2_metadata, lap_a.lapa9g2_metadata_comment, lap_a.lapa10g2, metadata_mapping(lap_a.lapa10g2_metadata) AS lapa10g2_metadata, lap_a.lapa10g2_metadata_comment, lap_a.lapa11ag2, metadata_mapping(lap_a.lapa11ag2_metadata) AS lapa11ag2_metadata, lap_a.lapa11ag2_metadata_comment, lap_a.lapa11bg2, metadata_mapping(lap_a.lapa11bg2_metadata) AS lapa11bg2_metadata, lap_a.lapa11bg2_metadata_comment, noyesuppercase_mapping(lap_a.lapa12) AS lapa12, metadata_mapping(lap_a.lapa12_metadata) AS lapa12_metadata, lap_a.lapa12_metadata_comment, lap_a.lapa12a1, metadata_mapping(lap_a.lapa12a1_metadata) AS lapa12a1_metadata, lap_a.lapa12a1_metadata_comment, lap_a.lapa12a2, metadata_mapping(lap_a.lapa12a2_metadata) AS lapa12a2_metadata, lap_a.lapa12a2_metadata_comment, lap_a.lapa12a3, metadata_mapping(lap_a.lapa12a3_metadata) AS lapa12a3_metadata, lap_a.lapa12a3_metadata_comment, lap_a.lapa12a4, metadata_mapping(lap_a.lapa12a4_metadata) AS lapa12a4_metadata, lap_a.lapa12a4_metadata_comment, lap_a.lapa12a5, metadata_mapping(lap_a.lapa12a5_metadata) AS lapa12a5_metadata, lap_a.lapa12a5_metadata_comment, lap_a.lapa12a6, metadata_mapping(lap_a.lapa12a6_metadata) AS lapa12a6_metadata, lap_a.lapa12a6_metadata_comment, lap_a.lapa12a6q, metadata_mapping(lap_a.lapa12a6q_metadata) AS lapa12a6q_metadata, lap_a.lapa12a6q_metadata_comment, typebirth_mapping(lap_a.lapa13) AS lapa13, metadata_mapping(lap_a.lapa13_metadata) AS lapa13_metadata, lap_a.lapa13_metadata_comment, noyesuppercase_mapping(lap_a.lapa14) AS lapa14, metadata_mapping(lap_a.lapa14_metadata) AS lapa14_metadata, lap_a.lapa14_metadata_comment, lap_a.lapa14a, metadata_mapping(lap_a.lapa14a_metadata) AS lapa14a_metadata, lap_a.lapa14a_metadata_comment, noyesuppercase_mapping(lap_a.lapa15) AS lapa15, metadata_mapping(lap_a.lapa15_metadata) AS lapa15_metadata, lap_a.lapa15_metadata_comment, lap_a.lapa15a, metadata_mapping(lap_a.lapa15a_metadata) AS lapa15a_metadata, lap_a.lapa15a_metadata_comment, lap_a.lapa16, metadata_mapping(lap_a.lapa16_metadata) AS lapa16_metadata, lap_a.lapa16_metadata_comment, lap_a.lapa17, metadata_mapping(lap_a.lapa17_metadata) AS lapa17_metadata, lap_a.lapa17_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa18) AS lapa18, metadata_mapping(lap_a.lapa18_metadata) AS lapa18_metadata, lap_a.lapa18_metadata_comment, lap_a.lapa18a, metadata_mapping(lap_a.lapa18a_metadata) AS lapa18a_metadata, lap_a.lapa18a_metadata_comment, noyesbreastfeeding_mapping(lap_a.lapa18b) AS lapa18b, metadata_mapping(lap_a.lapa18b_metadata) AS lapa18b_metadata, lap_a.lapa18b_metadata_comment, noyesuppercase_mapping(lap_a.lapa19a) AS lapa19a, metadata_mapping(lap_a.lapa19a_metadata) AS lapa19a_metadata, lap_a.lapa19a_metadata_comment, lap_a.lapa19a1, metadata_mapping(lap_a.lapa19a1_metadata) AS lapa19a1_metadata, lap_a.lapa19a1_metadata_comment, lap_a.lapa19a2, metadata_mapping(lap_a.lapa19a2_metadata) AS lapa19a2_metadata, lap_a.lapa19a2_metadata_comment, lap_a.lapa19a3, metadata_mapping(lap_a.lapa19a3_metadata) AS lapa19a3_metadata, lap_a.lapa19a3_metadata_comment, lap_a.lapa19a4, metadata_mapping(lap_a.lapa19a4_metadata) AS lapa19a4_metadata, lap_a.lapa19a4_metadata_comment, lap_a.lapa19a4q, metadata_mapping(lap_a.lapa19a4q_metadata) AS lapa19a4q_metadata, lap_a.lapa19a4q_metadata_comment, noyesuppercase_mapping(lap_a.lapa19b) AS lapa19b, metadata_mapping(lap_a.lapa19b_metadata) AS lapa19b_metadata, lap_a.lapa19b_metadata_comment, lap_a.lapa19b1, metadata_mapping(lap_a.lapa19b1_metadata) AS lapa19b1_metadata, lap_a.lapa19b1_metadata_comment, lap_a.lapa19b2, metadata_mapping(lap_a.lapa19b2_metadata) AS lapa19b2_metadata, lap_a.lapa19b2_metadata_comment, lap_a.lapa19b3, metadata_mapping(lap_a.lapa19b3_metadata) AS lapa19b3_metadata, lap_a.lapa19b3_metadata_comment, lap_a.lapa19b3q, metadata_mapping(lap_a.lapa19b3q_metadata) AS lapa19b3q_metadata, lap_a.lapa19b3q_metadata_comment, typeofbabyfood_mapping(lap_a.lapa20) AS lapa20, metadata_mapping(lap_a.lapa20_metadata) AS lapa20_metadata, lap_a.lapa20_metadata_comment, lap_a.lapa20a, metadata_mapping(lap_a.lapa20a_metadata) AS lapa20a_metadata, lap_a.lapa20a_metadata_comment, lap_a.lapa21, metadata_mapping(lap_a.lapa21_metadata) AS lapa21_metadata, lap_a.lapa21_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa18g) AS lapa18g, metadata_mapping(lap_a.lapa18g_metadata) AS lapa18g_metadata, lap_a.lapa18g_metadata_comment, lap_a.lapa18ag, metadata_mapping(lap_a.lapa18ag_metadata) AS lapa18ag_metadata, lap_a.lapa18ag_metadata_comment, typeofbabyfood_mapping(lap_a.lapa20g) AS lapa20g, metadata_mapping(lap_a.lapa20g_metadata) AS lapa20g_metadata, lap_a.lapa20g_metadata_comment, lap_a.lapa20ag, metadata_mapping(lap_a.lapa20ag_metadata) AS lapa20ag_metadata, lap_a.lapa20ag_metadata_comment, lap_a.lapa21g, metadata_mapping(lap_a.lapa21g_metadata) AS lapa21g_metadata, lap_a.lapa21g_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa18g2) AS lapa18g2, metadata_mapping(lap_a.lapa18g2_metadata) AS lapa18g2_metadata, lap_a.lapa18g2_metadata_comment, lap_a.lapa18ag2, metadata_mapping(lap_a.lapa18ag2_metadata) AS lapa18ag2_metadata, lap_a.lapa18ag2_metadata_comment, typeofbabyfood_mapping(lap_a.lapa20g2) AS lapa20g2, metadata_mapping(lap_a.lapa20g2_metadata) AS lapa20g2_metadata, lap_a.lapa20g2_metadata_comment, lap_a.lapa20ag2, metadata_mapping(lap_a.lapa20ag2_metadata) AS lapa20ag2_metadata, lap_a.lapa20ag2_metadata_comment, lap_a.lapa21g2, metadata_mapping(lap_a.lapa21g2_metadata) AS lapa21g2_metadata, lap_a.lapa21g2_metadata_comment, yesnouppercasecorrectposition_mapping(lap_a.lapa22) AS lapa22, metadata_mapping(lap_a.lapa22_metadata) AS lapa22_metadata, lap_a.lapa22_metadata_comment, lap_a.lapa22a, metadata_mapping(lap_a.lapa22a_metadata) AS lapa22a_metadata, lap_a.lapa22a_metadata_comment, noyesuppercase_mapping(lap_a.lapa23) AS lapa23, metadata_mapping(lap_a.lapa23_metadata) AS lapa23_metadata, lap_a.lapa23_metadata_comment, lap_a.lapa24, metadata_mapping(lap_a.lapa24_metadata) AS lapa24_metadata, lap_a.lapa24_metadata_comment, noyesuppercase_mapping(lap_a.lapa25) AS lapa25, metadata_mapping(lap_a.lapa25_metadata) AS lapa25_metadata, lap_a.lapa25_metadata_comment, lap_a.lapa25a, metadata_mapping(lap_a.lapa25a_metadata) AS lapa25a_metadata, lap_a.lapa25a_metadata_comment, noyesuppercase_mapping(lap_a.lapa26) AS lapa26, metadata_mapping(lap_a.lapa26_metadata) AS lapa26_metadata, lap_a.lapa26_metadata_comment, lap_a.lapa26a1, metadata_mapping(lap_a.lapa26a1_metadata) AS lapa26a1_metadata, lap_a.lapa26a1_metadata_comment, lap_a.lapa26a2, metadata_mapping(lap_a.lapa26a2_metadata) AS lapa26a2_metadata, lap_a.lapa26a2_metadata_comment, lap_a.lapa26a3, metadata_mapping(lap_a.lapa26a3_metadata) AS lapa26a3_metadata, lap_a.lapa26a3_metadata_comment, lap_a.lapa26a4, metadata_mapping(lap_a.lapa26a4_metadata) AS lapa26a4_metadata, lap_a.lapa26a4_metadata_comment, lap_a.lapa26a5, metadata_mapping(lap_a.lapa26a5_metadata) AS lapa26a5_metadata, lap_a.lapa26a5_metadata_comment, lap_a.lapa26a6, metadata_mapping(lap_a.lapa26a6_metadata) AS lapa26a6_metadata, lap_a.lapa26a6_metadata_comment, lap_a.lapa26a6q, metadata_mapping(lap_a.lapa26a6q_metadata) AS lapa26a6q_metadata, lap_a.lapa26a6q_metadata_comment, typebirth_mapping(lap_a.lapa27) AS lapa27, metadata_mapping(lap_a.lapa27_metadata) AS lapa27_metadata, lap_a.lapa27_metadata_comment, noyesuppercase_mapping(lap_a.lapa28) AS lapa28, metadata_mapping(lap_a.lapa28_metadata) AS lapa28_metadata, lap_a.lapa28_metadata_comment, lap_a.lapa28a, metadata_mapping(lap_a.lapa28a_metadata) AS lapa28a_metadata, lap_a.lapa28a_metadata_comment, noyesuppercase_mapping(lap_a.lapa29) AS lapa29, metadata_mapping(lap_a.lapa29_metadata) AS lapa29_metadata, lap_a.lapa29_metadata_comment, lap_a.lapa29a, metadata_mapping(lap_a.lapa29a_metadata) AS lapa29a_metadata, lap_a.lapa29a_metadata_comment, lap_a.lapa30, metadata_mapping(lap_a.lapa30_metadata) AS lapa30_metadata, lap_a.lapa30_metadata_comment, at.version AS versao_lap FROM ((((((coorte.lap_a lap_a JOIN public.activity a ON ((a.id = lap_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_lap_a OWNER TO postgres;

--
-- Name: v_lap_b; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_lap_b AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS lapbdataapini, a.finalization_date AS lapbdataapfim, o.date AS lapbdataoffline, u.code AS lapbaferidor, ou.code AS lapbdigitador, stillpregnantwithindicationofdeath_mapping(lap_b.lapb1) AS lapb1, metadata_mapping(lap_b.lapb1_metadata) AS lapb1_metadata, lap_b.lapb1_metadata_comment, lap_b.lapb3, metadata_mapping(lap_b.lapb3_metadata) AS lapb3_metadata, lap_b.lapb3_metadata_comment, sex_mapping(lap_b.lapb7) AS lapb7, metadata_mapping(lap_b.lapb7_metadata) AS lapb7_metadata, lap_b.lapb7_metadata_comment, lap_b.lapb4, metadata_mapping(lap_b.lapb4_metadata) AS lapb4_metadata, lap_b.lapb4_metadata_comment, goodisyourbaby_mapping(lap_b.lapb5) AS lapb5, metadata_mapping(lap_b.lapb5_metadata) AS lapb5_metadata, lap_b.lapb5_metadata_comment, lap_b.lapb5a, metadata_mapping(lap_b.lapb5a_metadata) AS lapb5a_metadata, lap_b.lapb5a_metadata_comment, lap_b.lapb5b, metadata_mapping(lap_b.lapb5b_metadata) AS lapb5b_metadata, lap_b.lapb5b_metadata_comment, yesnouppercasecorrectposition_mapping(lap_b.lapb5c) AS lapb5c, metadata_mapping(lap_b.lapb5c_metadata) AS lapb5c_metadata, lap_b.lapb5c_metadata_comment, lap_b.lapb5d, metadata_mapping(lap_b.lapb5d_metadata) AS lapb5d_metadata, lap_b.lapb5d_metadata_comment, lap_b.lapb6, metadata_mapping(lap_b.lapb6_metadata) AS lapb6_metadata, lap_b.lapb6_metadata_comment, lap_b.lapb8, metadata_mapping(lap_b.lapb8_metadata) AS lapb8_metadata, lap_b.lapb8_metadata_comment, lap_b.lapb9, metadata_mapping(lap_b.lapb9_metadata) AS lapb9_metadata, lap_b.lapb9_metadata_comment, lap_b.lapb10, metadata_mapping(lap_b.lapb10_metadata) AS lapb10_metadata, lap_b.lapb10_metadata_comment, lap_b.lapb11a, metadata_mapping(lap_b.lapb11a_metadata) AS lapb11a_metadata, lap_b.lapb11a_metadata_comment, lap_b.lapb11b, metadata_mapping(lap_b.lapb11b_metadata) AS lapb11b_metadata, lap_b.lapb11b_metadata_comment, typepregnancy_mapping(lap_b.prta5) AS prta5, metadata_mapping(lap_b.prta5_metadata) AS prta5_metadata, lap_b.prta5_metadata_comment, lap_b.prta5a, metadata_mapping(lap_b.prta5a_metadata) AS prta5a_metadata, lap_b.prta5a_metadata_comment, sex_mapping(lap_b.lapb7g) AS lapb7g, metadata_mapping(lap_b.lapb7g_metadata) AS lapb7g_metadata, lap_b.lapb7g_metadata_comment, lap_b.lapb4g, metadata_mapping(lap_b.lapb4g_metadata) AS lapb4g_metadata, lap_b.lapb4g_metadata_comment, goodisyourbaby_mapping(lap_b.lapb5g) AS lapb5g, metadata_mapping(lap_b.lapb5g_metadata) AS lapb5g_metadata, lap_b.lapb5g_metadata_comment, lap_b.lapb5ag, metadata_mapping(lap_b.lapb5ag_metadata) AS lapb5ag_metadata, lap_b.lapb5ag_metadata_comment, lap_b.lapb5bg, metadata_mapping(lap_b.lapb5bg_metadata) AS lapb5bg_metadata, lap_b.lapb5bg_metadata_comment, yesnouppercasecorrectposition_mapping(lap_b.lapb5cg) AS lapb5cg, metadata_mapping(lap_b.lapb5cg_metadata) AS lapb5cg_metadata, lap_b.lapb5cg_metadata_comment, lap_b.lapb5dg, metadata_mapping(lap_b.lapb5dg_metadata) AS lapb5dg_metadata, lap_b.lapb5dg_metadata_comment, lap_b.lapb6g, metadata_mapping(lap_b.lapb6g_metadata) AS lapb6g_metadata, lap_b.lapb6g_metadata_comment, lap_b.lapb8g, metadata_mapping(lap_b.lapb8g_metadata) AS lapb8g_metadata, lap_b.lapb8g_metadata_comment, lap_b.lapb9g, metadata_mapping(lap_b.lapb9g_metadata) AS lapb9g_metadata, lap_b.lapb9g_metadata_comment, lap_b.lapb10g, metadata_mapping(lap_b.lapb10g_metadata) AS lapb10g_metadata, lap_b.lapb10g_metadata_comment, lap_b.lapb11ag, metadata_mapping(lap_b.lapb11ag_metadata) AS lapb11ag_metadata, lap_b.lapb11ag_metadata_comment, lap_b.lapb11bg, metadata_mapping(lap_b.lapb11bg_metadata) AS lapb11bg_metadata, lap_b.lapb11bg_metadata_comment, sex_mapping(lap_b.lapb7g2) AS lapb7g2, metadata_mapping(lap_b.lapb7g2_metadata) AS lapb7g2_metadata, lap_b.lapb7g2_metadata_comment, lap_b.lapb4g2, metadata_mapping(lap_b.lapb4g2_metadata) AS lapb4g2_metadata, lap_b.lapb4g2_metadata_comment, goodisyourbaby_mapping(lap_b.lapb5g2) AS lapb5g2, metadata_mapping(lap_b.lapb5g2_metadata) AS lapb5g2_metadata, lap_b.lapb5g2_metadata_comment, lap_b.lapb5ag2, metadata_mapping(lap_b.lapb5ag2_metadata) AS lapb5ag2_metadata, lap_b.lapb5ag2_metadata_comment, lap_b.lapb5bg2, metadata_mapping(lap_b.lapb5bg2_metadata) AS lapb5bg2_metadata, lap_b.lapb5bg2_metadata_comment, yesnouppercasecorrectposition_mapping(lap_b.lapb5cg2) AS lapb5cg2, metadata_mapping(lap_b.lapb5cg2_metadata) AS lapb5cg2_metadata, lap_b.lapb5cg2_metadata_comment, lap_b.lapb5dg2, metadata_mapping(lap_b.lapb5dg2_metadata) AS lapb5dg2_metadata, lap_b.lapb5dg2_metadata_comment, lap_b.lapb6g2, metadata_mapping(lap_b.lapb6g2_metadata) AS lapb6g2_metadata, lap_b.lapb6g2_metadata_comment, lap_b.lapb8g2, metadata_mapping(lap_b.lapb8g2_metadata) AS lapb8g2_metadata, lap_b.lapb8g2_metadata_comment, lap_b.lapb9g2, metadata_mapping(lap_b.lapb9g2_metadata) AS lapb9g2_metadata, lap_b.lapb9g2_metadata_comment, lap_b.lapb10g2, metadata_mapping(lap_b.lapb10g2_metadata) AS lapb10g2_metadata, lap_b.lapb10g2_metadata_comment, lap_b.lapb11ag2, metadata_mapping(lap_b.lapb11ag2_metadata) AS lapb11ag2_metadata, lap_b.lapb11ag2_metadata_comment, lap_b.lapb11bg2, metadata_mapping(lap_b.lapb11bg2_metadata) AS lapb11bg2_metadata, lap_b.lapb11bg2_metadata_comment, noyesuppercase_mapping(lap_b.lapb12) AS lapb12, metadata_mapping(lap_b.lapb12_metadata) AS lapb12_metadata, lap_b.lapb12_metadata_comment, lap_b.lapb12a1, metadata_mapping(lap_b.lapb12a1_metadata) AS lapb12a1_metadata, lap_b.lapb12a1_metadata_comment, lap_b.lapb12a2, metadata_mapping(lap_b.lapb12a2_metadata) AS lapb12a2_metadata, lap_b.lapb12a2_metadata_comment, lap_b.lapb12a3, metadata_mapping(lap_b.lapb12a3_metadata) AS lapb12a3_metadata, lap_b.lapb12a3_metadata_comment, lap_b.lapb12a4, metadata_mapping(lap_b.lapb12a4_metadata) AS lapb12a4_metadata, lap_b.lapb12a4_metadata_comment, lap_b.lapb12a5, metadata_mapping(lap_b.lapb12a5_metadata) AS lapb12a5_metadata, lap_b.lapb12a5_metadata_comment, yesnouppercasecorrectposition_mapping(lap_b.lapb12a5q) AS lapb12a5q, metadata_mapping(lap_b.lapb12a5q_metadata) AS lapb12a5q_metadata, lap_b.lapb12a5q_metadata_comment, lap_b.lapb12a6, metadata_mapping(lap_b.lapb12a6_metadata) AS lapb12a6_metadata, lap_b.lapb12a6_metadata_comment, lap_b.lapb12a6q, metadata_mapping(lap_b.lapb12a6q_metadata) AS lapb12a6q_metadata, lap_b.lapb12a6q_metadata_comment, typechildbed_mapping(lap_b.lapb13) AS lapb13, metadata_mapping(lap_b.lapb13_metadata) AS lapb13_metadata, lap_b.lapb13_metadata_comment, noyesuppercase_mapping(lap_b.lapb14) AS lapb14, metadata_mapping(lap_b.lapb14_metadata) AS lapb14_metadata, lap_b.lapb14_metadata_comment, lap_b.lapb14a1, metadata_mapping(lap_b.lapb14a1_metadata) AS lapb14a1_metadata, lap_b.lapb14a1_metadata_comment, lap_b.lapb14a2, metadata_mapping(lap_b.lapb14a2_metadata) AS lapb14a2_metadata, lap_b.lapb14a2_metadata_comment, lap_b.lapb14a3, metadata_mapping(lap_b.lapb14a3_metadata) AS lapb14a3_metadata, lap_b.lapb14a3_metadata_comment, lap_b.lapb14a3q, metadata_mapping(lap_b.lapb14a3q_metadata) AS lapb14a3q_metadata, lap_b.lapb14a3q_metadata_comment, noyesuppercase_mapping(lap_b.lapb15) AS lapb15, metadata_mapping(lap_b.lapb15_metadata) AS lapb15_metadata, lap_b.lapb15_metadata_comment, lap_b.lapb15a1, metadata_mapping(lap_b.lapb15a1_metadata) AS lapb15a1_metadata, lap_b.lapb15a1_metadata_comment, lap_b.lapb15a2, metadata_mapping(lap_b.lapb15a2_metadata) AS lapb15a2_metadata, lap_b.lapb15a2_metadata_comment, lap_b.lapb15a3, metadata_mapping(lap_b.lapb15a3_metadata) AS lapb15a3_metadata, lap_b.lapb15a3_metadata_comment, lap_b.lapb15a3q, metadata_mapping(lap_b.lapb15a3q_metadata) AS lapb15a3q_metadata, lap_b.lapb15a3q_metadata_comment, lap_b.lapb16, metadata_mapping(lap_b.lapb16_metadata) AS lapb16_metadata, lap_b.lapb16_metadata_comment, lap_b.lapb17, metadata_mapping(lap_b.lapb17_metadata) AS lapb17_metadata, lap_b.lapb17_metadata_comment, yesnouppercasecorrectposition_mapping(lap_b.lapb18) AS lapb18, metadata_mapping(lap_b.lapb18_metadata) AS lapb18_metadata, lap_b.lapb18_metadata_comment, typebreastfeeding_mapping(lap_b.lapb19) AS lapb19, metadata_mapping(lap_b.lapb19_metadata) AS lapb19_metadata, lap_b.lapb19_metadata_comment, lap_b.lapb19a, metadata_mapping(lap_b.lapb19a_metadata) AS lapb19a_metadata, lap_b.lapb19a_metadata_comment, noyesuppercase_mapping(lap_b.lapb19b) AS lapb19b, metadata_mapping(lap_b.lapb19b_metadata) AS lapb19b_metadata, lap_b.lapb19b_metadata_comment, noyesuppercase_mapping(lap_b.lapb19c) AS lapb19c, metadata_mapping(lap_b.lapb19c_metadata) AS lapb19c_metadata, lap_b.lapb19c_metadata_comment, noyesuppercase_mapping(lap_b.lapb20a) AS lapb20a, metadata_mapping(lap_b.lapb20a_metadata) AS lapb20a_metadata, lap_b.lapb20a_metadata_comment, lap_b.lapb20a1, metadata_mapping(lap_b.lapb20a1_metadata) AS lapb20a1_metadata, lap_b.lapb20a1_metadata_comment, lap_b.lapb20a2, metadata_mapping(lap_b.lapb20a2_metadata) AS lapb20a2_metadata, lap_b.lapb20a2_metadata_comment, lap_b.lapb20a3, metadata_mapping(lap_b.lapb20a3_metadata) AS lapb20a3_metadata, lap_b.lapb20a3_metadata_comment, lap_b.lapb20a4, metadata_mapping(lap_b.lapb20a4_metadata) AS lapb20a4_metadata, lap_b.lapb20a4_metadata_comment, lap_b.lapb20a4q, metadata_mapping(lap_b.lapb20a4q_metadata) AS lapb20a4q_metadata, lap_b.lapb20a4q_metadata_comment, noyesuppercase_mapping(lap_b.lapb20b) AS lapb20b, metadata_mapping(lap_b.lapb20b_metadata) AS lapb20b_metadata, lap_b.lapb20b_metadata_comment, lap_b.lapb20b1, metadata_mapping(lap_b.lapb20b1_metadata) AS lapb20b1_metadata, lap_b.lapb20b1_metadata_comment, lap_b.lapb20b2, metadata_mapping(lap_b.lapb20b2_metadata) AS lapb20b2_metadata, lap_b.lapb20b2_metadata_comment, lap_b.lapb20b3, metadata_mapping(lap_b.lapb20b3_metadata) AS lapb20b3_metadata, lap_b.lapb20b3_metadata_comment, lap_b.lapb20b3q, metadata_mapping(lap_b.lapb20b3q_metadata) AS lapb20b3q_metadata, lap_b.lapb20b3q_metadata_comment, phonecallsaboutproblems_mapping(lap_b.lapb20bb) AS lapb20bb, metadata_mapping(lap_b.lapb20bb_metadata) AS lapb20bb_metadata, lap_b.lapb20bb_metadata_comment, typebabyfoodindicatedperiodofbreastfeeding_mapping(lap_b.lapb21) AS lapb21, metadata_mapping(lap_b.lapb21_metadata) AS lapb21_metadata, lap_b.lapb21_metadata_comment, milkorformula_mapping(lap_b.lapb21a) AS lapb21a, metadata_mapping(lap_b.lapb21a_metadata) AS lapb21a_metadata, lap_b.lapb21a_metadata_comment, lap_b.lapb21aq, metadata_mapping(lap_b.lapb21aq_metadata) AS lapb21aq_metadata, lap_b.lapb21aq_metadata_comment, lap_b.lapb22, metadata_mapping(lap_b.lapb22_metadata) AS lapb22_metadata, lap_b.lapb22_metadata_comment, typebreastfeeding_mapping(lap_b.lapb19g) AS lapb19g, metadata_mapping(lap_b.lapb19g_metadata) AS lapb19g_metadata, lap_b.lapb19g_metadata_comment, lap_b.lapb19ag, metadata_mapping(lap_b.lapb19ag_metadata) AS lapb19ag_metadata, lap_b.lapb19ag_metadata_comment, typebabyfoodindicatedperiodofbreastfeeding_mapping(lap_b.lapb21g) AS lapb21g, metadata_mapping(lap_b.lapb21g_metadata) AS lapb21g_metadata, lap_b.lapb21g_metadata_comment, milkorformula_mapping(lap_b.lapb21ag) AS lapb21ag, metadata_mapping(lap_b.lapb21ag_metadata) AS lapb21ag_metadata, lap_b.lapb21ag_metadata_comment, lap_b.lapb21aqg, metadata_mapping(lap_b.lapb21aqg_metadata) AS lapb21aqg_metadata, lap_b.lapb21aqg_metadata_comment, lap_b.lapb22g, metadata_mapping(lap_b.lapb22g_metadata) AS lapb22g_metadata, lap_b.lapb22g_metadata_comment, typebreastfeeding_mapping(lap_b.lapb19g2) AS lapb19g2, metadata_mapping(lap_b.lapb19g2_metadata) AS lapb19g2_metadata, lap_b.lapb19g2_metadata_comment, lap_b.lapb19ag2, metadata_mapping(lap_b.lapb19ag2_metadata) AS lapb19ag2_metadata, lap_b.lapb19ag2_metadata_comment, typebabyfoodindicatedperiodofbreastfeeding_mapping(lap_b.lapb21g2) AS lapb21g2, metadata_mapping(lap_b.lapb21g2_metadata) AS lapb21g2_metadata, lap_b.lapb21g2_metadata_comment, milkorformula_mapping(lap_b.lapb21ag2) AS lapb21ag2, metadata_mapping(lap_b.lapb21ag2_metadata) AS lapb21ag2_metadata, lap_b.lapb21ag2_metadata_comment, lap_b.lapb21aqg2, metadata_mapping(lap_b.lapb21aqg2_metadata) AS lapb21aqg2_metadata, lap_b.lapb21aqg2_metadata_comment, lap_b.lapb22g2, metadata_mapping(lap_b.lapb22g2_metadata) AS lapb22g2_metadata, lap_b.lapb22g2_metadata_comment, noyesuppercase_mapping(lap_b.lapb24) AS lapb24, metadata_mapping(lap_b.lapb24_metadata) AS lapb24_metadata, lap_b.lapb24_metadata_comment, lap_b.lapb25, metadata_mapping(lap_b.lapb25_metadata) AS lapb25_metadata, lap_b.lapb25_metadata_comment, noyesuppercase_mapping(lap_b.lapb26) AS lapb26, metadata_mapping(lap_b.lapb26_metadata) AS lapb26_metadata, lap_b.lapb26_metadata_comment, lap_b.lapb26a, metadata_mapping(lap_b.lapb26a_metadata) AS lapb26a_metadata, lap_b.lapb26a_metadata_comment, noyesuppercase_mapping(lap_b.lapb27) AS lapb27, metadata_mapping(lap_b.lapb27_metadata) AS lapb27_metadata, lap_b.lapb27_metadata_comment, lap_b.lapb27a1, metadata_mapping(lap_b.lapb27a1_metadata) AS lapb27a1_metadata, lap_b.lapb27a1_metadata_comment, lap_b.lapb27a2, metadata_mapping(lap_b.lapb27a2_metadata) AS lapb27a2_metadata, lap_b.lapb27a2_metadata_comment, lap_b.lapb27a3, metadata_mapping(lap_b.lapb27a3_metadata) AS lapb27a3_metadata, lap_b.lapb27a3_metadata_comment, lap_b.lapb27a4, metadata_mapping(lap_b.lapb27a4_metadata) AS lapb27a4_metadata, lap_b.lapb27a4_metadata_comment, lap_b.lapb27a5, metadata_mapping(lap_b.lapb27a5_metadata) AS lapb27a5_metadata, lap_b.lapb27a5_metadata_comment, yesnouppercasecorrectposition_mapping(lap_b.lapb27a5q) AS lapb27a5q, metadata_mapping(lap_b.lapb27a5q_metadata) AS lapb27a5q_metadata, lap_b.lapb27a5q_metadata_comment, lap_b.lapb27a6, metadata_mapping(lap_b.lapb27a6_metadata) AS lapb27a6_metadata, lap_b.lapb27a6_metadata_comment, lap_b.lapb27a6q, metadata_mapping(lap_b.lapb27a6q_metadata) AS lapb27a6q_metadata, lap_b.lapb27a6q_metadata_comment, typechildbed_mapping(lap_b.lapb28) AS lapb28, metadata_mapping(lap_b.lapb28_metadata) AS lapb28_metadata, lap_b.lapb28_metadata_comment, noyesuppercase_mapping(lap_b.lapb29) AS lapb29, metadata_mapping(lap_b.lapb29_metadata) AS lapb29_metadata, lap_b.lapb29_metadata_comment, lap_b.lapb29a1, metadata_mapping(lap_b.lapb29a1_metadata) AS lapb29a1_metadata, lap_b.lapb29a1_metadata_comment, lap_b.lapb29a2, metadata_mapping(lap_b.lapb29a2_metadata) AS lapb29a2_metadata, lap_b.lapb29a2_metadata_comment, lap_b.lapb29a3, metadata_mapping(lap_b.lapb29a3_metadata) AS lapb29a3_metadata, lap_b.lapb29a3_metadata_comment, lap_b.lapb29a3q, metadata_mapping(lap_b.lapb29a3q_metadata) AS lapb29a3q_metadata, lap_b.lapb29a3q_metadata_comment, noyesuppercase_mapping(lap_b.lapb30) AS lapb30, metadata_mapping(lap_b.lapb30_metadata) AS lapb30_metadata, lap_b.lapb30_metadata_comment, lap_b.lapb30a1, metadata_mapping(lap_b.lapb30a1_metadata) AS lapb30a1_metadata, lap_b.lapb30a1_metadata_comment, lap_b.lapb30a2, metadata_mapping(lap_b.lapb30a2_metadata) AS lapb30a2_metadata, lap_b.lapb30a2_metadata_comment, lap_b.lapb30a3, metadata_mapping(lap_b.lapb30a3_metadata) AS lapb30a3_metadata, lap_b.lapb30a3_metadata_comment, lap_b.lapb30a3q, metadata_mapping(lap_b.lapb30a3q_metadata) AS lapb30a3q_metadata, lap_b.lapb30a3q_metadata_comment, lap_b.lapb31, metadata_mapping(lap_b.lapb31_metadata) AS lapb31_metadata, lap_b.lapb31_metadata_comment, lap_b.lapb32, metadata_mapping(lap_b.lapb32_metadata) AS lapb32_metadata, lap_b.lapb32_metadata_comment, at.version AS versao_lap FROM ((((((coorte.lap_b lap_b JOIN public.activity a ON ((a.id = lap_b.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_lap_b OWNER TO postgres;

--
-- Name: v_lid_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_lid_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS lidadataapini, a.finalization_date AS lidadataapfim, o.date AS lidadataoffline, u.code AS lidaaferidor, ou.code AS lidadigitador, lid_a.lida1, metadata_mapping(lid_a.lida1_metadata) AS lida1_metadata, lid_a.lida1_metadata_comment, yesnouppercasecorrectposition_mapping(lid_a.lida2) AS lida2, metadata_mapping(lid_a.lida2_metadata) AS lida2_metadata, lid_a.lida2_metadata_comment, lid_a.lida2a, metadata_mapping(lid_a.lida2a_metadata) AS lida2a_metadata, lid_a.lida2a_metadata_comment, beingbreastfed_mapping(lid_a.lida3) AS lida3, metadata_mapping(lid_a.lida3_metadata) AS lida3_metadata, lid_a.lida3_metadata_comment, lid_a.lida3a, metadata_mapping(lid_a.lida3a_metadata) AS lida3a_metadata, lid_a.lida3a_metadata_comment, twins_mapping(lid_a.prta5) AS prta5, metadata_mapping(lid_a.prta5_metadata) AS prta5_metadata, lid_a.prta5_metadata_comment, lid_a.prta5a, metadata_mapping(lid_a.prta5a_metadata) AS prta5a_metadata, lid_a.prta5a_metadata_comment, lid_a.lida1g, metadata_mapping(lid_a.lida1g_metadata) AS lida1g_metadata, lid_a.lida1g_metadata_comment, yesnouppercasecorrectposition_mapping(lid_a.lida2g) AS lida2g, metadata_mapping(lid_a.lida2g_metadata) AS lida2g_metadata, lid_a.lida2g_metadata_comment, lid_a.lida2ag, metadata_mapping(lid_a.lida2ag_metadata) AS lida2ag_metadata, lid_a.lida2ag_metadata_comment, beingbreastfed_mapping(lid_a.lida3g) AS lida3g, metadata_mapping(lid_a.lida3g_metadata) AS lida3g_metadata, lid_a.lida3g_metadata_comment, lid_a.lida3ag, metadata_mapping(lid_a.lida3ag_metadata) AS lida3ag_metadata, lid_a.lida3ag_metadata_comment, lid_a.lida1g2, metadata_mapping(lid_a.lida1g2_metadata) AS lida1g2_metadata, lid_a.lida1g2_metadata_comment, yesnouppercasecorrectposition_mapping(lid_a.lida2g2) AS lida2g2, metadata_mapping(lid_a.lida2g2_metadata) AS lida2g2_metadata, lid_a.lida2g2_metadata_comment, lid_a.lida2ag2, metadata_mapping(lid_a.lida2ag2_metadata) AS lida2ag2_metadata, lid_a.lida2ag2_metadata_comment, beingbreastfed_mapping(lid_a.lida3g2) AS lida3g2, metadata_mapping(lid_a.lida3g2_metadata) AS lida3g2_metadata, lid_a.lida3g2_metadata_comment, lid_a.lida3ag2, metadata_mapping(lid_a.lida3ag2_metadata) AS lida3ag2_metadata, lid_a.lida3ag2_metadata_comment, lid_a.lida4, metadata_mapping(lid_a.lida4_metadata) AS lida4_metadata, lid_a.lida4_metadata_comment, lid_a.lida4a, metadata_mapping(lid_a.lida4a_metadata) AS lida4a_metadata, lid_a.lida4a_metadata_comment, noyesuppercase_mapping(lid_a.lida5) AS lida5, metadata_mapping(lid_a.lida5_metadata) AS lida5_metadata, lid_a.lida5_metadata_comment, metadata_mapping(lid_a.lida5a_metadata) AS lida5a_metadata, lid_a.lida5a_metadata_comment, lid_a.lida5a1, metadata_mapping(lid_a.lida5a1_metadata) AS lida5a1_metadata, lid_a.lida5a1_metadata_comment, lid_a.lida5a2, metadata_mapping(lid_a.lida5a2_metadata) AS lida5a2_metadata, lid_a.lida5a2_metadata_comment, lid_a.lida5a3, metadata_mapping(lid_a.lida5a3_metadata) AS lida5a3_metadata, lid_a.lida5a3_metadata_comment, lid_a.lida5a4, metadata_mapping(lid_a.lida5a4_metadata) AS lida5a4_metadata, lid_a.lida5a4_metadata_comment, lid_a.lida5aq, metadata_mapping(lid_a.lida5aq_metadata) AS lida5aq_metadata, lid_a.lida5aq_metadata_comment, noyesuppercase_mapping(lid_a.lida6) AS lida6, metadata_mapping(lid_a.lida6_metadata) AS lida6_metadata, lid_a.lida6_metadata_comment, lid_a.lida6a, metadata_mapping(lid_a.lida6a_metadata) AS lida6a_metadata, lid_a.lida6a_metadata_comment, noyesuppercase_mapping(lid_a.lida7) AS lida7, metadata_mapping(lid_a.lida7_metadata) AS lida7_metadata, lid_a.lida7_metadata_comment, noyesuppercase_mapping(lid_a.lida7a) AS lida7a, metadata_mapping(lid_a.lida7a_metadata) AS lida7a_metadata, lid_a.lida7a_metadata_comment, lid_a.lida7b, metadata_mapping(lid_a.lida7b_metadata) AS lida7b_metadata, lid_a.lida7b_metadata_comment, noyesuppercase_mapping(lid_a.lida8) AS lida8, metadata_mapping(lid_a.lida8_metadata) AS lida8_metadata, lid_a.lida8_metadata_comment, lid_a.lida8a, metadata_mapping(lid_a.lida8a_metadata) AS lida8a_metadata, lid_a.lida8a_metadata_comment, noyesuppercase_mapping(lid_a.lida9) AS lida9, metadata_mapping(lid_a.lida9_metadata) AS lida9_metadata, lid_a.lida9_metadata_comment, lid_a.lida9a, metadata_mapping(lid_a.lida9a_metadata) AS lida9a_metadata, lid_a.lida9a_metadata_comment, noyesuppercase_mapping(lid_a.lida10) AS lida10, metadata_mapping(lid_a.lida10_metadata) AS lida10_metadata, lid_a.lida10_metadata_comment, lid_a.lida10a, metadata_mapping(lid_a.lida10a_metadata) AS lida10a_metadata, lid_a.lida10a_metadata_comment, noyesuppercase_mapping(lid_a.lida11) AS lida11, metadata_mapping(lid_a.lida11_metadata) AS lida11_metadata, lid_a.lida11_metadata_comment, lid_a.lida11a, metadata_mapping(lid_a.lida11a_metadata) AS lida11a_metadata, lid_a.lida11a_metadata_comment, noyesuppercase_mapping(lid_a.lida12) AS lida12, metadata_mapping(lid_a.lida12_metadata) AS lida12_metadata, lid_a.lida12_metadata_comment, lid_a.lida12a, metadata_mapping(lid_a.lida12a_metadata) AS lida12a_metadata, lid_a.lida12a_metadata_comment, noyesuppercase_mapping(lid_a.lida13) AS lida13, metadata_mapping(lid_a.lida13_metadata) AS lida13_metadata, lid_a.lida13_metadata_comment, lid_a.lida13a, metadata_mapping(lid_a.lida13a_metadata) AS lida13a_metadata, lid_a.lida13a_metadata_comment, noyesuppercase_mapping(lid_a.lida14) AS lida14, metadata_mapping(lid_a.lida14_metadata) AS lida14_metadata, lid_a.lida14_metadata_comment, lid_a.lida14a, metadata_mapping(lid_a.lida14a_metadata) AS lida14a_metadata, lid_a.lida14a_metadata_comment, noyesuppercase_mapping(lid_a.lida15) AS lida15, metadata_mapping(lid_a.lida15_metadata) AS lida15_metadata, lid_a.lida15_metadata_comment, lid_a.lida15a, metadata_mapping(lid_a.lida15a_metadata) AS lida15a_metadata, lid_a.lida15a_metadata_comment, noyesuppercase_mapping(lid_a.lida16) AS lida16, metadata_mapping(lid_a.lida16_metadata) AS lida16_metadata, lid_a.lida16_metadata_comment, lid_a.lida16a, metadata_mapping(lid_a.lida16a_metadata) AS lida16a_metadata, lid_a.lida16a_metadata_comment, noyesuppercase_mapping(lid_a.lida17) AS lida17, metadata_mapping(lid_a.lida17_metadata) AS lida17_metadata, lid_a.lida17_metadata_comment, lid_a.lida17a, metadata_mapping(lid_a.lida17a_metadata) AS lida17a_metadata, lid_a.lida17a_metadata_comment, at.version AS versao_lid FROM ((((((coorte.lid_a lid_a JOIN public.activity a ON ((a.id = lid_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_lid_a OWNER TO postgres;

--
-- Name: v_liu_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_liu_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS liuadataapini, a.finalization_date AS liuadataapfim, o.date AS liuadataoffline, u.code AS liuaaferidor, ou.code AS liuadigitador, babysiting_mapping(liu_a.liua1) AS liua1, metadata_mapping(liu_a.liua1_metadata) AS liua1_metadata, liu_a.liua1_metadata_comment, liu_a.liua1a, metadata_mapping(liu_a.liua1a_metadata) AS liua1a_metadata, liu_a.liua1a_metadata_comment, liu_a.liua1b, metadata_mapping(liu_a.liua1b_metadata) AS liua1b_metadata, liu_a.liua1b_metadata_comment, yesnouppercasecorrectposition_mapping(liu_a.liua1c) AS liua1c, metadata_mapping(liu_a.liua1c_metadata) AS liua1c_metadata, liu_a.liua1c_metadata_comment, liu_a.liua1d, metadata_mapping(liu_a.liua1d_metadata) AS liua1d_metadata, liu_a.liua1d_metadata_comment, liu_a.liua21, metadata_mapping(liu_a.liua21_metadata) AS liua21_metadata, liu_a.liua21_metadata_comment, liu_a.liua21q, metadata_mapping(liu_a.liua21q_metadata) AS liua21q_metadata, liu_a.liua21q_metadata_comment, liu_a.liua22, metadata_mapping(liu_a.liua22_metadata) AS liua22_metadata, liu_a.liua22_metadata_comment, liu_a.liua22q1, metadata_mapping(liu_a.liua22q1_metadata) AS liua22q1_metadata, liu_a.liua22q1_metadata_comment, liu_a.liua22q2, metadata_mapping(liu_a.liua22q2_metadata) AS liua22q2_metadata, liu_a.liua22q2_metadata_comment, liu_a.liua23, metadata_mapping(liu_a.liua23_metadata) AS liua23_metadata, liu_a.liua23_metadata_comment, liu_a.liua23q, metadata_mapping(liu_a.liua23q_metadata) AS liua23q_metadata, liu_a.liua23q_metadata_comment, yesnouppercasecorrectposition_mapping(liu_a.liua3) AS liua3, metadata_mapping(liu_a.liua3_metadata) AS liua3_metadata, liu_a.liua3_metadata_comment, liu_a.liua3a, metadata_mapping(liu_a.liua3a_metadata) AS liua3a_metadata, liu_a.liua3a_metadata_comment, typeofbabyfoodrestrictedquestion_mapping(liu_a.liua4) AS liua4, metadata_mapping(liu_a.liua4_metadata) AS liua4_metadata, liu_a.liua4_metadata_comment, liu_a.liua4a, metadata_mapping(liu_a.liua4a_metadata) AS liua4a_metadata, liu_a.liua4a_metadata_comment, typepregnancy_mapping(liu_a.prta5) AS prta5, metadata_mapping(liu_a.prta5_metadata) AS prta5_metadata, liu_a.prta5_metadata_comment, liu_a.prta5a, metadata_mapping(liu_a.prta5a_metadata) AS prta5a_metadata, liu_a.prta5a_metadata_comment, babysiting_mapping(liu_a.liua1g) AS liua1g, metadata_mapping(liu_a.liua1g_metadata) AS liua1g_metadata, liu_a.liua1g_metadata_comment, liu_a.liua1ag, metadata_mapping(liu_a.liua1ag_metadata) AS liua1ag_metadata, liu_a.liua1ag_metadata_comment, liu_a.liua1bg, metadata_mapping(liu_a.liua1bg_metadata) AS liua1bg_metadata, liu_a.liua1bg_metadata_comment, yesnouppercasecorrectposition_mapping(liu_a.liua1cg) AS liua1cg, metadata_mapping(liu_a.liua1cg_metadata) AS liua1cg_metadata, liu_a.liua1cg_metadata_comment, liu_a.liua1dg, metadata_mapping(liu_a.liua1dg_metadata) AS liua1dg_metadata, liu_a.liua1dg_metadata_comment, liu_a.liua21g, metadata_mapping(liu_a.liua21g_metadata) AS liua21g_metadata, liu_a.liua21g_metadata_comment, liu_a.liua21qg, metadata_mapping(liu_a.liua21qg_metadata) AS liua21qg_metadata, liu_a.liua21qg_metadata_comment, liu_a.liua22g, metadata_mapping(liu_a.liua22g_metadata) AS liua22g_metadata, liu_a.liua22g_metadata_comment, liu_a.liua22q1g, metadata_mapping(liu_a.liua22q1g_metadata) AS liua22q1g_metadata, liu_a.liua22q1g_metadata_comment, liu_a.liua22q2g, metadata_mapping(liu_a.liua22q2g_metadata) AS liua22q2g_metadata, liu_a.liua22q2g_metadata_comment, liu_a.liua23g, metadata_mapping(liu_a.liua23g_metadata) AS liua23g_metadata, liu_a.liua23g_metadata_comment, liu_a.liua23qg, metadata_mapping(liu_a.liua23qg_metadata) AS liua23qg_metadata, liu_a.liua23qg_metadata_comment, yesnouppercasecorrectposition_mapping(liu_a.liua3g) AS liua3g, metadata_mapping(liu_a.liua3g_metadata) AS liua3g_metadata, liu_a.liua3g_metadata_comment, liu_a.liua3ag, metadata_mapping(liu_a.liua3ag_metadata) AS liua3ag_metadata, liu_a.liua3ag_metadata_comment, typeofbabyfoodrestrictedquestion_mapping(liu_a.liua4g) AS liua4g, metadata_mapping(liu_a.liua4g_metadata) AS liua4g_metadata, liu_a.liua4g_metadata_comment, liu_a.liua4ag, metadata_mapping(liu_a.liua4ag_metadata) AS liua4ag_metadata, liu_a.liua4ag_metadata_comment, babysiting_mapping(liu_a.liua1g2) AS liua1g2, metadata_mapping(liu_a.liua1g2_metadata) AS liua1g2_metadata, liu_a.liua1g2_metadata_comment, liu_a.liua1ag2, metadata_mapping(liu_a.liua1ag2_metadata) AS liua1ag2_metadata, liu_a.liua1ag2_metadata_comment, liu_a.liua1bg2, metadata_mapping(liu_a.liua1bg2_metadata) AS liua1bg2_metadata, liu_a.liua1bg2_metadata_comment, yesnouppercasecorrectposition_mapping(liu_a.liua1cg2) AS liua1cg2, metadata_mapping(liu_a.liua1cg2_metadata) AS liua1cg2_metadata, liu_a.liua1cg2_metadata_comment, liu_a.liua1dg2, metadata_mapping(liu_a.liua1dg2_metadata) AS liua1dg2_metadata, liu_a.liua1dg2_metadata_comment, liu_a.liua21g2, metadata_mapping(liu_a.liua21g2_metadata) AS liua21g2_metadata, liu_a.liua21g2_metadata_comment, liu_a.liua21qg2, metadata_mapping(liu_a.liua21qg2_metadata) AS liua21qg2_metadata, liu_a.liua21qg2_metadata_comment, liu_a.liua22g2, metadata_mapping(liu_a.liua22g2_metadata) AS liua22g2_metadata, liu_a.liua22g2_metadata_comment, liu_a.liua22q1g2, metadata_mapping(liu_a.liua22q1g2_metadata) AS liua22q1g2_metadata, liu_a.liua22q1g2_metadata_comment, liu_a.liua22q2g2, metadata_mapping(liu_a.liua22q2g2_metadata) AS liua22q2g2_metadata, liu_a.liua22q2g2_metadata_comment, liu_a.liua23g2, metadata_mapping(liu_a.liua23g2_metadata) AS liua23g2_metadata, liu_a.liua23g2_metadata_comment, liu_a.liua23qg2, metadata_mapping(liu_a.liua23qg2_metadata) AS liua23qg2_metadata, liu_a.liua23qg2_metadata_comment, yesnouppercasecorrectposition_mapping(liu_a.liua3g2) AS liua3g2, metadata_mapping(liu_a.liua3g2_metadata) AS liua3g2_metadata, liu_a.liua3g2_metadata_comment, liu_a.liua3ag2, metadata_mapping(liu_a.liua3ag2_metadata) AS liua3ag2_metadata, liu_a.liua3ag2_metadata_comment, typeofbabyfoodrestrictedquestion_mapping(liu_a.liua4g2) AS liua4g2, metadata_mapping(liu_a.liua4g2_metadata) AS liua4g2_metadata, liu_a.liua4g2_metadata_comment, liu_a.liua4ag2, metadata_mapping(liu_a.liua4ag2_metadata) AS liua4ag2_metadata, liu_a.liua4ag2_metadata_comment, liu_a.liua5, metadata_mapping(liu_a.liua5_metadata) AS liua5_metadata, liu_a.liua5_metadata_comment, liu_a.liua5a, metadata_mapping(liu_a.liua5a_metadata) AS liua5a_metadata, liu_a.liua5a_metadata_comment, liu_a.liua61, metadata_mapping(liu_a.liua61_metadata) AS liua61_metadata, liu_a.liua61_metadata_comment, liu_a.liua61q, metadata_mapping(liu_a.liua61q_metadata) AS liua61q_metadata, liu_a.liua61q_metadata_comment, liu_a.liua62, metadata_mapping(liu_a.liua62_metadata) AS liua62_metadata, liu_a.liua62_metadata_comment, liu_a.liua62q1, metadata_mapping(liu_a.liua62q1_metadata) AS liua62q1_metadata, liu_a.liua62q1_metadata_comment, liu_a.liua62q2, metadata_mapping(liu_a.liua62q2_metadata) AS liua62q2_metadata, liu_a.liua62q2_metadata_comment, liu_a.liua63, metadata_mapping(liu_a.liua63_metadata) AS liua63_metadata, liu_a.liua63_metadata_comment, liu_a.liua63q, metadata_mapping(liu_a.liua63q_metadata) AS liua63q_metadata, liu_a.liua63q_metadata_comment, noyesuppercase_mapping(liu_a.liua7) AS liua7, metadata_mapping(liu_a.liua7_metadata) AS liua7_metadata, liu_a.liua7_metadata_comment, diabetestestrequisition_mapping(liu_a.liua8) AS liua8, metadata_mapping(liu_a.liua8_metadata) AS liua8_metadata, liu_a.liua8_metadata_comment, metadata_mapping(liu_a.liua9group_metadata) AS liua9group_metadata, liu_a.liua9group_metadata_comment, liu_a.liua91, metadata_mapping(liu_a.liua91_metadata) AS liua91_metadata, liu_a.liua91_metadata_comment, liu_a.liua92, metadata_mapping(liu_a.liua92_metadata) AS liua92_metadata, liu_a.liua92_metadata_comment, liu_a.liua9a, metadata_mapping(liu_a.liua9a_metadata) AS liua9a_metadata, liu_a.liua9a_metadata_comment, liu_a.liua9b, metadata_mapping(liu_a.liua9b_metadata) AS liua9b_metadata, liu_a.liua9b_metadata_comment, liu_a.liua9b1, metadata_mapping(liu_a.liua9b1_metadata) AS liua9b1_metadata, liu_a.liua9b1_metadata_comment, liu_a.liua9b2, metadata_mapping(liu_a.liua9b2_metadata) AS liua9b2_metadata, liu_a.liua9b2_metadata_comment, diabetestestresult_mapping(liu_a.liua9c) AS liua9c, metadata_mapping(liu_a.liua9c_metadata) AS liua9c_metadata, liu_a.liua9c_metadata_comment, liu_a.liua10a, metadata_mapping(liu_a.liua10a_metadata) AS liua10a_metadata, liu_a.liua10a_metadata_comment, liu_a.liua10bh, liu_a.liua10bm, metadata_mapping(liu_a.liua10b_metadata) AS liua10b_metadata, liu_a.liua10b_metadata_comment, liu_a.liua10c, metadata_mapping(liu_a.liua10c_metadata) AS liua10c_metadata, liu_a.liua10c_metadata_comment, at.version AS versao_liu FROM ((((((coorte.liu_a liu_a JOIN public.activity a ON ((a.id = liu_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_liu_a OWNER TO postgres;

--
-- Name: v_liu_b; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_liu_b AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS liubdataapini, a.finalization_date AS liubdataapfim, o.date AS liubdataoffline, u.code AS liubaferidor, ou.code AS liubdigitador, babysiting_mapping(liu_b.liub1) AS liub1, metadata_mapping(liu_b.liub1_metadata) AS liub1_metadata, liu_b.liub1_metadata_comment, liu_b.liub1a, metadata_mapping(liu_b.liub1a_metadata) AS liub1a_metadata, liu_b.liub1a_metadata_comment, liu_b.liub1b, metadata_mapping(liu_b.liub1b_metadata) AS liub1b_metadata, liu_b.liub1b_metadata_comment, yesnouppercasecorrectposition_mapping(liu_b.liub1c) AS liub1c, metadata_mapping(liu_b.liub1c_metadata) AS liub1c_metadata, liu_b.liub1c_metadata_comment, liu_b.liub1d, metadata_mapping(liu_b.liub1d_metadata) AS liub1d_metadata, liu_b.liub1d_metadata_comment, liu_b.liub21, metadata_mapping(liu_b.liub21_metadata) AS liub21_metadata, liu_b.liub21_metadata_comment, liu_b.liub21q, metadata_mapping(liu_b.liub21q_metadata) AS liub21q_metadata, liu_b.liub21q_metadata_comment, liu_b.liub22, metadata_mapping(liu_b.liub22_metadata) AS liub22_metadata, liu_b.liub22_metadata_comment, liu_b.liub22q1, metadata_mapping(liu_b.liub22q1_metadata) AS liub22q1_metadata, liu_b.liub22q1_metadata_comment, liu_b.liub22q2, metadata_mapping(liu_b.liub22q2_metadata) AS liub22q2_metadata, liu_b.liub22q2_metadata_comment, liu_b.liub23, metadata_mapping(liu_b.liub23_metadata) AS liub23_metadata, liu_b.liub23_metadata_comment, liu_b.liub23q, metadata_mapping(liu_b.liub23q_metadata) AS liub23q_metadata, liu_b.liub23q_metadata_comment, yesnouppercasecorrectposition_mapping(liu_b.liub3) AS liub3, metadata_mapping(liu_b.liub3_metadata) AS liub3_metadata, liu_b.liub3_metadata_comment, liu_b.liub3a, metadata_mapping(liu_b.liub3a_metadata) AS liub3a_metadata, liu_b.liub3a_metadata_comment, typeofbabyfoodrestrictedquestion_mapping(liu_b.liub4) AS liub4, metadata_mapping(liu_b.liub4_metadata) AS liub4_metadata, liu_b.liub4_metadata_comment, liu_b.liub4a, metadata_mapping(liu_b.liub4a_metadata) AS liub4a_metadata, liu_b.liub4a_metadata_comment, typepregnancy_mapping(liu_b.prta5) AS prta5, metadata_mapping(liu_b.prta5_metadata) AS prta5_metadata, liu_b.prta5_metadata_comment, liu_b.prta5a, metadata_mapping(liu_b.prta5a_metadata) AS prta5a_metadata, liu_b.prta5a_metadata_comment, babysiting_mapping(liu_b.liub1g) AS liub1g, metadata_mapping(liu_b.liub1g_metadata) AS liub1g_metadata, liu_b.liub1g_metadata_comment, liu_b.liub1ag, metadata_mapping(liu_b.liub1ag_metadata) AS liub1ag_metadata, liu_b.liub1ag_metadata_comment, liu_b.liub1bg, metadata_mapping(liu_b.liub1bg_metadata) AS liub1bg_metadata, liu_b.liub1bg_metadata_comment, yesnouppercasecorrectposition_mapping(liu_b.liub1cg) AS liub1cg, metadata_mapping(liu_b.liub1cg_metadata) AS liub1cg_metadata, liu_b.liub1cg_metadata_comment, liu_b.liub1dg, metadata_mapping(liu_b.liub1dg_metadata) AS liub1dg_metadata, liu_b.liub1dg_metadata_comment, liu_b.liub21g, metadata_mapping(liu_b.liub21g_metadata) AS liub21g_metadata, liu_b.liub21g_metadata_comment, liu_b.liub21qg, metadata_mapping(liu_b.liub21qg_metadata) AS liub21qg_metadata, liu_b.liub21qg_metadata_comment, liu_b.liub22g, metadata_mapping(liu_b.liub22g_metadata) AS liub22g_metadata, liu_b.liub22g_metadata_comment, liu_b.liub22q1g, metadata_mapping(liu_b.liub22q1g_metadata) AS liub22q1g_metadata, liu_b.liub22q1g_metadata_comment, liu_b.liub22q2g, metadata_mapping(liu_b.liub22q2g_metadata) AS liub22q2g_metadata, liu_b.liub22q2g_metadata_comment, liu_b.liub23g, metadata_mapping(liu_b.liub23g_metadata) AS liub23g_metadata, liu_b.liub23g_metadata_comment, liu_b.liub23qg, metadata_mapping(liu_b.liub23qg_metadata) AS liub23qg_metadata, liu_b.liub23qg_metadata_comment, yesnouppercasecorrectposition_mapping(liu_b.liub3g) AS liub3g, metadata_mapping(liu_b.liub3g_metadata) AS liub3g_metadata, liu_b.liub3g_metadata_comment, liu_b.liub3ag, metadata_mapping(liu_b.liub3ag_metadata) AS liub3ag_metadata, liu_b.liub3ag_metadata_comment, typeofbabyfoodrestrictedquestion_mapping(liu_b.liub4g) AS liub4g, metadata_mapping(liu_b.liub4g_metadata) AS liub4g_metadata, liu_b.liub4g_metadata_comment, liu_b.liub4ag, metadata_mapping(liu_b.liub4ag_metadata) AS liub4ag_metadata, liu_b.liub4ag_metadata_comment, babysiting_mapping(liu_b.liub1g2) AS liub1g2, metadata_mapping(liu_b.liub1g2_metadata) AS liub1g2_metadata, liu_b.liub1g2_metadata_comment, liu_b.liub1ag2, metadata_mapping(liu_b.liub1ag2_metadata) AS liub1ag2_metadata, liu_b.liub1ag2_metadata_comment, liu_b.liub1bg2, metadata_mapping(liu_b.liub1bg2_metadata) AS liub1bg2_metadata, liu_b.liub1bg2_metadata_comment, yesnouppercasecorrectposition_mapping(liu_b.liub1cg2) AS liub1cg2, metadata_mapping(liu_b.liub1cg2_metadata) AS liub1cg2_metadata, liu_b.liub1cg2_metadata_comment, liu_b.liub1dg2, metadata_mapping(liu_b.liub1dg2_metadata) AS liub1dg2_metadata, liu_b.liub1dg2_metadata_comment, liu_b.liub21g2, metadata_mapping(liu_b.liub21g2_metadata) AS liub21g2_metadata, liu_b.liub21g2_metadata_comment, liu_b.liub21qg2, metadata_mapping(liu_b.liub21qg2_metadata) AS liub21qg2_metadata, liu_b.liub21qg2_metadata_comment, liu_b.liub22g2, metadata_mapping(liu_b.liub22g2_metadata) AS liub22g2_metadata, liu_b.liub22g2_metadata_comment, liu_b.liub22q1g2, metadata_mapping(liu_b.liub22q1g2_metadata) AS liub22q1g2_metadata, liu_b.liub22q1g2_metadata_comment, liu_b.liub22q2g2, metadata_mapping(liu_b.liub22q2g2_metadata) AS liub22q2g2_metadata, liu_b.liub22q2g2_metadata_comment, liu_b.liub23g2, metadata_mapping(liu_b.liub23g2_metadata) AS liub23g2_metadata, liu_b.liub23g2_metadata_comment, liu_b.liub23qg2, metadata_mapping(liu_b.liub23qg2_metadata) AS liub23qg2_metadata, liu_b.liub23qg2_metadata_comment, yesnouppercasecorrectposition_mapping(liu_b.liub3g2) AS liub3g2, metadata_mapping(liu_b.liub3g2_metadata) AS liub3g2_metadata, liu_b.liub3g2_metadata_comment, liu_b.liub3ag2, metadata_mapping(liu_b.liub3ag2_metadata) AS liub3ag2_metadata, liu_b.liub3ag2_metadata_comment, typeofbabyfoodrestrictedquestion_mapping(liu_b.liub4g2) AS liub4g2, metadata_mapping(liu_b.liub4g2_metadata) AS liub4g2_metadata, liu_b.liub4g2_metadata_comment, liu_b.liub4ag2, metadata_mapping(liu_b.liub4ag2_metadata) AS liub4ag2_metadata, liu_b.liub4ag2_metadata_comment, liu_b.liub5, metadata_mapping(liu_b.liub5_metadata) AS liub5_metadata, liu_b.liub5_metadata_comment, liu_b.liub5a, metadata_mapping(liu_b.liub5a_metadata) AS liub5a_metadata, liu_b.liub5a_metadata_comment, liu_b.liub61, metadata_mapping(liu_b.liub61_metadata) AS liub61_metadata, liu_b.liub61_metadata_comment, liu_b.liub61q, metadata_mapping(liu_b.liub61q_metadata) AS liub61q_metadata, liu_b.liub61q_metadata_comment, liu_b.liub62, metadata_mapping(liu_b.liub62_metadata) AS liub62_metadata, liu_b.liub62_metadata_comment, liu_b.liub62q1, metadata_mapping(liu_b.liub62q1_metadata) AS liub62q1_metadata, liu_b.liub62q1_metadata_comment, liu_b.liub62q2, metadata_mapping(liu_b.liub62q2_metadata) AS liub62q2_metadata, liu_b.liub62q2_metadata_comment, liu_b.liub63, metadata_mapping(liu_b.liub63_metadata) AS liub63_metadata, liu_b.liub63_metadata_comment, liu_b.liub63q, metadata_mapping(liu_b.liub63q_metadata) AS liub63q_metadata, liu_b.liub63q_metadata_comment, noyesuppercase_mapping(liu_b.liub7) AS liub7, metadata_mapping(liu_b.liub7_metadata) AS liub7_metadata, liu_b.liub7_metadata_comment, diabetestestrequisition_mapping(liu_b.liub8) AS liub8, metadata_mapping(liu_b.liub8_metadata) AS liub8_metadata, liu_b.liub8_metadata_comment, liu_b.liub91, metadata_mapping(liu_b.liub91_metadata) AS liub91_metadata, liu_b.liub91_metadata_comment, liu_b.liub92, metadata_mapping(liu_b.liub92_metadata) AS liub92_metadata, liu_b.liub92_metadata_comment, liu_b.liub9a, metadata_mapping(liu_b.liub9a_metadata) AS liub9a_metadata, liu_b.liub9a_metadata_comment, at.version AS versao_liu FROM ((((((coorte.liu_b liu_b JOIN public.activity a ON ((a.id = liu_b.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_liu_b OWNER TO postgres;

--
-- Name: v_pco_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_pco_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS tccadataapini, a.finalization_date AS tccadataapfim, o.date AS tccadataoffline, u.code AS tccaaferidor, ou.code AS tccadigitador, bodyshape_mapping(pco_a.pcoa1a) AS pcoa1a, metadata_mapping(pco_a.pcoa1a_metadata) AS pcoa1a_metadata, pco_a.pcoa1a_metadata_comment, bodyshape_mapping(pco_a.pcoa1b) AS pcoa1b, metadata_mapping(pco_a.pcoa1b_metadata) AS pcoa1b_metadata, pco_a.pcoa1b_metadata_comment, bodyshape_mapping(pco_a.pcoa1c) AS pcoa1c, metadata_mapping(pco_a.pcoa1c_metadata) AS pcoa1c_metadata, pco_a.pcoa1c_metadata_comment, bodyshape_mapping(pco_a.pcoa1d) AS pcoa1d, metadata_mapping(pco_a.pcoa1d_metadata) AS pcoa1d_metadata, pco_a.pcoa1d_metadata_comment, bodyshape_mapping(pco_a.pcoa1e) AS pcoa1e, metadata_mapping(pco_a.pcoa1e_metadata) AS pcoa1e_metadata, pco_a.pcoa1e_metadata_comment, at.version AS versao_pcoa FROM ((((((coorte.pco_a pco_a JOIN public.activity a ON ((a.id = pco_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_pco_a OWNER TO postgres;

--
-- Name: v_prd_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_prd_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS prdadataapini, a.finalization_date AS prdadataapfim, o.date AS prdadataoffline, u.code AS prdaaferidor, ou.code AS prdadigitador, agreedisagree_mapping(prd_a.prda1a) AS prda1a, metadata_mapping(prd_a.prda1a_metadata) AS prda1a_metadata, prd_a.prda1a_metadata_comment, agreedisagree_mapping(prd_a.prda1b) AS prda1b, metadata_mapping(prd_a.prda1b_metadata) AS prda1b_metadata, prd_a.prda1b_metadata_comment, agreedisagree_mapping(prd_a.prda1c) AS prda1c, metadata_mapping(prd_a.prda1c_metadata) AS prda1c_metadata, prd_a.prda1c_metadata_comment, agreedisagree_mapping(prd_a.prda1d) AS prda1d, metadata_mapping(prd_a.prda1d_metadata) AS prda1d_metadata, prd_a.prda1d_metadata_comment, agreedisagree_mapping(prd_a.prda1e) AS prda1e, metadata_mapping(prd_a.prda1e_metadata) AS prda1e_metadata, prd_a.prda1e_metadata_comment, agreedisagree_mapping(prd_a.prda1f) AS prda1f, metadata_mapping(prd_a.prda1f_metadata) AS prda1f_metadata, prd_a.prda1f_metadata_comment, riskgroup_mapping(prd_a.prda2a) AS prda2a, metadata_mapping(prd_a.prda2a_metadata) AS prda2a_metadata, prd_a.prda2a_metadata_comment, riskgroup_mapping(prd_a.prda2b) AS prda2b, metadata_mapping(prd_a.prda2b_metadata) AS prda2b_metadata, prd_a.prda2b_metadata_comment, riskgroup_mapping(prd_a.prda2c) AS prda2c, metadata_mapping(prd_a.prda2c_metadata) AS prda2c_metadata, prd_a.prda2c_metadata_comment, riskgroup_mapping(prd_a.prda2d) AS prda2d, metadata_mapping(prd_a.prda2d_metadata) AS prda2d_metadata, prd_a.prda2d_metadata_comment, riskgroup_mapping(prd_a.prda2e) AS prda2e, metadata_mapping(prd_a.prda2e_metadata) AS prda2e_metadata, prd_a.prda2e_metadata_comment, riskgroup_mapping(prd_a.prda2f) AS prda2f, metadata_mapping(prd_a.prda2f_metadata) AS prda2f_metadata, prd_a.prda2f_metadata_comment, riskgroup_mapping(prd_a.prda2g) AS prda2g, metadata_mapping(prd_a.prda2g_metadata) AS prda2g_metadata, prd_a.prda2g_metadata_comment, riskgroup_mapping(prd_a.prda2h) AS prda2h, metadata_mapping(prd_a.prda2h_metadata) AS prda2h_metadata, prd_a.prda2h_metadata_comment, riskgroup_mapping(prd_a.prda2i) AS prda2i, metadata_mapping(prd_a.prda2i_metadata) AS prda2i_metadata, prd_a.prda2i_metadata_comment, riskgroup_mapping(prd_a.prda2j) AS prda2j, metadata_mapping(prd_a.prda2j_metadata) AS prda2j_metadata, prd_a.prda2j_metadata_comment, notagreeordisagree_mapping(prd_a.prda3a) AS prda3a, metadata_mapping(prd_a.prda3a_metadata) AS prda3a_metadata, prd_a.prda3a_metadata_comment, notagreeordisagree_mapping(prd_a.prda3b) AS prda3b, metadata_mapping(prd_a.prda3b_metadata) AS prda3b_metadata, prd_a.prda3b_metadata_comment, notagreeordisagree_mapping(prd_a.prda3c) AS prda3c, metadata_mapping(prd_a.prda3c_metadata) AS prda3c_metadata, prd_a.prda3c_metadata_comment, chanceofhavingdiabetes_mapping(prd_a.prda4) AS prda4, metadata_mapping(prd_a.prda4_metadata) AS prda4_metadata, prd_a.prda4_metadata_comment, chanceofhavingdiabetes_mapping(prd_a.prda5) AS prda5, metadata_mapping(prd_a.prda5_metadata) AS prda5_metadata, prd_a.prda5_metadata_comment, noyesuppercase_mapping(prd_a.prda6) AS prda6, metadata_mapping(prd_a.prda6_metadata) AS prda6_metadata, prd_a.prda6_metadata_comment, noyesuppercase_mapping(prd_a.prda7) AS prda7, metadata_mapping(prd_a.prda7_metadata) AS prda7_metadata, prd_a.prda7_metadata_comment, at.version AS versao_prd FROM ((((((coorte.prd_a prd_a JOIN public.activity a ON ((a.id = prd_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_prd_a OWNER TO postgres;

--
-- Name: v_prt_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_prt_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS prtadataapini, a.finalization_date AS prtadataapfim, o.date AS prtadataoffline, u.code AS prtaaferidor, ou.code AS prtadigitador, prt_a.prta1, metadata_mapping(prt_a.prta1_metadata) AS prta1_metadata, prt_a.prta1_metadata_comment, prt_a.prta2, metadata_mapping(prt_a.prta2_metadata) AS prta2_metadata, prt_a.prta2_metadata_comment, prt_a.prta3a, metadata_mapping(prt_a.prta3a_metadata) AS prta3a_metadata, prt_a.prta3a_metadata_comment, prt_a.prta3b, metadata_mapping(prt_a.prta3b_metadata) AS prta3b_metadata, prt_a.prta3b_metadata_comment, prt_a.prta4, metadata_mapping(prt_a.prta4_metadata) AS prta4_metadata, prt_a.prta4_metadata_comment, uniquetwins_mapping(prt_a.prta5) AS prta5, metadata_mapping(prt_a.prta5_metadata) AS prta5_metadata, prt_a.prta5_metadata_comment, prt_a.prta5a, metadata_mapping(prt_a.prta5a_metadata) AS prta5a_metadata, prt_a.prta5a_metadata_comment, prt_a.prta6a, metadata_mapping(prt_a.prta6a_metadata) AS prta6a_metadata, prt_a.prta6a_metadata_comment, prt_a.prta6a1, metadata_mapping(prt_a.prta6a1_metadata) AS prta6a1_metadata, prt_a.prta6a1_metadata_comment, prt_a.prta6b, metadata_mapping(prt_a.prta6b_metadata) AS prta6b_metadata, prt_a.prta6b_metadata_comment, prt_a.prta6b1, metadata_mapping(prt_a.prta6b1_metadata) AS prta6b1_metadata, prt_a.prta6b1_metadata_comment, prt_a.prta6b2, metadata_mapping(prt_a.prta6b2_metadata) AS prta6b2_metadata, prt_a.prta6b2_metadata_comment, prt_a.prta6b3, metadata_mapping(prt_a.prta6b3_metadata) AS prta6b3_metadata, prt_a.prta6b3_metadata_comment, yesnoupper_mapping(prt_a.prta7) AS prta7, metadata_mapping(prt_a.prta7_metadata) AS prta7_metadata, prt_a.prta7_metadata_comment, yesnoupper_mapping(prt_a.prta7a) AS prta7a, metadata_mapping(prt_a.prta7a_metadata) AS prta7a_metadata, prt_a.prta7a_metadata_comment, yesnoupper_mapping(prt_a.prta7b) AS prta7b, metadata_mapping(prt_a.prta7b_metadata) AS prta7b_metadata, prt_a.prta7b_metadata_comment, prt_a.prta8, metadata_mapping(prt_a.prta8_metadata) AS prta8_metadata, prt_a.prta8_metadata_comment, prt_a.prta8a, metadata_mapping(prt_a.prta8a_metadata) AS prta8a_metadata, prt_a.prta8a_metadata_comment, prt_a.prta8b, metadata_mapping(prt_a.prta8b_metadata) AS prta8b_metadata, prt_a.prta8b_metadata_comment, prt_a.prta8c, metadata_mapping(prt_a.prta8c_metadata) AS prta8c_metadata, prt_a.prta8c_metadata_comment, prt_a.prta9, metadata_mapping(prt_a.prta9_metadata) AS prta9_metadata, prt_a.prta9_metadata_comment, prt_a.prta10, metadata_mapping(prt_a.prta10_metadata) AS prta10_metadata, prt_a.prta10_metadata_comment, prt_a.prta11, metadata_mapping(prt_a.prta11_metadata) AS prta11_metadata, prt_a.prta11_metadata_comment, prt_a.prta12, metadata_mapping(prt_a.prta12_metadata) AS prta12_metadata, prt_a.prta12_metadata_comment, prt_a.prta12a, metadata_mapping(prt_a.prta12a_metadata) AS prta12a_metadata, prt_a.prta12a_metadata_comment, prt_a.prtaobs, metadata_mapping(prt_a.prtaobs_metadata) AS prtaobs_metadata, prt_a.prtaobs_metadata_comment, prt_a.prtacom, metadata_mapping(prt_a.prtacom_metadata) AS prtacom_metadata, prt_a.prtacom_metadata_comment, at.version AS versao_prt FROM ((((((coorte.prt_a prt_a JOIN public.activity a ON ((a.id = prt_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_prt_a OWNER TO postgres;

--
-- Name: v_qvd_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_qvd_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS qvdadataapini, a.finalization_date AS qvdadataapfim, o.date AS qvdadataoffline, u.code AS qvdaaferidor, ou.code AS qvdadigitador, stateofhealthcomparedtootherpeople_mapping(qvd_a.qvda1) AS qvda1, metadata_mapping(qvd_a.qvda1_metadata) AS qvda1_metadata, qvd_a.qvda1_metadata_comment, stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(qvd_a.qvda2) AS qvda2, metadata_mapping(qvd_a.qvda2_metadata) AS qvda2_metadata, qvd_a.qvda2_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3a) AS qvda3a, metadata_mapping(qvd_a.qvda3a_metadata) AS qvda3a_metadata, qvd_a.qvda3a_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3b) AS qvda3b, metadata_mapping(qvd_a.qvda3b_metadata) AS qvda3b_metadata, qvd_a.qvda3b_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3c) AS qvda3c, metadata_mapping(qvd_a.qvda3c_metadata) AS qvda3c_metadata, qvd_a.qvda3c_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3d) AS qvda3d, metadata_mapping(qvd_a.qvda3d_metadata) AS qvda3d_metadata, qvd_a.qvda3d_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3e) AS qvda3e, metadata_mapping(qvd_a.qvda3e_metadata) AS qvda3e_metadata, qvd_a.qvda3e_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3f) AS qvda3f, metadata_mapping(qvd_a.qvda3f_metadata) AS qvda3f_metadata, qvd_a.qvda3f_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3g) AS qvda3g, metadata_mapping(qvd_a.qvda3g_metadata) AS qvda3g_metadata, qvd_a.qvda3g_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3h) AS qvda3h, metadata_mapping(qvd_a.qvda3h_metadata) AS qvda3h_metadata, qvd_a.qvda3h_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3i) AS qvda3i, metadata_mapping(qvd_a.qvda3i_metadata) AS qvda3i_metadata, qvd_a.qvda3i_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvd_a.qvda3j) AS qvda3j, metadata_mapping(qvd_a.qvda3j_metadata) AS qvda3j_metadata, qvd_a.qvda3j_metadata_comment, yesnouppercasecorrectposition_mapping(qvd_a.qvda4a) AS qvda4a, metadata_mapping(qvd_a.qvda4a_metadata) AS qvda4a_metadata, qvd_a.qvda4a_metadata_comment, yesnouppercasecorrectposition_mapping(qvd_a.qvda4b) AS qvda4b, metadata_mapping(qvd_a.qvda4b_metadata) AS qvda4b_metadata, qvd_a.qvda4b_metadata_comment, yesnouppercasecorrectposition_mapping(qvd_a.qvda4c) AS qvda4c, metadata_mapping(qvd_a.qvda4c_metadata) AS qvda4c_metadata, qvd_a.qvda4c_metadata_comment, yesnouppercasecorrectposition_mapping(qvd_a.qvda4d) AS qvda4d, metadata_mapping(qvd_a.qvda4d_metadata) AS qvda4d_metadata, qvd_a.qvda4d_metadata_comment, yesnouppercasecorrectposition_mapping(qvd_a.qvda5a) AS qvda5a, metadata_mapping(qvd_a.qvda5a_metadata) AS qvda5a_metadata, qvd_a.qvda5a_metadata_comment, yesnouppercasecorrectposition_mapping(qvd_a.qvda5b) AS qvda5b, metadata_mapping(qvd_a.qvda5b_metadata) AS qvda5b_metadata, qvd_a.qvda5b_metadata_comment, yesnouppercasecorrectposition_mapping(qvd_a.qvda5c) AS qvda5c, metadata_mapping(qvd_a.qvda5c_metadata) AS qvda5c_metadata, qvd_a.qvda5c_metadata_comment, howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(qvd_a.qvda6) AS qvda6, metadata_mapping(qvd_a.qvda6_metadata) AS qvda6_metadata, qvd_a.qvda6_metadata_comment, howmuchpaininlastfourweeks_mapping(qvd_a.qvda7) AS qvda7, metadata_mapping(qvd_a.qvda7_metadata) AS qvda7_metadata, qvd_a.qvda7_metadata_comment, howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(qvd_a.qvda8) AS qvda8, metadata_mapping(qvd_a.qvda8_metadata) AS qvda8_metadata, qvd_a.qvda8_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9a) AS qvda9a, metadata_mapping(qvd_a.qvda9a_metadata) AS qvda9a_metadata, qvd_a.qvda9a_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9b) AS qvda9b, metadata_mapping(qvd_a.qvda9b_metadata) AS qvda9b_metadata, qvd_a.qvda9b_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9c) AS qvda9c, metadata_mapping(qvd_a.qvda9c_metadata) AS qvda9c_metadata, qvd_a.qvda9c_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9d) AS qvda9d, metadata_mapping(qvd_a.qvda9d_metadata) AS qvda9d_metadata, qvd_a.qvda9d_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9e) AS qvda9e, metadata_mapping(qvd_a.qvda9e_metadata) AS qvda9e_metadata, qvd_a.qvda9e_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9f) AS qvda9f, metadata_mapping(qvd_a.qvda9f_metadata) AS qvda9f_metadata, qvd_a.qvda9f_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9g) AS qvda9g, metadata_mapping(qvd_a.qvda9g_metadata) AS qvda9g_metadata, qvd_a.qvda9g_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9h) AS qvda9h, metadata_mapping(qvd_a.qvda9h_metadata) AS qvda9h_metadata, qvd_a.qvda9h_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda9i) AS qvda9i, metadata_mapping(qvd_a.qvda9i_metadata) AS qvda9i_metadata, qvd_a.qvda9i_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvd_a.qvda10) AS qvda10, metadata_mapping(qvd_a.qvda10_metadata) AS qvda10_metadata, qvd_a.qvda10_metadata_comment, levelofagreement_mapping(qvd_a.qvda11a) AS qvda11a, metadata_mapping(qvd_a.qvda11a_metadata) AS qvda11a_metadata, qvd_a.qvda11a_metadata_comment, levelofagreement_mapping(qvd_a.qvda11b) AS qvda11b, metadata_mapping(qvd_a.qvda11b_metadata) AS qvda11b_metadata, qvd_a.qvda11b_metadata_comment, levelofagreement_mapping(qvd_a.qvda11c) AS qvda11c, metadata_mapping(qvd_a.qvda11c_metadata) AS qvda11c_metadata, qvd_a.qvda11c_metadata_comment, levelofagreement_mapping(qvd_a.qvda11d) AS qvda11d, metadata_mapping(qvd_a.qvda11d_metadata) AS qvda11d_metadata, qvd_a.qvda11d_metadata_comment, at.version AS versao_qvd FROM ((((((coorte.qvd_a qvd_a JOIN public.activity a ON ((a.id = qvd_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_qvd_a OWNER TO postgres;

--
-- Name: v_qvds_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_qvds_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS qvdsadataapini, a.finalization_date AS qvdsadataapfim, o.date AS qvdsadataoffline, u.code AS qvdsaaferidor, ou.code AS qvdsadigitador, stateofhealthcomparedtootherpeople_mapping(qvds_a.qvdsa1) AS qvdsa1, metadata_mapping(qvds_a.qvdsa1_metadata) AS qvdsa1_metadata, qvds_a.qvdsa1_metadata_comment, stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(qvds_a.qvdsa2) AS qvdsa2, metadata_mapping(qvds_a.qvdsa2_metadata) AS qvdsa2_metadata, qvds_a.qvdsa2_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3a) AS qvdsa3a, metadata_mapping(qvds_a.qvdsa3a_metadata) AS qvdsa3a_metadata, qvds_a.qvdsa3a_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.dvdsa3b) AS dvdsa3b, metadata_mapping(qvds_a.dvdsa3b_metadata) AS dvdsa3b_metadata, qvds_a.dvdsa3b_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3c) AS qvdsa3c, metadata_mapping(qvds_a.qvdsa3c_metadata) AS qvdsa3c_metadata, qvds_a.qvdsa3c_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3d) AS qvdsa3d, metadata_mapping(qvds_a.qvdsa3d_metadata) AS qvdsa3d_metadata, qvds_a.qvdsa3d_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3e) AS qvdsa3e, metadata_mapping(qvds_a.qvdsa3e_metadata) AS qvdsa3e_metadata, qvds_a.qvdsa3e_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3f) AS qvdsa3f, metadata_mapping(qvds_a.qvdsa3f_metadata) AS qvdsa3f_metadata, qvds_a.qvdsa3f_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3g) AS qvdsa3g, metadata_mapping(qvds_a.qvdsa3g_metadata) AS qvdsa3g_metadata, qvds_a.qvdsa3g_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3h) AS qvdsa3h, metadata_mapping(qvds_a.qvdsa3h_metadata) AS qvdsa3h_metadata, qvds_a.qvdsa3h_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3i) AS qvdsa3i, metadata_mapping(qvds_a.qvdsa3i_metadata) AS qvdsa3i_metadata, qvds_a.qvdsa3i_metadata_comment, levelofdifficultytodosomeactivities_mapping(qvds_a.qvdsa3j) AS qvdsa3j, metadata_mapping(qvds_a.qvdsa3j_metadata) AS qvdsa3j_metadata, qvds_a.qvdsa3j_metadata_comment, yesnouppercasecorrectposition_mapping(qvds_a.qvdsa4a) AS qvdsa4a, metadata_mapping(qvds_a.qvdsa4a_metadata) AS qvdsa4a_metadata, qvds_a.qvdsa4a_metadata_comment, yesnouppercasecorrectposition_mapping(qvds_a.qvdsa4b) AS qvdsa4b, metadata_mapping(qvds_a.qvdsa4b_metadata) AS qvdsa4b_metadata, qvds_a.qvdsa4b_metadata_comment, yesnouppercasecorrectposition_mapping(qvds_a.qvdsa4c) AS qvdsa4c, metadata_mapping(qvds_a.qvdsa4c_metadata) AS qvdsa4c_metadata, qvds_a.qvdsa4c_metadata_comment, yesnouppercasecorrectposition_mapping(qvds_a.qvdsa4d) AS qvdsa4d, metadata_mapping(qvds_a.qvdsa4d_metadata) AS qvdsa4d_metadata, qvds_a.qvdsa4d_metadata_comment, yesnouppercasecorrectposition_mapping(qvds_a.qvdsa5a) AS qvdsa5a, metadata_mapping(qvds_a.qvdsa5a_metadata) AS qvdsa5a_metadata, qvds_a.qvdsa5a_metadata_comment, yesnouppercasecorrectposition_mapping(qvds_a.qvdsa5b) AS qvdsa5b, metadata_mapping(qvds_a.qvdsa5b_metadata) AS qvdsa5b_metadata, qvds_a.qvdsa5b_metadata_comment, yesnouppercasecorrectposition_mapping(qvds_a.qvdsa5c) AS qvdsa5c, metadata_mapping(qvds_a.qvdsa5c_metadata) AS qvdsa5c_metadata, qvds_a.qvdsa5c_metadata_comment, howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(qvds_a.qvdsa6) AS qvdsa6, metadata_mapping(qvds_a.qvdsa6_metadata) AS qvdsa6_metadata, qvds_a.qvdsa6_metadata_comment, howmuchpaininlastfourweeks_mapping(qvds_a.qvdsa7) AS qvdsa7, metadata_mapping(qvds_a.qvdsa7_metadata) AS qvdsa7_metadata, qvds_a.qvdsa7_metadata_comment, howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(qvds_a.qvdsa8) AS qvdsa8, metadata_mapping(qvds_a.qvdsa8_metadata) AS qvdsa8_metadata, qvds_a.qvdsa8_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9a) AS qvdsa9a, metadata_mapping(qvds_a.qvdsa9a_metadata) AS qvdsa9a_metadata, qvds_a.qvdsa9a_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9b) AS qvdsa9b, metadata_mapping(qvds_a.qvdsa9b_metadata) AS qvdsa9b_metadata, qvds_a.qvdsa9b_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9c) AS qvdsa9c, metadata_mapping(qvds_a.qvdsa9c_metadata) AS qvdsa9c_metadata, qvds_a.qvdsa9c_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9d) AS qvdsa9d, metadata_mapping(qvds_a.qvdsa9d_metadata) AS qvdsa9d_metadata, qvds_a.qvdsa9d_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9e) AS qvdsa9e, metadata_mapping(qvds_a.qvdsa9e_metadata) AS qvdsa9e_metadata, qvds_a.qvdsa9e_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9f) AS qvdsa9f, metadata_mapping(qvds_a.qvdsa9f_metadata) AS qvdsa9f_metadata, qvds_a.qvdsa9f_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9g) AS qvdsa9g, metadata_mapping(qvds_a.qvdsa9g_metadata) AS qvdsa9g_metadata, qvds_a.qvdsa9g_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9h) AS qvdsa9h, metadata_mapping(qvds_a.qvdsa9h_metadata) AS qvdsa9h_metadata, qvds_a.qvdsa9h_metadata_comment, howmuchtimeinlastfourweekscharacteristics_mapping(qvds_a.qvdsa9i) AS qvdsa9i, metadata_mapping(qvds_a.qvdsa9i_metadata) AS qvdsa9i_metadata, qvds_a.qvdsa9i_metadata_comment, frequencyofsocialactivities_mapping(qvds_a.qvdsa10) AS qvdsa10, metadata_mapping(qvds_a.qvdsa10_metadata) AS qvdsa10_metadata, qvds_a.qvdsa10_metadata_comment, levelofagreement_mapping(qvds_a.qvdsa11a) AS qvdsa11a, metadata_mapping(qvds_a.qvdsa11a_metadata) AS qvdsa11a_metadata, qvds_a.qvdsa11a_metadata_comment, levelofagreement_mapping(qvds_a.qvdsa11b) AS qvdsa11b, metadata_mapping(qvds_a.qvdsa11b_metadata) AS qvdsa11b_metadata, qvds_a.qvdsa11b_metadata_comment, levelofagreement_mapping(qvds_a.qvdsa11c) AS qvdsa11c, metadata_mapping(qvds_a.qvdsa11c_metadata) AS qvdsa11c_metadata, qvds_a.qvdsa11c_metadata_comment, levelofagreement_mapping(qvds_a.qvdsa11d) AS qvdsa11d, metadata_mapping(qvds_a.qvdsa11d_metadata) AS qvdsa11d_metadata, qvds_a.qvdsa11d_metadata_comment, at.version AS versao_qvds FROM ((((((coorte.qvds_a qvds_a JOIN public.activity a ON ((a.id = qvds_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_qvds_a OWNER TO postgres;

--
-- Name: v_ran_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_ran_a AS
SELECT p.recruitment_number AS numerorecrutamento, ran_a.realization_date AS ranadataapini, u.code AS ranaaferidor, ran_a.rana1, ran_a.rana2, ran_a.rana3, ran_a.rana4, ran_a.ranacom1, ran_a.rana5, ran_a.rana6, ran_a.ranacom2, ran_a.rana7, ran_a.rana8 FROM ((coorte.ran_a ran_a JOIN public.participant p ON ((p.id = ran_a.participant_id))) JOIN public."user" u ON ((u.id = ran_a.user_id)));


ALTER TABLE extraction.v_ran_a OWNER TO postgres;

--
-- Name: v_rcp_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_rcp_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS rcpadataapini, a.finalization_date AS rcpadataapfim, o.date AS rcpadataoffline, u.code AS rcpaaferidor, ou.code AS rcpadigitador, rcp_a.rcpa1h, rcp_a.rcpa1m, metadata_mapping(rcp_a.rcpa1_metadata) AS rcpa1_metadata, rcp_a.rcpa1_metadata_comment, rcp_a.rcpa1ah, rcp_a.rcpa1am, metadata_mapping(rcp_a.rcpa1a_metadata) AS rcpa1a_metadata, rcp_a.rcpa1a_metadata_comment, rcp_a.rcpa1bh, rcp_a.rcpa1bm, metadata_mapping(rcp_a.rcpa1b_metadata) AS rcpa1b_metadata, rcp_a.rcpa1b_metadata_comment, noyesuppercase_mapping(rcp_a.rcpa2) AS rcpa2, metadata_mapping(rcp_a.rcpa2_metadata) AS rcpa2_metadata, rcp_a.rcpa2_metadata_comment, rcp_a.rcpa2ah, rcp_a.rcpa2am, metadata_mapping(rcp_a.rcpa2a_metadata) AS rcpa2a_metadata, rcp_a.rcpa2a_metadata_comment, rcp_a.rcpa2bh, rcp_a.rcpa2bm, metadata_mapping(rcp_a.rcpa2b_metadata) AS rcpa2b_metadata, rcp_a.rcpa2b_metadata_comment, noyesuppercasedontcolecturine_mapping(rcp_a.rcpa3) AS rcpa3, metadata_mapping(rcp_a.rcpa3_metadata) AS rcpa3_metadata, rcp_a.rcpa3_metadata_comment, rcp_a.rcpaobs, metadata_mapping(rcp_a.rcpaobs_metadata) AS rcpaobs_metadata, rcp_a.rcpaobs_metadata_comment, rcp_a.rcpacom, metadata_mapping(rcp_a.rcpacom_metadata) AS rcpacom_metadata, rcp_a.rcpacom_metadata_comment, at.version AS versao_rcp FROM ((((((coorte.rcp_a rcp_a JOIN public.activity a ON ((a.id = rcp_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_rcp_a OWNER TO postgres;

--
-- Name: v_rcps_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_rcps_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS rcpsadataapini, a.finalization_date AS rcpsadataapfim, o.date AS rcpsadataoffline, u.code AS rcpsaaferidor, ou.code AS rcpsadigitador, rcps_a.rcpsa1h, rcps_a.rcpsa1m, metadata_mapping(rcps_a.rcpsa1_metadata) AS rcpsa1_metadata, rcps_a.rcpsa1_metadata_comment, rcps_a.rcpsa1ah, rcps_a.rcpsa1am, metadata_mapping(rcps_a.rcpsa1a_metadata) AS rcpsa1a_metadata, rcps_a.rcpsa1a_metadata_comment, rcps_a.rcpsa1bh, rcps_a.rcpsa1bm, metadata_mapping(rcps_a.rcpsa1b_metadata) AS rcpsa1b_metadata, rcps_a.rcpsa1b_metadata_comment, noyesuppercase_mapping(rcps_a.rcpsa2) AS rcpsa2, metadata_mapping(rcps_a.rcpsa2_metadata) AS rcpsa2_metadata, rcps_a.rcpsa2_metadata_comment, rcps_a.rcpsa2ah, rcps_a.rcpsa2am, metadata_mapping(rcps_a.rcpsa2a_metadata) AS rcpsa2a_metadata, rcps_a.rcpsa2a_metadata_comment, rcps_a.rcpsa2bh, rcps_a.rcpsa2bm, metadata_mapping(rcps_a.rcpsa2b_metadata) AS rcpsa2b_metadata, rcps_a.rcpsa2b_metadata_comment, noyesuppercasedontcollecturine_mapping(rcps_a.rcpsa3) AS rcpsa3, metadata_mapping(rcps_a.rcpsa3_metadata) AS rcpsa3_metadata, rcps_a.rcpsa3_metadata_comment, rcps_a.rcpsaobs, metadata_mapping(rcps_a.rcpsaobs_metadata) AS rcpsaobs_metadata, rcps_a.rcpsaobs_metadata_comment, rcps_a.rcpsacom, metadata_mapping(rcps_a.rcpsacom_metadata) AS rcpsacom_metadata, rcps_a.rcpsacom_metadata_comment, at.version AS versao_rcps FROM ((((((coorte.rcps_a rcps_a JOIN public.activity a ON ((a.id = rcps_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_rcps_a OWNER TO postgres;

--
-- Name: v_rdv_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_rdv_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS rdvadataapini, a.finalization_date AS rdvadataapfim, o.date AS rdvadataoffline, u.code AS rdvaaferidor, ou.code AS rdvadigitador, noyesuppercase_mapping(rdv_a.rdva1) AS rdva1, metadata_mapping(rdv_a.rdva1_metadata) AS rdva1_metadata, rdv_a.rdva1_metadata_comment, noyesuppercase_mapping(rdv_a.rdva1a) AS rdva1a, metadata_mapping(rdv_a.rdva1a_metadata) AS rdva1a_metadata, rdv_a.rdva1a_metadata_comment, noyesuppercase_mapping(rdv_a.rdva1b) AS rdva1b, metadata_mapping(rdv_a.rdva1b_metadata) AS rdva1b_metadata, rdv_a.rdva1b_metadata_comment, rdv_a.rdva1c1, metadata_mapping(rdv_a.rdva1c1_metadata) AS rdva1c1_metadata, rdv_a.rdva1c1_metadata_comment, rdv_a.rdva1c2, metadata_mapping(rdv_a.rdva1c2_metadata) AS rdva1c2_metadata, rdv_a.rdva1c2_metadata_comment, rdv_a.rdva1c3, metadata_mapping(rdv_a.rdva1c3_metadata) AS rdva1c3_metadata, rdv_a.rdva1c3_metadata_comment, rdv_a.rdva1c4, metadata_mapping(rdv_a.rdva1c4_metadata) AS rdva1c4_metadata, rdv_a.rdva1c4_metadata_comment, rdv_a.rdva1c5, metadata_mapping(rdv_a.rdva1c5_metadata) AS rdva1c5_metadata, rdv_a.rdva1c5_metadata_comment, rdv_a.rdva1c5q, metadata_mapping(rdv_a.rdva1c5q_metadata) AS rdva1c5q_metadata, rdv_a.rdva1c5q_metadata_comment, noyesuppercase_mapping(rdv_a.rdva2) AS rdva2, metadata_mapping(rdv_a.rdva2_metadata) AS rdva2_metadata, rdv_a.rdva2_metadata_comment, rdv_a.rdva2a1, metadata_mapping(rdv_a.rdva2a1_metadata) AS rdva2a1_metadata, rdv_a.rdva2a1_metadata_comment, rdv_a.rdva2a2, metadata_mapping(rdv_a.rdva2a2_metadata) AS rdva2a2_metadata, rdv_a.rdva2a2_metadata_comment, rdv_a.rdva2a3, metadata_mapping(rdv_a.rdva2a3_metadata) AS rdva2a3_metadata, rdv_a.rdva2a3_metadata_comment, rdv_a.rdva2a4, metadata_mapping(rdv_a.rdva2a4_metadata) AS rdva2a4_metadata, rdv_a.rdva2a4_metadata_comment, rdv_a.rdva2a5, metadata_mapping(rdv_a.rdva2a5_metadata) AS rdva2a5_metadata, rdv_a.rdva2a5_metadata_comment, rdv_a.rdva2a5q, metadata_mapping(rdv_a.rdva2a5q_metadata) AS rdva2a5q_metadata, rdv_a.rdva2a5q_metadata_comment, at.version AS versao_rdv FROM ((((((coorte.rdv_a rdv_a JOIN public.activity a ON ((a.id = rdv_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_rdv_a OWNER TO postgres;

--
-- Name: v_rdvs_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_rdvs_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS rdvsadataapini, a.finalization_date AS rdvsadataapfim, o.date AS rdvsadataoffline, u.code AS rdvsaaferidor, ou.code AS rdvsadigitador, noyesuppercase_mapping(rdvs_a.rdvsa1) AS rdvsa1, metadata_mapping(rdvs_a.rdvsa1_metadata) AS rdvsa1_metadata, rdvs_a.rdvsa1_metadata_comment, noyesuppercase_mapping(rdvs_a.rdvsa1a) AS rdvsa1a, metadata_mapping(rdvs_a.rdvsa1a_metadata) AS rdvsa1a_metadata, rdvs_a.rdvsa1a_metadata_comment, noyesuppercase_mapping(rdvs_a.rdvsa1b) AS rdvsa1b, metadata_mapping(rdvs_a.rdvsa1b_metadata) AS rdvsa1b_metadata, rdvs_a.rdvsa1b_metadata_comment, rdvs_a.rdvsa1c1, metadata_mapping(rdvs_a.rdvsa1c1_metadata) AS rdvsa1c1_metadata, rdvs_a.rdvsa1c1_metadata_comment, rdvs_a.rdvsa1c2, metadata_mapping(rdvs_a.rdvsa1c2_metadata) AS rdvsa1c2_metadata, rdvs_a.rdvsa1c2_metadata_comment, rdvs_a.rdvsa1c3, metadata_mapping(rdvs_a.rdvsa1c3_metadata) AS rdvsa1c3_metadata, rdvs_a.rdvsa1c3_metadata_comment, rdvs_a.rdvsa1c4, metadata_mapping(rdvs_a.rdvsa1c4_metadata) AS rdvsa1c4_metadata, rdvs_a.rdvsa1c4_metadata_comment, rdvs_a.rdvsa1c5, metadata_mapping(rdvs_a.rdvsa1c5_metadata) AS rdvsa1c5_metadata, rdvs_a.rdvsa1c5_metadata_comment, rdvs_a.rdvsa1c5q, metadata_mapping(rdvs_a.rdvsa1c5q_metadata) AS rdvsa1c5q_metadata, rdvs_a.rdvsa1c5q_metadata_comment, noyesuppercase_mapping(rdvs_a.rdvsa2) AS rdvsa2, metadata_mapping(rdvs_a.rdvsa2_metadata) AS rdvsa2_metadata, rdvs_a.rdvsa2_metadata_comment, rdvs_a.rdvsa2a1, metadata_mapping(rdvs_a.rdvsa2a1_metadata) AS rdvsa2a1_metadata, rdvs_a.rdvsa2a1_metadata_comment, rdvs_a.rdvsa2a2, metadata_mapping(rdvs_a.rdvsa2a2_metadata) AS rdvsa2a2_metadata, rdvs_a.rdvsa2a2_metadata_comment, rdvs_a.rdvsa2a3, metadata_mapping(rdvs_a.rdvsa2a3_metadata) AS rdvsa2a3_metadata, rdvs_a.rdvsa2a3_metadata_comment, rdvs_a.rdvsa2a4, metadata_mapping(rdvs_a.rdvsa2a4_metadata) AS rdvsa2a4_metadata, rdvs_a.rdvsa2a4_metadata_comment, rdvs_a.rdvsa2a5, metadata_mapping(rdvs_a.rdvsa2a5_metadata) AS rdvsa2a5_metadata, rdvs_a.rdvsa2a5_metadata_comment, rdvs_a.rdvsa2a5q, metadata_mapping(rdvs_a.rdvsa2a5q_metadata) AS rdvsa2a5q_metadata, rdvs_a.rdvsa2a5q_metadata_comment, at.version AS versao_rdvs FROM ((((((coorte.rdvs_a rdvs_a JOIN public.activity a ON ((a.id = rdvs_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_rdvs_a OWNER TO postgres;

--
-- Name: v_rpn_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_rpn_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS rpnadataapini, a.finalization_date AS rpnadataapfim, o.date AS rpnadataoffline, u.code AS rpnaaferidor, ou.code AS rpnadigitador, rpn_a.rpna22, metadata_mapping(rpn_a.rpna22_metadata) AS rpna22_metadata, rpn_a.rpna22_metadata_comment, rpn_a.rpna1, metadata_mapping(rpn_a.rpna1_metadata) AS rpna1_metadata, rpn_a.rpna1_metadata_comment, rpn_a.rpna1a, metadata_mapping(rpn_a.rpna1a_metadata) AS rpna1a_metadata, rpn_a.rpna1a_metadata_comment, rpn_a.rpna1b1, metadata_mapping(rpn_a.rpna1b1_metadata) AS rpna1b1_metadata, rpn_a.rpna1b1_metadata_comment, rpn_a.rpna1b2, metadata_mapping(rpn_a.rpna1b2_metadata) AS rpna1b2_metadata, rpn_a.rpna1b2_metadata_comment, rpn_a.rpna2, metadata_mapping(rpn_a.rpna2_metadata) AS rpna2_metadata, rpn_a.rpna2_metadata_comment, rpn_a.rpna2a, metadata_mapping(rpn_a.rpna2a_metadata) AS rpna2a_metadata, rpn_a.rpna2a_metadata_comment, rpn_a.rpna2b1, metadata_mapping(rpn_a.rpna2b1_metadata) AS rpna2b1_metadata, rpn_a.rpna2b1_metadata_comment, rpn_a.rpna2b2, metadata_mapping(rpn_a.rpna2b2_metadata) AS rpna2b2_metadata, rpn_a.rpna2b2_metadata_comment, rpn_a.rpna3, metadata_mapping(rpn_a.rpna3_metadata) AS rpna3_metadata, rpn_a.rpna3_metadata_comment, rpn_a.rpna3a, metadata_mapping(rpn_a.rpna3a_metadata) AS rpna3a_metadata, rpn_a.rpna3a_metadata_comment, rpn_a.rpna3b1, metadata_mapping(rpn_a.rpna3b1_metadata) AS rpna3b1_metadata, rpn_a.rpna3b1_metadata_comment, rpn_a.rpna3b2, metadata_mapping(rpn_a.rpna3b2_metadata) AS rpna3b2_metadata, rpn_a.rpna3b2_metadata_comment, rpn_a.rpna4, metadata_mapping(rpn_a.rpna4_metadata) AS rpna4_metadata, rpn_a.rpna4_metadata_comment, rpn_a.rpna4a, metadata_mapping(rpn_a.rpna4a_metadata) AS rpna4a_metadata, rpn_a.rpna4a_metadata_comment, rpn_a.rpna4b1, metadata_mapping(rpn_a.rpna4b1_metadata) AS rpna4b1_metadata, rpn_a.rpna4b1_metadata_comment, rpn_a.rpna4b2, metadata_mapping(rpn_a.rpna4b2_metadata) AS rpna4b2_metadata, rpn_a.rpna4b2_metadata_comment, rpn_a.rpna5, metadata_mapping(rpn_a.rpna5_metadata) AS rpna5_metadata, rpn_a.rpna5_metadata_comment, rpn_a.rpna5a, metadata_mapping(rpn_a.rpna5a_metadata) AS rpna5a_metadata, rpn_a.rpna5a_metadata_comment, rpn_a.rpna5b1, metadata_mapping(rpn_a.rpna5b1_metadata) AS rpna5b1_metadata, rpn_a.rpna5b1_metadata_comment, rpn_a.rpna5b2, metadata_mapping(rpn_a.rpna5b2_metadata) AS rpna5b2_metadata, rpn_a.rpna5b2_metadata_comment, rpn_a.rpna6, metadata_mapping(rpn_a.rpna6_metadata) AS rpna6_metadata, rpn_a.rpna6_metadata_comment, rpn_a.rpna6a, metadata_mapping(rpn_a.rpna6a_metadata) AS rpna6a_metadata, rpn_a.rpna6a_metadata_comment, rpn_a.rpna6b1, metadata_mapping(rpn_a.rpna6b1_metadata) AS rpna6b1_metadata, rpn_a.rpna6b1_metadata_comment, rpn_a.rpna6b2, metadata_mapping(rpn_a.rpna6b2_metadata) AS rpna6b2_metadata, rpn_a.rpna6b2_metadata_comment, rpn_a.rpna7, metadata_mapping(rpn_a.rpna7_metadata) AS rpna7_metadata, rpn_a.rpna7_metadata_comment, rpn_a.rpna7a, metadata_mapping(rpn_a.rpna7a_metadata) AS rpna7a_metadata, rpn_a.rpna7a_metadata_comment, rpn_a.rpna7b1, metadata_mapping(rpn_a.rpna7b1_metadata) AS rpna7b1_metadata, rpn_a.rpna7b1_metadata_comment, rpn_a.rpna7b2, metadata_mapping(rpn_a.rpna7b2_metadata) AS rpna7b2_metadata, rpn_a.rpna7b2_metadata_comment, rpn_a.rpna8, metadata_mapping(rpn_a.rpna8_metadata) AS rpna8_metadata, rpn_a.rpna8_metadata_comment, rpn_a.rpna8a, metadata_mapping(rpn_a.rpna8a_metadata) AS rpna8a_metadata, rpn_a.rpna8a_metadata_comment, rpn_a.rpna8b1, metadata_mapping(rpn_a.rpna8b1_metadata) AS rpna8b1_metadata, rpn_a.rpna8b1_metadata_comment, rpn_a.rpna8b2, metadata_mapping(rpn_a.rpna8b2_metadata) AS rpna8b2_metadata, rpn_a.rpna8b2_metadata_comment, rpn_a.rpna9, metadata_mapping(rpn_a.rpna9_metadata) AS rpna9_metadata, rpn_a.rpna9_metadata_comment, rpn_a.rpna9a, metadata_mapping(rpn_a.rpna9a_metadata) AS rpna9a_metadata, rpn_a.rpna9a_metadata_comment, rpn_a.rpna9b1, metadata_mapping(rpn_a.rpna9b1_metadata) AS rpna9b1_metadata, rpn_a.rpna9b1_metadata_comment, rpn_a.rpna9b2, metadata_mapping(rpn_a.rpna9b2_metadata) AS rpna9b2_metadata, rpn_a.rpna9b2_metadata_comment, rpn_a.rpna10, metadata_mapping(rpn_a.rpna10_metadata) AS rpna10_metadata, rpn_a.rpna10_metadata_comment, rpn_a.rpna10a, metadata_mapping(rpn_a.rpna10a_metadata) AS rpna10a_metadata, rpn_a.rpna10a_metadata_comment, rpn_a.rpna10b1, metadata_mapping(rpn_a.rpna10b1_metadata) AS rpna10b1_metadata, rpn_a.rpna10b1_metadata_comment, rpn_a.rpna10b2, metadata_mapping(rpn_a.rpna10b2_metadata) AS rpna10b2_metadata, rpn_a.rpna10b2_metadata_comment, rpn_a.rpna11, metadata_mapping(rpn_a.rpna11_metadata) AS rpna11_metadata, rpn_a.rpna11_metadata_comment, rpn_a.rpna11a, metadata_mapping(rpn_a.rpna11a_metadata) AS rpna11a_metadata, rpn_a.rpna11a_metadata_comment, rpn_a.rpna11b1, metadata_mapping(rpn_a.rpna11b1_metadata) AS rpna11b1_metadata, rpn_a.rpna11b1_metadata_comment, rpn_a.rpna11b2, metadata_mapping(rpn_a.rpna11b2_metadata) AS rpna11b2_metadata, rpn_a.rpna11b2_metadata_comment, rpn_a.rpna12, metadata_mapping(rpn_a.rpna12_metadata) AS rpna12_metadata, rpn_a.rpna12_metadata_comment, rpn_a.rpna12a, metadata_mapping(rpn_a.rpna12a_metadata) AS rpna12a_metadata, rpn_a.rpna12a_metadata_comment, rpn_a.rpna12b1, metadata_mapping(rpn_a.rpna12b1_metadata) AS rpna12b1_metadata, rpn_a.rpna12b1_metadata_comment, rpn_a.rpna12b2, metadata_mapping(rpn_a.rpna12b2_metadata) AS rpna12b2_metadata, rpn_a.rpna12b2_metadata_comment, rpn_a.rpna13, metadata_mapping(rpn_a.rpna13_metadata) AS rpna13_metadata, rpn_a.rpna13_metadata_comment, rpn_a.rpna13a, metadata_mapping(rpn_a.rpna13a_metadata) AS rpna13a_metadata, rpn_a.rpna13a_metadata_comment, rpn_a.rpna13b1, metadata_mapping(rpn_a.rpna13b1_metadata) AS rpna13b1_metadata, rpn_a.rpna13b1_metadata_comment, rpn_a.rpna13b2, metadata_mapping(rpn_a.rpna13b2_metadata) AS rpna13b2_metadata, rpn_a.rpna13b2_metadata_comment, metadata_mapping(rpn_a.rpna14_metadata) AS rpna14_metadata, rpn_a.rpna14_metadata_comment, rpn_a.rpna14a, metadata_mapping(rpn_a.rpna14a_metadata) AS rpna14a_metadata, rpn_a.rpna14a_metadata_comment, rpn_a.rpna14b, metadata_mapping(rpn_a.rpna14b_metadata) AS rpna14b_metadata, rpn_a.rpna14b_metadata_comment, rpn_a.rpna14c, metadata_mapping(rpn_a.rpna14c_metadata) AS rpna14c_metadata, rpn_a.rpna14c_metadata_comment, rpn_a.rpna14d, metadata_mapping(rpn_a.rpna14d_metadata) AS rpna14d_metadata, rpn_a.rpna14d_metadata_comment, rpn_a.rpna14e, metadata_mapping(rpn_a.rpna14e_metadata) AS rpna14e_metadata, rpn_a.rpna14e_metadata_comment, rpn_a.rpna14f, metadata_mapping(rpn_a.rpna14f_metadata) AS rpna14f_metadata, rpn_a.rpna14f_metadata_comment, rpn_a.rpna14g, metadata_mapping(rpn_a.rpna14g_metadata) AS rpna14g_metadata, rpn_a.rpna14g_metadata_comment, rpn_a.rpna14gq, metadata_mapping(rpn_a.rpna14gq_metadata) AS rpna14gq_metadata, rpn_a.rpna14gq_metadata_comment, rpn_a.rpna15, metadata_mapping(rpn_a.rpna15_metadata) AS rpna15_metadata, rpn_a.rpna15_metadata_comment, typepregnancy_mapping(rpn_a.rpna16) AS rpna16, metadata_mapping(rpn_a.rpna16_metadata) AS rpna16_metadata, rpn_a.rpna16_metadata_comment, rpn_a.rpna16a, metadata_mapping(rpn_a.rpna16a_metadata) AS rpna16a_metadata, rpn_a.rpna16a_metadata_comment, rpn_a.rpna17, metadata_mapping(rpn_a.rpna17_metadata) AS rpna17_metadata, rpn_a.rpna17_metadata_comment, rpn_a.rpna18, metadata_mapping(rpn_a.rpna18_metadata) AS rpna18_metadata, rpn_a.rpna18_metadata_comment, rpn_a.rpna19, metadata_mapping(rpn_a.rpna19_metadata) AS rpna19_metadata, rpn_a.rpna19_metadata_comment, rpn_a.rpna20a, metadata_mapping(rpn_a.rpna20a_metadata) AS rpna20a_metadata, rpn_a.rpna20a_metadata_comment, rpn_a.rpna20b, metadata_mapping(rpn_a.rpna20b_metadata) AS rpna20b_metadata, rpn_a.rpna20b_metadata_comment, rpn_a.rpna21, metadata_mapping(rpn_a.rpna21_metadata) AS rpna21_metadata, rpn_a.rpna21_metadata_comment, rpn_a.rpna21z, metadata_mapping(rpn_a.rpna21z_metadata) AS rpna21z_metadata, rpn_a.rpna21z_metadata_comment, metadata_mapping(rpn_a.rpna21group_metadata) AS rpna21group_metadata, rpn_a.rpna21group_metadata_comment, rpn_a.rpna21a, metadata_mapping(rpn_a.rpna21a_metadata) AS rpna21a_metadata, rpn_a.rpna21a_metadata_comment, rpn_a.rpna21b, metadata_mapping(rpn_a.rpna21b_metadata) AS rpna21b_metadata, rpn_a.rpna21b_metadata_comment, rpn_a.rpna21c, metadata_mapping(rpn_a.rpna21c_metadata) AS rpna21c_metadata, rpn_a.rpna21c_metadata_comment, rpn_a.rpna17g, metadata_mapping(rpn_a.rpna17g_metadata) AS rpna17g_metadata, rpn_a.rpna17g_metadata_comment, rpn_a.rpna18g, metadata_mapping(rpn_a.rpna18g_metadata) AS rpna18g_metadata, rpn_a.rpna18g_metadata_comment, rpn_a.rpna19g, metadata_mapping(rpn_a.rpna19g_metadata) AS rpna19g_metadata, rpn_a.rpna19g_metadata_comment, rpn_a.rpna20ga, metadata_mapping(rpn_a.rpna20ga_metadata) AS rpna20ga_metadata, rpn_a.rpna20ga_metadata_comment, rpn_a.rpna20gb, metadata_mapping(rpn_a.rpna20gb_metadata) AS rpna20gb_metadata, rpn_a.rpna20gb_metadata_comment, rpn_a.rpna21g, metadata_mapping(rpn_a.rpna21g_metadata) AS rpna21g_metadata, rpn_a.rpna21g_metadata_comment, rpn_a.rpna21gz, metadata_mapping(rpn_a.rpna21gz_metadata) AS rpna21gz_metadata, rpn_a.rpna21gz_metadata_comment, metadata_mapping(rpn_a.rpna21twinonegroup_metadata) AS rpna21twinonegroup_metadata, rpn_a.rpna21twinonegroup_metadata_comment, rpn_a.rpna21ag, metadata_mapping(rpn_a.rpna21ag_metadata) AS rpna21ag_metadata, rpn_a.rpna21ag_metadata_comment, rpn_a.rpna21bg, metadata_mapping(rpn_a.rpna21bg_metadata) AS rpna21bg_metadata, rpn_a.rpna21bg_metadata_comment, rpn_a.rpna21cg, metadata_mapping(rpn_a.rpna21cg_metadata) AS rpna21cg_metadata, rpn_a.rpna21cg_metadata_comment, rpn_a.rpna17g2, metadata_mapping(rpn_a.rpna17g2_metadata) AS rpna17g2_metadata, rpn_a.rpna17g2_metadata_comment, rpn_a.rpna18g2, metadata_mapping(rpn_a.rpna18g2_metadata) AS rpna18g2_metadata, rpn_a.rpna18g2_metadata_comment, rpn_a.rpna19g2, metadata_mapping(rpn_a.rpna19g2_metadata) AS rpna19g2_metadata, rpn_a.rpna19g2_metadata_comment, rpn_a.rpna20g2a, metadata_mapping(rpn_a.rpna20g2a_metadata) AS rpna20g2a_metadata, rpn_a.rpna20g2a_metadata_comment, rpn_a.rpna20g2b, metadata_mapping(rpn_a.rpna20g2b_metadata) AS rpna20g2b_metadata, rpn_a.rpna20g2b_metadata_comment, rpn_a.rpna21g2, metadata_mapping(rpn_a.rpna21g2_metadata) AS rpna21g2_metadata, rpn_a.rpna21g2_metadata_comment, rpn_a.rpna21g2z, metadata_mapping(rpn_a.rpna21g2z_metadata) AS rpna21g2z_metadata, rpn_a.rpna21g2z_metadata_comment, metadata_mapping(rpn_a.rpna21twintwogroup_metadata) AS rpna21twintwogroup_metadata, rpn_a.rpna21twintwogroup_metadata_comment, rpn_a.rpna21ag2, metadata_mapping(rpn_a.rpna21ag2_metadata) AS rpna21ag2_metadata, rpn_a.rpna21ag2_metadata_comment, rpn_a.rpna21bg2, metadata_mapping(rpn_a.rpna21bg2_metadata) AS rpna21bg2_metadata, rpn_a.rpna21bg2_metadata_comment, rpn_a.rpna21cg2, metadata_mapping(rpn_a.rpna21cg2_metadata) AS rpna21cg2_metadata, rpn_a.rpna21cg2_metadata_comment, at.version AS versao_rpn FROM ((((((coorte.rpn_a rpn_a JOIN public.activity a ON ((a.id = rpn_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_rpn_a OWNER TO postgres;

--
-- Name: v_sau_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_sau_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS sauadataapini, a.finalization_date AS sauadataapfim, o.date AS sauadataoffline, u.code AS sauaaferidor, ou.code AS sauadigitador, noyesuppercase_mapping(sau_a.saua2) AS saua2, metadata_mapping(sau_a.saua2_metadata) AS saua2_metadata, sau_a.saua2_metadata_comment, noyesuppercase_mapping(sau_a.saua3) AS saua3, metadata_mapping(sau_a.saua3_metadata) AS saua3_metadata, sau_a.saua3_metadata_comment, sau_a.saua3a, metadata_mapping(sau_a.saua3a_metadata) AS saua3a_metadata, sau_a.saua3a_metadata_comment, noyesuppercase_mapping(sau_a.saua4) AS saua4, metadata_mapping(sau_a.saua4_metadata) AS saua4_metadata, sau_a.saua4_metadata_comment, sau_a.saua4a, metadata_mapping(sau_a.saua4a_metadata) AS saua4a_metadata, sau_a.saua4a_metadata_comment, noyesuppercase_mapping(sau_a.saua5) AS saua5, metadata_mapping(sau_a.saua5_metadata) AS saua5_metadata, sau_a.saua5_metadata_comment, sau_a.saua5a1, metadata_mapping(sau_a.saua5a1_metadata) AS saua5a1_metadata, sau_a.saua5a1_metadata_comment, sau_a.saua5a2, metadata_mapping(sau_a.saua5a2_metadata) AS saua5a2_metadata, sau_a.saua5a2_metadata_comment, sau_a.saua5a3, metadata_mapping(sau_a.saua5a3_metadata) AS saua5a3_metadata, sau_a.saua5a3_metadata_comment, sau_a.saua5a4, metadata_mapping(sau_a.saua5a4_metadata) AS saua5a4_metadata, sau_a.saua5a4_metadata_comment, sau_a.saua5a5, metadata_mapping(sau_a.saua5a5_metadata) AS saua5a5_metadata, sau_a.saua5a5_metadata_comment, sau_a.saua5a1q, metadata_mapping(sau_a.saua5a1q_metadata) AS saua5a1q_metadata, sau_a.saua5a1q_metadata_comment, noyesuppercase_mapping(sau_a.saua5a2q) AS saua5a2q, metadata_mapping(sau_a.saua5a2q_metadata) AS saua5a2q_metadata, sau_a.saua5a2q_metadata_comment, sau_a.saua5a3q, metadata_mapping(sau_a.saua5a3q_metadata) AS saua5a3q_metadata, sau_a.saua5a3q_metadata_comment, sau_a.saua5a4q, metadata_mapping(sau_a.saua5a4q_metadata) AS saua5a4q_metadata, sau_a.saua5a4q_metadata_comment, sau_a.saua5a5q, metadata_mapping(sau_a.saua5a5q_metadata) AS saua5a5q_metadata, sau_a.saua5a5q_metadata_comment, noyesuppercase_mapping(sau_a.saua6) AS saua6, metadata_mapping(sau_a.saua6_metadata) AS saua6_metadata, sau_a.saua6_metadata_comment, sau_a.saua6a, metadata_mapping(sau_a.saua6a_metadata) AS saua6a_metadata, sau_a.saua6a_metadata_comment, at.version AS versao_sau FROM ((((((coorte.sau_a sau_a JOIN public.activity a ON ((a.id = sau_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_sau_a OWNER TO postgres;

--
-- Name: v_saus_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_saus_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS sausadataapini, a.finalization_date AS sausadataapfim, o.date AS sausadataoffline, u.code AS sausaaferidor, ou.code AS sausadigitador, noyesuppercase_mapping(saus_a.sausa3) AS sausa3, metadata_mapping(saus_a.sausa3_metadata) AS sausa3_metadata, saus_a.sausa3_metadata_comment, saus_a.sausa3a, metadata_mapping(saus_a.sausa3a_metadata) AS sausa3a_metadata, saus_a.sausa3a_metadata_comment, noyesuppercase_mapping(saus_a.sausa4) AS sausa4, metadata_mapping(saus_a.sausa4_metadata) AS sausa4_metadata, saus_a.sausa4_metadata_comment, saus_a.sausa4a, metadata_mapping(saus_a.sausa4a_metadata) AS sausa4a_metadata, saus_a.sausa4a_metadata_comment, noyesuppercase_mapping(saus_a.sausa5) AS sausa5, metadata_mapping(saus_a.sausa5_metadata) AS sausa5_metadata, saus_a.sausa5_metadata_comment, saus_a.sausa5a1, metadata_mapping(saus_a.sausa5a1_metadata) AS sausa5a1_metadata, saus_a.sausa5a1_metadata_comment, saus_a.sausa5a1q, metadata_mapping(saus_a.sausa5a1q_metadata) AS sausa5a1q_metadata, saus_a.sausa5a1q_metadata_comment, saus_a.sausa5a2, metadata_mapping(saus_a.sausa5a2_metadata) AS sausa5a2_metadata, saus_a.sausa5a2_metadata_comment, noyesuppercase_mapping(saus_a.sausa5a2q) AS sausa5a2q, metadata_mapping(saus_a.sausa5a2q_metadata) AS sausa5a2q_metadata, saus_a.sausa5a2q_metadata_comment, saus_a.sausa5a3, metadata_mapping(saus_a.sausa5a3_metadata) AS sausa5a3_metadata, saus_a.sausa5a3_metadata_comment, saus_a.sausa5a3q, metadata_mapping(saus_a.sausa5a3q_metadata) AS sausa5a3q_metadata, saus_a.sausa5a3q_metadata_comment, saus_a.sausa5a4, metadata_mapping(saus_a.sausa5a4_metadata) AS sausa5a4_metadata, saus_a.sausa5a4_metadata_comment, saus_a.sausa5a4q, metadata_mapping(saus_a.sausa5a4q_metadata) AS sausa5a4q_metadata, saus_a.sausa5a4q_metadata_comment, saus_a.sausa5a5, metadata_mapping(saus_a.sausa5a5_metadata) AS sausa5a5_metadata, saus_a.sausa5a5_metadata_comment, saus_a.sausa5a5q, metadata_mapping(saus_a.sausa5a5q_metadata) AS sausa5a5q_metadata, saus_a.sausa5a5q_metadata_comment, noyesuppercase_mapping(saus_a.sausa6) AS sausa6, metadata_mapping(saus_a.sausa6_metadata) AS sausa6_metadata, saus_a.sausa6_metadata_comment, saus_a.sausa6a, metadata_mapping(saus_a.sausa6a_metadata) AS sausa6a_metadata, saus_a.sausa6a_metadata_comment, at.version AS versao_saus FROM ((((((coorte.saus_a saus_a JOIN public.activity a ON ((a.id = saus_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_saus_a OWNER TO postgres;

--
-- Name: v_son_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_son_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS sonadataapini, a.finalization_date AS sonadataapfim, o.date AS sonadataoffline, u.code AS sonaaferidor, ou.code AS sonadigitador, son_a.sona1h, son_a.sona1m, metadata_mapping(son_a.sona1_metadata) AS sona1_metadata, son_a.sona1_metadata_comment, son_a.sona2h, son_a.sona2m, metadata_mapping(son_a.sona2_metadata) AS sona2_metadata, son_a.sona2_metadata_comment, son_a.sona3h, son_a.sona3m, metadata_mapping(son_a.sona3_metadata) AS sona3_metadata, son_a.sona3_metadata_comment, son_a.sona4h, son_a.sona4m, metadata_mapping(son_a.sona4_metadata) AS sona4_metadata, son_a.sona4_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5a) AS sona5a, metadata_mapping(son_a.sona5a_metadata) AS sona5a_metadata, son_a.sona5a_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5b) AS sona5b, metadata_mapping(son_a.sona5b_metadata) AS sona5b_metadata, son_a.sona5b_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5c) AS sona5c, metadata_mapping(son_a.sona5c_metadata) AS sona5c_metadata, son_a.sona5c_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5d) AS sona5d, metadata_mapping(son_a.sona5d_metadata) AS sona5d_metadata, son_a.sona5d_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5e) AS sona5e, metadata_mapping(son_a.sona5e_metadata) AS sona5e_metadata, son_a.sona5e_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5f) AS sona5f, metadata_mapping(son_a.sona5f_metadata) AS sona5f_metadata, son_a.sona5f_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5g) AS sona5g, metadata_mapping(son_a.sona5g_metadata) AS sona5g_metadata, son_a.sona5g_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5h) AS sona5h, metadata_mapping(son_a.sona5h_metadata) AS sona5h_metadata, son_a.sona5h_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5i) AS sona5i, metadata_mapping(son_a.sona5i_metadata) AS sona5i_metadata, son_a.sona5i_metadata_comment, yesnouppercasecorrectposition_mapping(son_a.sona5j) AS sona5j, metadata_mapping(son_a.sona5j_metadata) AS sona5j_metadata, son_a.sona5j_metadata_comment, son_a.sona5j1, metadata_mapping(son_a.sona5j1_metadata) AS sona5j1_metadata, son_a.sona5j1_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona5j2) AS sona5j2, metadata_mapping(son_a.sona5j2_metadata) AS sona5j2_metadata, son_a.sona5j2_metadata_comment, qualitysleep_mapping(son_a.sona6) AS sona6, metadata_mapping(son_a.sona6_metadata) AS sona6_metadata, son_a.sona6_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona7) AS sona7, metadata_mapping(son_a.sona7_metadata) AS sona7_metadata, son_a.sona7_metadata_comment, frequencyofsleepproblems_mapping(son_a.sona8) AS sona8, metadata_mapping(son_a.sona8_metadata) AS sona8_metadata, son_a.sona8_metadata_comment, difficultyintasks_mapping(son_a.sona9) AS sona9, metadata_mapping(son_a.sona9_metadata) AS sona9_metadata, son_a.sona9_metadata_comment, qualitysleep_mapping(son_a.sona10) AS sona10, metadata_mapping(son_a.sona10_metadata) AS sona10_metadata, son_a.sona10_metadata_comment, qualitysleep_mapping(son_a.sona11) AS sona11, metadata_mapping(son_a.sona11_metadata) AS sona11_metadata, son_a.sona11_metadata_comment, at.version AS versao_son FROM ((((((coorte.son_a son_a JOIN public.activity a ON ((a.id = son_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_son_a OWNER TO postgres;

--
-- Name: v_sons_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_sons_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS sonsadataapini, a.finalization_date AS sonsadataapfim, o.date AS sonsadataoffline, u.code AS sonsaaferidor, ou.code AS sonsadigitador, sons_a.sonsa1h, sons_a.sonsa1m, metadata_mapping(sons_a.sonsa1_metadata) AS sonsa1_metadata, sons_a.sonsa1_metadata_comment, sons_a.sonsa2h, sons_a.sonsa2m, metadata_mapping(sons_a.sonsa2_metadata) AS sonsa2_metadata, sons_a.sonsa2_metadata_comment, sons_a.sonsa3h, sons_a.sonsa3m, metadata_mapping(sons_a.sonsa3_metadata) AS sonsa3_metadata, sons_a.sonsa3_metadata_comment, sons_a.sonsa4h, sons_a.sonsa4m, metadata_mapping(sons_a.sonsa4_metadata) AS sonsa4_metadata, sons_a.sonsa4_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5a) AS sonsa5a, metadata_mapping(sons_a.sonsa5a_metadata) AS sonsa5a_metadata, sons_a.sonsa5a_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5b) AS sonsa5b, metadata_mapping(sons_a.sonsa5b_metadata) AS sonsa5b_metadata, sons_a.sonsa5b_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5c) AS sonsa5c, metadata_mapping(sons_a.sonsa5c_metadata) AS sonsa5c_metadata, sons_a.sonsa5c_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5d) AS sonsa5d, metadata_mapping(sons_a.sonsa5d_metadata) AS sonsa5d_metadata, sons_a.sonsa5d_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5e) AS sonsa5e, metadata_mapping(sons_a.sonsa5e_metadata) AS sonsa5e_metadata, sons_a.sonsa5e_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5f) AS sonsa5f, metadata_mapping(sons_a.sonsa5f_metadata) AS sonsa5f_metadata, sons_a.sonsa5f_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5g) AS sonsa5g, metadata_mapping(sons_a.sonsa5g_metadata) AS sonsa5g_metadata, sons_a.sonsa5g_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5h) AS sonsa5h, metadata_mapping(sons_a.sonsa5h_metadata) AS sonsa5h_metadata, sons_a.sonsa5h_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5i) AS sonsa5i, metadata_mapping(sons_a.sonsa5i_metadata) AS sonsa5i_metadata, sons_a.sonsa5i_metadata_comment, yesnouppercasecorrectposition_mapping(sons_a.sonsa5j) AS sonsa5j, metadata_mapping(sons_a.sonsa5j_metadata) AS sonsa5j_metadata, sons_a.sonsa5j_metadata_comment, sons_a.sonsa5j1, metadata_mapping(sons_a.sonsa5j1_metadata) AS sonsa5j1_metadata, sons_a.sonsa5j1_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa5j2) AS sonsa5j2, metadata_mapping(sons_a.sonsa5j2_metadata) AS sonsa5j2_metadata, sons_a.sonsa5j2_metadata_comment, qualitysleep_mapping(sons_a.sonsa6) AS sonsa6, metadata_mapping(sons_a.sonsa6_metadata) AS sonsa6_metadata, sons_a.sonsa6_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa7) AS sonsa7, metadata_mapping(sons_a.sonsa7_metadata) AS sonsa7_metadata, sons_a.sonsa7_metadata_comment, frequencyofsleepproblems_mapping(sons_a.sonsa8) AS sonsa8, metadata_mapping(sons_a.sonsa8_metadata) AS sonsa8_metadata, sons_a.sonsa8_metadata_comment, difficultyintasks_mapping(sons_a.sonsa9) AS sonsa9, metadata_mapping(sons_a.sonsa9_metadata) AS sonsa9_metadata, sons_a.sonsa9_metadata_comment, at.version AS versao_sons FROM ((((((coorte.sons_a sons_a JOIN public.activity a ON ((a.id = sons_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_sons_a OWNER TO postgres;

--
-- Name: v_tcc_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_tcc_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS tccadataapini, a.finalization_date AS tccadataapfim, o.date AS tccadataoffline, u.code AS tccaaferidor, ou.code AS tccadigitador, yesnoupper_mapping(tcc_a.tcca1) AS tcca1, metadata_mapping(tcc_a.tcca1_metadata) AS tcca1_metadata, tcc_a.tcca1_metadata_comment, yesnoupper_mapping(tcc_a.tcca2) AS tcca2, metadata_mapping(tcc_a.tcca2_metadata) AS tcca2_metadata, tcc_a.tcca2_metadata_comment, at.version AS versao_tcc FROM ((((((coorte.tcc_a tcc_a JOIN public.activity a ON ((a.id = tcc_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_tcc_a OWNER TO postgres;

--
-- Name: v_tce_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_tce_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS tceadataapini, a.finalization_date AS tceadataapfim, o.date AS tceadataoffline, u.code AS tceaaferidor, ou.code AS tceadigitador, yesnouppercasecorrectposition_mapping(tce_a.tcea1) AS tcea1, metadata_mapping(tce_a.tcea1_metadata) AS tcea1_metadata, tce_a.tcea1_metadata_comment, yesnouppercasecorrectposition_mapping(tce_a.tcea2) AS tcea2, metadata_mapping(tce_a.tcea2_metadata) AS tcea2_metadata, tce_a.tcea2_metadata_comment, at.version AS versao_tce FROM ((((((coorte.tce_a tce_a JOIN public.activity a ON ((a.id = tce_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_tce_a OWNER TO postgres;

--
-- Name: v_tcm_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_tcm_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS tcmadataapini, a.finalization_date AS tcmadataapfim, o.date AS tcmadataoffline, u.code AS tcmaaferidor, ou.code AS tcmadigitador, tcm_a.tcma1h, tcm_a.tcma1m, metadata_mapping(tcm_a.tcma1_metadata) AS tcma1_metadata, tcm_a.tcma1_metadata_comment, tcm_a.tcma2h, tcm_a.tcma2m, metadata_mapping(tcm_a.tcma2_metadata) AS tcma2_metadata, tcm_a.tcma2_metadata_comment, tcm_a.tcma3i, metadata_mapping(tcm_a.tcma3i_metadata) AS tcma3i_metadata, tcm_a.tcma3i_metadata_comment, tcm_a.tcma3f, metadata_mapping(tcm_a.tcma3f_metadata) AS tcma3f_metadata, tcm_a.tcma3f_metadata_comment, tcm_a.tcma4f, metadata_mapping(tcm_a.tcma4f_metadata) AS tcma4f_metadata, tcm_a.tcma4f_metadata_comment, tcm_a.tcma5f, metadata_mapping(tcm_a.tcma5f_metadata) AS tcma5f_metadata, tcm_a.tcma5f_metadata_comment, at.version AS versao_tcm FROM ((((((coorte.tcm_a tcm_a JOIN public.activity a ON ((a.id = tcm_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_tcm_a OWNER TO postgres;

--
-- Name: v_ttg_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_ttg_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS ttgadataapini, a.finalization_date AS ttgadataapfim, o.date AS ttgadataoffline, u.code AS ttgaaferidor, ou.code AS ttgadigitador, ttg_a.liua9b, metadata_mapping(ttg_a.liua9b_metadata) AS liua9b_metadata, ttg_a.liua9b_metadata_comment, ttg_a.liua9b1, metadata_mapping(ttg_a.liua9b1_metadata) AS liua9b1_metadata, ttg_a.liua9b1_metadata_comment, ttg_a.liua9b2, metadata_mapping(ttg_a.liua9b2_metadata) AS liua9b2_metadata, ttg_a.liua9b2_metadata_comment, at.version AS versao_ttg FROM ((((((coorte.ttg_a ttg_a JOIN public.activity a ON ((a.id = ttg_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_ttg_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: ttp_a; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE ttp_a (
    id bigint DEFAULT nextval('public.survey_activity_seq'::regclass) NOT NULL,
    stack_state text,
    activity_id integer,
    ttpa2a integer,
    ttpa2a_metadata character varying(255),
    ttpa2a_metadata_comment text,
    ttpa2b integer,
    ttpa2b_metadata character varying(255),
    ttpa2b_metadata_comment text,
    ttpa1 timestamp without time zone,
    ttpa1_metadata character varying(255),
    ttpa1_metadata_comment text
);


ALTER TABLE lab.ttp_a OWNER TO postgres;

SET search_path = extraction, pg_catalog;

--
-- Name: v_ttp_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_ttp_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS ttpadataapini, a.finalization_date AS ttpadataapfim, o.date AS ttpadataoffline, u.code AS ttpaaferidor, ou.code AS ttpadigitador, ttp_a.ttpa1, metadata_mapping(ttp_a.ttpa1_metadata) AS ttpa1_metadata, ttp_a.ttpa1_metadata_comment, ttp_a.ttpa2a, metadata_mapping(ttp_a.ttpa2a_metadata) AS ttpa2a_metadata, ttp_a.ttpa2a_metadata_comment, ttp_a.ttpa2b, metadata_mapping(ttp_a.ttpa2b_metadata) AS ttpa2b_metadata, ttp_a.ttpa2b_metadata_comment, at.version AS versao_ttp FROM ((((((lab.ttp_a ttp_a JOIN public.activity a ON ((a.id = ttp_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_ttp_a OWNER TO postgres;

--
-- Name: v_ttps_a; Type: VIEW; Schema: extraction; Owner: postgres
--

CREATE VIEW v_ttps_a AS
SELECT p.recruitment_number AS numerorecrutamento, a.status AS statusatividade, a.activity_category AS tipoatividade, a.realization_date AS ttpsadataapini, a.finalization_date AS ttpsadataapfim, o.date AS ttpsadataoffline, u.code AS ttpsaaferidor, ou.code AS ttpsadigitador, ttps_a.ttpsa1, metadata_mapping(ttps_a.ttpsa1_metadata) AS ttpsa1_metadata, ttps_a.ttpsa1_metadata_comment, ttps_a.ttpsa2a, metadata_mapping(ttps_a.ttpsa2a_metadata) AS ttpsa2a_metadata, ttps_a.ttpsa2a_metadata_comment, ttps_a.ttpsa2b, metadata_mapping(ttps_a.ttpsa2b_metadata) AS ttpsa2b_metadata, ttps_a.ttpsa2b_metadata_comment, at.version AS versao_ttps FROM ((((((coorte.ttps_a ttps_a JOIN public.activity a ON ((a.id = ttps_a.activity_id))) JOIN public.activity_type at ON ((at.id = a.activity_type_id))) JOIN public.participant p ON ((p.id = a.participant_id))) JOIN public."user" u ON ((u.id = a.user_id))) LEFT JOIN public.offline_data_entry o ON ((o.id = a.offline_data_entry))) LEFT JOIN public."user" ou ON ((ou.id = o.user_id))) ORDER BY p.recruitment_number;


ALTER TABLE extraction.v_ttps_a OWNER TO postgres;

SET search_path = lab, pg_catalog;

--
-- Name: field_center_qc_counter_seq; Type: SEQUENCE; Schema: lab; Owner: postgres
--

CREATE SEQUENCE field_center_qc_counter_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lab.field_center_qc_counter_seq OWNER TO postgres;

--
-- Name: field_center_qc_counter; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE field_center_qc_counter (
    id integer DEFAULT nextval('field_center_qc_counter_seq'::regclass) NOT NULL,
    counter integer,
    fieldcenter character varying(255),
    tube_counter integer,
    visit integer
);


ALTER TABLE lab.field_center_qc_counter OWNER TO postgres;

--
-- Name: participant_visit_qc_group_seq; Type: SEQUENCE; Schema: lab; Owner: postgres
--

CREATE SEQUENCE participant_visit_qc_group_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lab.participant_visit_qc_group_seq OWNER TO postgres;

--
-- Name: participant_visit_qc_group; Type: TABLE; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE TABLE participant_visit_qc_group (
    id integer DEFAULT nextval('participant_visit_qc_group_seq'::regclass) NOT NULL,
    control_group character varying(255),
    field_center character varying(255),
    visit integer,
    participant_id integer
);


ALTER TABLE lab.participant_visit_qc_group OWNER TO postgres;

--
-- Name: v_aliquot_processing; Type: VIEW; Schema: lab; Owner: postgres
--

CREATE VIEW v_aliquot_processing AS
SELECT to_date(((act.realization_date)::character(10))::text, 'yyyy-MM-dd'::text) AS aliquoting_date, act.activity_category, p.fieldcenter AS field_center, a.quality_control, a.aliquot_type, a.aliquot_moment, t.tube_type, count(*) AS count FROM (((aliquot a JOIN tube t ON ((t.id = a.tube_id))) JOIN public.activity act ON ((act.id = a.aliquoting_activity_id))) JOIN public.participant p ON ((p.id = act.participant_id))) WHERE (a.code IS NOT NULL) GROUP BY to_date(((act.realization_date)::character(10))::text, 'yyyy-MM-dd'::text), act.activity_category, p.fieldcenter, a.quality_control, a.aliquot_type, a.aliquot_moment, t.tube_type ORDER BY to_date(((act.realization_date)::character(10))::text, 'yyyy-MM-dd'::text), act.activity_category, p.fieldcenter, a.quality_control, a.aliquot_type, a.aliquot_moment, t.tube_type;


ALTER TABLE lab.v_aliquot_processing OWNER TO postgres;

--
-- Name: v_aliquot_type_report; Type: VIEW; Schema: lab; Owner: postgres
--

CREATE VIEW v_aliquot_type_report AS
SELECT act.realization_date, prt.fieldcenter, alq.code, alq.aliquot_type, alq.aliquot_moment FROM ((aliquot alq JOIN public.activity act ON ((act.id = alq.aliquoting_activity_id))) JOIN public.participant prt ON ((prt.id = act.participant_id))) WHERE (((act.status)::text <> ALL (ARRAY[('DELETED'::character varying)::text, ('NOT_INITIALIZED'::character varying)::text])) AND (alq.code IS NOT NULL));


ALTER TABLE lab.v_aliquot_type_report OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: activity_log_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE activity_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_log_seq OWNER TO postgres;

--
-- Name: activity_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE activity_log (
    id integer DEFAULT nextval('activity_log_seq'::regclass) NOT NULL,
    action character varying(20),
    activity_data text,
    date timestamp without time zone,
    activity_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.activity_log OWNER TO postgres;

--
-- Name: contact_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contact_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_seq OWNER TO postgres;

--
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contact (
    id integer DEFAULT nextval('contact_seq'::regclass) NOT NULL,
    name character varying(80),
    relation character varying(20),
    contact_info_id integer NOT NULL,
    participant_id integer NOT NULL
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- Name: contact_info_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contact_info_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_info_seq OWNER TO postgres;

--
-- Name: contact_info; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contact_info (
    id integer DEFAULT nextval('contact_info_seq'::regclass) NOT NULL,
    city character varying(255),
    complement character varying(255),
    firstemail character varying(80),
    hasemail character varying(255),
    hasfacebook character varying(255),
    neighborhood character varying(255),
    number character varying(255),
    observation character varying(1024),
    phone character varying(20),
    phone2 character varying(20),
    phonewithinternet character varying(255),
    relationshiporkinship character varying(80),
    secondemail character varying(80),
    state character varying(20),
    street character varying(255),
    zipcode character varying(20),
    participant_id integer
);


ALTER TABLE public.contact_info OWNER TO postgres;

--
-- Name: daylight_saving_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE daylight_saving_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.daylight_saving_seq OWNER TO postgres;

--
-- Name: daylight_saving; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE daylight_saving (
    id integer DEFAULT nextval('daylight_saving_seq'::regclass) NOT NULL,
    begin_date timestamp without time zone,
    end_date timestamp without time zone,
    excluded_field_centers text
);


ALTER TABLE public.daylight_saving OWNER TO postgres;

--
-- Name: general_comment_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE general_comment_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.general_comment_seq OWNER TO postgres;

--
-- Name: general_comment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE general_comment (
    id integer DEFAULT nextval('general_comment_seq'::regclass) NOT NULL,
    comment character varying(255),
    date date,
    deleted boolean,
    participant_id integer,
    user_id integer
);


ALTER TABLE public.general_comment OWNER TO postgres;

--
-- Name: permission_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_seq OWNER TO postgres;

--
-- Name: permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE permission (
    id integer DEFAULT nextval('permission_seq'::regclass) NOT NULL,
    functionality character varying(255),
    type_execution character varying(255),
    permission_grid_id integer
);


ALTER TABLE public.permission OWNER TO postgres;

--
-- Name: permission_grid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE permission_grid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_grid_seq OWNER TO postgres;

--
-- Name: permission_grid; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE permission_grid (
    id integer DEFAULT nextval('permission_grid_seq'::regclass) NOT NULL,
    profile character varying(255),
    user_id integer NOT NULL
);


ALTER TABLE public.permission_grid OWNER TO postgres;

--
-- Name: randomization_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE randomization_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.randomization_seq OWNER TO postgres;

--
-- Name: randomization; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE randomization (
    id integer DEFAULT nextval('randomization_seq'::regclass) NOT NULL,
    center character varying(255),
    "group" character varying(255),
    used boolean
);


ALTER TABLE public.randomization OWNER TO postgres;

--
-- Name: uploaded_file_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE uploaded_file_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uploaded_file_seq OWNER TO postgres;

--
-- Name: uploaded_file; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE uploaded_file (
    id bigint DEFAULT nextval('uploaded_file_seq'::regclass) NOT NULL,
    file_name character varying(255),
    file_path character varying(255),
    original_file_name character varying(255),
    upload_date timestamp without time zone,
    activity_id integer,
    participant_id integer,
    user_id integer
);


ALTER TABLE public.uploaded_file OWNER TO postgres;

--
-- Name: user_role_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_role_seq OWNER TO postgres;

--
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_role (
    id integer DEFAULT nextval('user_role_seq'::regclass) NOT NULL,
    role character varying(20),
    user_id integer NOT NULL
);


ALTER TABLE public.user_role OWNER TO postgres;

--
-- Name: variables_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE variables_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.variables_seq OWNER TO postgres;

--
-- Name: variables; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE variables (
    id integer DEFAULT nextval('variables_seq'::regclass) NOT NULL,
    breastfeeding_intention boolean,
    child_name text,
    date_of_birth timestamp without time zone,
    expected_date_of_birth timestamp without time zone,
    hospital_name text,
    last_fasting_glycemia_result integer,
    last_post_120_glycemia_result integer,
    number_of_children integer,
    pregnancytype character varying(255),
    should_receive_breastfeeding_orientation character varying(255),
    should_receive_breastfeeding_orientation_comment character varying(255),
    still_pregnant character varying(255),
    takes_insulin boolean,
    ttg_count integer,
    twin_one_name text,
    twin_two_name text,
    used_insulin_during_pregnancy boolean,
    participant_id integer NOT NULL
);


ALTER TABLE public.variables OWNER TO postgres;

--
-- Name: v_participant_report; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_participant_report AS
SELECT pt.name, pt.recruitment_number, pt.status_in_study, pr.date AS recruitment_date, pt.fieldcenter, ci.street, ci.number, ci.complement, ci.neighborhood, ci.city, ci.state, ci.zipcode, ci.observation, ci.phone, ci.phone2, (SELECT max(activity.realization_date) AS max FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'LAP'::text))))) AS last_lapa_date, (SELECT max(activity.realization_date) AS max FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'LIU'::text))))) AS last_liua_date, v.still_pregnant AS lapa1, v.expected_date_of_birth AS dpp, v.date_of_birth AS dp, v.takes_insulin, v.used_insulin_during_pregnancy, v.should_receive_breastfeeding_orientation AS lapa_inf_breastfeeding, v.should_receive_breastfeeding_orientation_comment AS lapa_inf_breastfeeding_comment, array_to_string(ARRAY(SELECT gc.comment FROM general_comment gc WHERE ((pt.id = gc.participant_id) AND (gc.deleted = false)) ORDER BY gc.id), ','::text) AS general_comments, ((SELECT count(*) AS count FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'LIU'::text))))) > 0) AS has_liua, ((SELECT count(*) AS count FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'LID'::text))))) > 0) AS has_lida, (SELECT max(activity.realization_date) AS max FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'TTG'::text))))) AS last_ttga_date, v.last_fasting_glycemia_result, v.last_post_120_glycemia_result, (SELECT count(*) AS count FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'TTG'::text))))) AS ttga_count, (SELECT ace_a.acea6 FROM coorte.ace_a WHERE (ace_a.activity_id = (SELECT activity.id FROM activity WHERE ((((activity.realization_date = (SELECT max(activity.realization_date) AS max FROM activity)) AND (activity.participant_id = pt.id)) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'ACE'::text))))))) AS return_accelerometer, (SELECT max(activity.realization_date) AS max FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'LID'::text))))) AS last_lida_date, (SELECT max(activity.realization_date) AS max FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'RPN'::text))))) AS last_rpna_date, (SELECT max(activity.realization_date) AS max FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'DSO'::text))))) AS last_dsoa_date, (SELECT max(activity.realization_date) AS max FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'RCP'::text))))) AS basal1_date, (SELECT max(activity.realization_date) AS max FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'AAF'::text))))) AS basal2_date, ((SELECT count(*) AS count FROM activity WHERE (((activity.participant_id = pt.id) AND ((activity.status)::text = 'FINALIZED'::text)) AND (activity.activity_type_id IN (SELECT activity_type.id FROM activity_type WHERE ((activity_type.activity_shortname)::text = 'TCM'::text))))) > 0) AS has_tcma FROM ((((participant pt LEFT JOIN participant_registry pr ON ((pt.id = pr.participant_id))) LEFT JOIN variables v ON ((v.participant_id = pt.id))) LEFT JOIN contact ct ON (((ct.participant_id = pt.id) AND (((pt.main_contact IS NOT NULL) AND ((ct.relation)::text = (pt.main_contact)::text)) OR ((pt.main_contact IS NULL) AND ((ct.relation)::text = 'PARTICIPANT'::text)))))) LEFT JOIN contact_info ci ON ((ci.id = ct.contact_info_id)));


ALTER TABLE public.v_participant_report OWNER TO postgres;

SET search_path = coorte, pg_catalog;

--
-- Name: aaf_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aaf_a
    ADD CONSTRAINT aaf_a_pkey PRIMARY KEY (id);


--
-- Name: ace_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ace_a
    ADD CONSTRAINT ace_a_pkey PRIMARY KEY (id);


--
-- Name: aces_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aces_a
    ADD CONSTRAINT aces_a_pkey PRIMARY KEY (id);


--
-- Name: afi_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY afi_a
    ADD CONSTRAINT afi_a_pkey PRIMARY KEY (id);


--
-- Name: afis_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY afis_a
    ADD CONSTRAINT afis_a_pkey PRIMARY KEY (id);


--
-- Name: age_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY age_a
    ADD CONSTRAINT age_a_pkey PRIMARY KEY (id);


--
-- Name: alb_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alb_a
    ADD CONSTRAINT alb_a_pkey PRIMARY KEY (id);


--
-- Name: albs_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY albs_a
    ADD CONSTRAINT albs_a_pkey PRIMARY KEY (id);


--
-- Name: ant_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ant_a
    ADD CONSTRAINT ant_a_pkey PRIMARY KEY (id);


--
-- Name: ants_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ants_a
    ADD CONSTRAINT ants_a_pkey PRIMARY KEY (id);


--
-- Name: bia_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bia_a
    ADD CONSTRAINT bia_a_pkey PRIMARY KEY (id);


--
-- Name: coa_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY coa_a
    ADD CONSTRAINT coa_a_pkey PRIMARY KEY (id);


--
-- Name: csts_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY csts_a
    ADD CONSTRAINT csts_a_pkey PRIMARY KEY (id);


--
-- Name: dso_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dso_a
    ADD CONSTRAINT dso_a_pkey PRIMARY KEY (id);


--
-- Name: dsos_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dsos_a
    ADD CONSTRAINT dsos_a_pkey PRIMARY KEY (id);


--
-- Name: edg_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY edg_a
    ADD CONSTRAINT edg_a_pkey PRIMARY KEY (id);


--
-- Name: edgs_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY edgs_a
    ADD CONSTRAINT edgs_a_pkey PRIMARY KEY (id);


--
-- Name: elc_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY elc_a
    ADD CONSTRAINT elc_a_pkey PRIMARY KEY (id);


--
-- Name: enc_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY enc_a
    ADD CONSTRAINT enc_a_pkey PRIMARY KEY (id);


--
-- Name: exas_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exas_a
    ADD CONSTRAINT exas_a_pkey PRIMARY KEY (id);


--
-- Name: exp_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exp_a
    ADD CONSTRAINT exp_a_pkey PRIMARY KEY (id);


--
-- Name: fci_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fci_a
    ADD CONSTRAINT fci_a_pkey PRIMARY KEY (id);


--
-- Name: for_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY for_a
    ADD CONSTRAINT for_a_pkey PRIMARY KEY (id);


--
-- Name: gst_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gst_a
    ADD CONSTRAINT gst_a_pkey PRIMARY KEY (id);


--
-- Name: gst_b_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gst_b
    ADD CONSTRAINT gst_b_pkey PRIMARY KEY (id);


--
-- Name: iae_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY iae_a
    ADD CONSTRAINT iae_a_pkey PRIMARY KEY (id);


--
-- Name: iap_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY iap_a
    ADD CONSTRAINT iap_a_pkey PRIMARY KEY (id);


--
-- Name: iar_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY iar_a
    ADD CONSTRAINT iar_a_pkey PRIMARY KEY (id);


--
-- Name: imas_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY imas_a
    ADD CONSTRAINT imas_a_pkey PRIMARY KEY (id);


--
-- Name: ine_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ine_a
    ADD CONSTRAINT ine_a_pkey PRIMARY KEY (id);


--
-- Name: int_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY int_a
    ADD CONSTRAINT int_a_pkey PRIMARY KEY (id);


--
-- Name: lap_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lap_a
    ADD CONSTRAINT lap_a_pkey PRIMARY KEY (id);


--
-- Name: lap_b_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lap_b
    ADD CONSTRAINT lap_b_pkey PRIMARY KEY (id);


--
-- Name: lid_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lid_a
    ADD CONSTRAINT lid_a_pkey PRIMARY KEY (id);


--
-- Name: liu_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY liu_a
    ADD CONSTRAINT liu_a_pkey PRIMARY KEY (id);


--
-- Name: liu_b_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY liu_b
    ADD CONSTRAINT liu_b_pkey PRIMARY KEY (id);


--
-- Name: pco_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pco_a
    ADD CONSTRAINT pco_a_pkey PRIMARY KEY (id);


--
-- Name: prd_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prd_a
    ADD CONSTRAINT prd_a_pkey PRIMARY KEY (id);


--
-- Name: prt_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prt_a
    ADD CONSTRAINT prt_a_pkey PRIMARY KEY (id);


--
-- Name: qvd_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY qvd_a
    ADD CONSTRAINT qvd_a_pkey PRIMARY KEY (id);


--
-- Name: qvds_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY qvds_a
    ADD CONSTRAINT qvds_a_pkey PRIMARY KEY (id);


--
-- Name: ran_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ran_a
    ADD CONSTRAINT ran_a_pkey PRIMARY KEY (id);


--
-- Name: rcp_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rcp_a
    ADD CONSTRAINT rcp_a_pkey PRIMARY KEY (id);


--
-- Name: rcps_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rcps_a
    ADD CONSTRAINT rcps_a_pkey PRIMARY KEY (id);


--
-- Name: rdv_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rdv_a
    ADD CONSTRAINT rdv_a_pkey PRIMARY KEY (id);


--
-- Name: rdvs_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rdvs_a
    ADD CONSTRAINT rdvs_a_pkey PRIMARY KEY (id);


--
-- Name: rpn_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rpn_a
    ADD CONSTRAINT rpn_a_pkey PRIMARY KEY (id);


--
-- Name: sau_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sau_a
    ADD CONSTRAINT sau_a_pkey PRIMARY KEY (id);


--
-- Name: saus_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY saus_a
    ADD CONSTRAINT saus_a_pkey PRIMARY KEY (id);


--
-- Name: son_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY son_a
    ADD CONSTRAINT son_a_pkey PRIMARY KEY (id);


--
-- Name: sons_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sons_a
    ADD CONSTRAINT sons_a_pkey PRIMARY KEY (id);


--
-- Name: tcc_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tcc_a
    ADD CONSTRAINT tcc_a_pkey PRIMARY KEY (id);


--
-- Name: tce_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tce_a
    ADD CONSTRAINT tce_a_pkey PRIMARY KEY (id);


--
-- Name: tcm_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tcm_a
    ADD CONSTRAINT tcm_a_pkey PRIMARY KEY (id);


--
-- Name: ttg_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ttg_a
    ADD CONSTRAINT ttg_a_pkey PRIMARY KEY (id);


--
-- Name: ttps_a_pkey; Type: CONSTRAINT; Schema: coorte; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ttps_a
    ADD CONSTRAINT ttps_a_pkey PRIMARY KEY (id);


SET search_path = lab, pg_catalog;

--
-- Name: aec_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT aec_a_pkey PRIMARY KEY (id);


--
-- Name: aecs_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT aecs_a_pkey PRIMARY KEY (id);


--
-- Name: aej_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT aej_a_pkey PRIMARY KEY (id);


--
-- Name: aejs_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT aejs_a_pkey PRIMARY KEY (id);


--
-- Name: aen_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aen_a
    ADD CONSTRAINT aen_a_pkey PRIMARY KEY (id);


--
-- Name: aes_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aes_a
    ADD CONSTRAINT aes_a_pkey PRIMARY KEY (id);


--
-- Name: aess_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aess_a
    ADD CONSTRAINT aess_a_pkey PRIMARY KEY (id);


--
-- Name: aet_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aet_a
    ADD CONSTRAINT aet_a_pkey PRIMARY KEY (id);


--
-- Name: aets_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aets_a
    ADD CONSTRAINT aets_a_pkey PRIMARY KEY (id);


--
-- Name: aliquot_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aliquot
    ADD CONSTRAINT aliquot_pkey PRIMARY KEY (id);


--
-- Name: bio_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT bio_a_pkey PRIMARY KEY (id);


--
-- Name: bios_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT bios_a_pkey PRIMARY KEY (id);


--
-- Name: csc_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY csc_a
    ADD CONSTRAINT csc_a_pkey PRIMARY KEY (id);


--
-- Name: cscs_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cscs_a
    ADD CONSTRAINT cscs_a_pkey PRIMARY KEY (id);


--
-- Name: csj_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT csj_a_pkey PRIMARY KEY (id);


--
-- Name: csjs_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT csjs_a_pkey PRIMARY KEY (id);


--
-- Name: csn_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY csn_a
    ADD CONSTRAINT csn_a_pkey PRIMARY KEY (id);


--
-- Name: css_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY css_a
    ADD CONSTRAINT css_a_pkey PRIMARY KEY (id);


--
-- Name: csss_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY csss_a
    ADD CONSTRAINT csss_a_pkey PRIMARY KEY (id);


--
-- Name: cst_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cst_a
    ADD CONSTRAINT cst_a_pkey PRIMARY KEY (id);


--
-- Name: csts_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY csts_a
    ADD CONSTRAINT csts_a_pkey PRIMARY KEY (id);


--
-- Name: dna_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dna_a
    ADD CONSTRAINT dna_a_pkey PRIMARY KEY (id);


--
-- Name: dnas_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dnas_a
    ADD CONSTRAINT dnas_a_pkey PRIMARY KEY (id);


--
-- Name: exa_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exa_a
    ADD CONSTRAINT exa_a_pkey PRIMARY KEY (id);


--
-- Name: field_center_qc_counter_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY field_center_qc_counter
    ADD CONSTRAINT field_center_qc_counter_pkey PRIMARY KEY (id);


--
-- Name: isg_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY isg_a
    ADD CONSTRAINT isg_a_pkey PRIMARY KEY (id);


--
-- Name: isgs_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY isgs_a
    ADD CONSTRAINT isgs_a_pkey PRIMARY KEY (id);


--
-- Name: participant_visit_qc_group_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY participant_visit_qc_group
    ADD CONSTRAINT participant_visit_qc_group_pkey PRIMARY KEY (id);


--
-- Name: ttp_a_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ttp_a
    ADD CONSTRAINT ttp_a_pkey PRIMARY KEY (id);


--
-- Name: tube_pkey; Type: CONSTRAINT; Schema: lab; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tube
    ADD CONSTRAINT tube_pkey PRIMARY KEY (id);


SET search_path = public, pg_catalog;

--
-- Name: activity_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY activity_log
    ADD CONSTRAINT activity_log_pkey PRIMARY KEY (id);


--
-- Name: activity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT activity_pkey PRIMARY KEY (id);


--
-- Name: activity_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY activity_type
    ADD CONSTRAINT activity_type_pkey PRIMARY KEY (id);


--
-- Name: contact_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contact_info
    ADD CONSTRAINT contact_info_pkey PRIMARY KEY (id);


--
-- Name: contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: daylight_saving_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY daylight_saving
    ADD CONSTRAINT daylight_saving_pkey PRIMARY KEY (id);


--
-- Name: general_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY general_comment
    ADD CONSTRAINT general_comment_pkey PRIMARY KEY (id);


--
-- Name: offline_data_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY offline_data_entry
    ADD CONSTRAINT offline_data_entry_pkey PRIMARY KEY (id);


--
-- Name: participant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY participant
    ADD CONSTRAINT participant_pkey PRIMARY KEY (id);


--
-- Name: participant_registry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY participant_registry
    ADD CONSTRAINT participant_registry_pkey PRIMARY KEY (id);


--
-- Name: permission_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY permission_grid
    ADD CONSTRAINT permission_grid_pkey PRIMARY KEY (id);


--
-- Name: permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (id);


--
-- Name: randomization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY randomization
    ADD CONSTRAINT randomization_pkey PRIMARY KEY (id);


--
-- Name: uploaded_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY uploaded_file
    ADD CONSTRAINT uploaded_file_pkey PRIMARY KEY (id);


--
-- Name: user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);


--
-- Name: variables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY variables
    ADD CONSTRAINT variables_pkey PRIMARY KEY (id);


SET search_path = coorte, pg_catalog;

--
-- Name: aaf_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX aaf_a_activity_idx ON aaf_a USING btree (activity_id);


--
-- Name: ace_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX ace_a_activity_idx ON ace_a USING btree (activity_id);


--
-- Name: aces_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX aces_a_activity_idx ON aces_a USING btree (activity_id);


--
-- Name: afi_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX afi_a_activity_idx ON afi_a USING btree (activity_id);


--
-- Name: afis_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX afis_a_activity_idx ON afis_a USING btree (activity_id);


--
-- Name: age_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX age_a_activity_idx ON age_a USING btree (activity_id);


--
-- Name: alb_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX alb_a_activity_idx ON alb_a USING btree (activity_id);


--
-- Name: albs_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX albs_a_activity_idx ON albs_a USING btree (activity_id);


--
-- Name: ant_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX ant_a_activity_idx ON ant_a USING btree (activity_id);


--
-- Name: ants_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX ants_a_activity_idx ON ants_a USING btree (activity_id);


--
-- Name: bia_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX bia_a_activity_idx ON bia_a USING btree (activity_id);


--
-- Name: coa_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX coa_a_activity_idx ON coa_a USING btree (activity_id);


--
-- Name: csts_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX csts_a_activity_idx ON csts_a USING btree (activity_id);


--
-- Name: dso_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX dso_a_activity_idx ON dso_a USING btree (activity_id);


--
-- Name: dsos_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX dsos_a_activity_idx ON dsos_a USING btree (activity_id);


--
-- Name: edg_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX edg_a_activity_idx ON edg_a USING btree (activity_id);


--
-- Name: edgs_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX edgs_a_activity_idx ON edgs_a USING btree (activity_id);


--
-- Name: elc_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX elc_a_activity_idx ON elc_a USING btree (activity_id);


--
-- Name: enc_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX enc_a_activity_idx ON enc_a USING btree (activity_id);


--
-- Name: exas_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX exas_a_activity_idx ON exas_a USING btree (activity_id);


--
-- Name: exp_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX exp_a_activity_idx ON exp_a USING btree (activity_id);


--
-- Name: fci_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX fci_a_activity_idx ON fci_a USING btree (activity_id);


--
-- Name: for_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX for_a_activity_idx ON for_a USING btree (activity_id);


--
-- Name: gst_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX gst_a_activity_idx ON gst_a USING btree (activity_id);


--
-- Name: gst_b_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX gst_b_activity_idx ON gst_b USING btree (activity_id);


--
-- Name: iae_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX iae_a_activity_idx ON iae_a USING btree (activity_id);


--
-- Name: iap_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX iap_a_activity_idx ON iap_a USING btree (activity_id);


--
-- Name: iar_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX iar_a_activity_idx ON iar_a USING btree (activity_id);


--
-- Name: imas_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX imas_a_activity_idx ON imas_a USING btree (activity_id);


--
-- Name: int_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX int_a_activity_idx ON int_a USING btree (activity_id);


--
-- Name: lap_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX lap_a_activity_idx ON lap_a USING btree (activity_id);


--
-- Name: lap_b_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX lap_b_activity_idx ON lap_b USING btree (activity_id);


--
-- Name: lid_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX lid_a_activity_idx ON lid_a USING btree (activity_id);


--
-- Name: liu_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX liu_a_activity_idx ON liu_a USING btree (activity_id);


--
-- Name: liu_b_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX liu_b_activity_idx ON liu_b USING btree (activity_id);


--
-- Name: pco_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX pco_a_activity_idx ON pco_a USING btree (activity_id);


--
-- Name: prd_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX prd_a_activity_idx ON prd_a USING btree (activity_id);


--
-- Name: prt_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX prt_a_activity_idx ON prt_a USING btree (activity_id);


--
-- Name: qvd_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX qvd_a_activity_idx ON qvd_a USING btree (activity_id);


--
-- Name: qvds_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX qvds_a_activity_idx ON qvds_a USING btree (activity_id);


--
-- Name: rcp_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX rcp_a_activity_idx ON rcp_a USING btree (activity_id);


--
-- Name: rcps_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX rcps_a_activity_idx ON rcps_a USING btree (activity_id);


--
-- Name: rdv_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX rdv_a_activity_idx ON rdv_a USING btree (activity_id);


--
-- Name: rdvs_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX rdvs_a_activity_idx ON rdvs_a USING btree (activity_id);


--
-- Name: rpn_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX rpn_a_activity_idx ON rpn_a USING btree (activity_id);


--
-- Name: sau_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX sau_a_activity_idx ON sau_a USING btree (activity_id);


--
-- Name: saus_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX saus_a_activity_idx ON saus_a USING btree (activity_id);


--
-- Name: son_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX son_a_activity_idx ON son_a USING btree (activity_id);


--
-- Name: sons_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX sons_a_activity_idx ON sons_a USING btree (activity_id);


--
-- Name: tcc_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX tcc_a_activity_idx ON tcc_a USING btree (activity_id);


--
-- Name: tce_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX tce_a_activity_idx ON tce_a USING btree (activity_id);


--
-- Name: tcm_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX tcm_a_activity_idx ON tcm_a USING btree (activity_id);


--
-- Name: ttg_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX ttg_a_activity_idx ON ttg_a USING btree (activity_id);


--
-- Name: ttps_a_activity_idx; Type: INDEX; Schema: coorte; Owner: postgres; Tablespace: 
--

CREATE INDEX ttps_a_activity_idx ON ttps_a USING btree (activity_id);


SET search_path = lab, pg_catalog;

--
-- Name: aec_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aec_a_activity_idx ON aec_a USING btree (activity_id);


--
-- Name: aecs_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aecs_a_activity_idx ON aecs_a USING btree (activity_id);


--
-- Name: aej_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aej_a_activity_idx ON aej_a USING btree (activity_id);


--
-- Name: aejs_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aejs_a_activity_idx ON aejs_a USING btree (activity_id);


--
-- Name: aen_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aen_a_activity_idx ON aen_a USING btree (activity_id);


--
-- Name: aes_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aes_a_activity_idx ON aes_a USING btree (activity_id);


--
-- Name: aess_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aess_a_activity_idx ON aess_a USING btree (activity_id);


--
-- Name: aet_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aet_a_activity_idx ON aet_a USING btree (activity_id);


--
-- Name: aets_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aets_a_activity_idx ON aets_a USING btree (activity_id);


--
-- Name: aliquot_tube_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX aliquot_tube_idx ON aliquot USING btree (tube_id);


--
-- Name: bio_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX bio_a_activity_idx ON bio_a USING btree (activity_id);


--
-- Name: bios_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX bios_a_activity_idx ON bios_a USING btree (activity_id);


--
-- Name: csc_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX csc_a_activity_idx ON csc_a USING btree (activity_id);


--
-- Name: cscs_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX cscs_a_activity_idx ON cscs_a USING btree (activity_id);


--
-- Name: csj_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX csj_a_activity_idx ON csj_a USING btree (activity_id);


--
-- Name: csjs_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX csjs_a_activity_idx ON csjs_a USING btree (activity_id);


--
-- Name: csn_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX csn_a_activity_idx ON csn_a USING btree (activity_id);


--
-- Name: css_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX css_a_activity_idx ON css_a USING btree (activity_id);


--
-- Name: csss_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX csss_a_activity_idx ON csss_a USING btree (activity_id);


--
-- Name: cst_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX cst_a_activity_idx ON cst_a USING btree (activity_id);


--
-- Name: csts_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX csts_a_activity_idx ON csts_a USING btree (activity_id);


--
-- Name: dna_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX dna_a_activity_idx ON dna_a USING btree (activity_id);


--
-- Name: dnas_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX dnas_a_activity_idx ON dnas_a USING btree (activity_id);


--
-- Name: exa_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX exa_a_activity_idx ON exa_a USING btree (activity_id);


--
-- Name: isg_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX isg_a_activity_idx ON isg_a USING btree (activity_id);


--
-- Name: isgs_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX isgs_a_activity_idx ON isgs_a USING btree (activity_id);


--
-- Name: ttp_a_activity_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX ttp_a_activity_idx ON ttp_a USING btree (activity_id);


--
-- Name: tube_participant_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX tube_participant_idx ON tube USING btree (participant_id);


--
-- Name: tube_type_idx; Type: INDEX; Schema: lab; Owner: postgres; Tablespace: 
--

CREATE INDEX tube_type_idx ON tube USING btree (tube_type);


SET search_path = public, pg_catalog;

--
-- Name: activity_activity_type_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX activity_activity_type_idx ON activity USING btree (activity_type_id);


--
-- Name: activity_participant_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX activity_participant_idx ON activity USING btree (participant_id);


--
-- Name: randomization_fieldcenter_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX randomization_fieldcenter_idx ON randomization USING btree (center);


SET search_path = coorte, pg_catalog;

--
-- Name: fk5fb2bc24e5a553f; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ine_a
    ADD CONSTRAINT fk5fb2bc24e5a553f FOREIGN KEY (participant_id) REFERENCES public.participant(id);


--
-- Name: fk5fb2bc260ce0cfd; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ine_a
    ADD CONSTRAINT fk5fb2bc260ce0cfd FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: fk61c8d0a95188d2395848aa8; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY aaf_a
    ADD CONSTRAINT fk61c8d0a95188d2395848aa8 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395856fa5; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ace_a
    ADD CONSTRAINT fk61c8d0a95188d2395856fa5 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239586dbc6; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY afi_a
    ADD CONSTRAINT fk61c8d0a95188d239586dbc6 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395874121; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY age_a
    ADD CONSTRAINT fk61c8d0a95188d2395874121 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395897bb9; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY alb_a
    ADD CONSTRAINT fk61c8d0a95188d2395897bb9 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23958aa809; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ant_a
    ADD CONSTRAINT fk61c8d0a95188d23958aa809 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239596325c; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY bia_a
    ADD CONSTRAINT fk61c8d0a95188d239596325c FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395a70417; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY coa_a
    ADD CONSTRAINT fk61c8d0a95188d2395a70417 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395b721a2; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY dso_a
    ADD CONSTRAINT fk61c8d0a95188d2395b721a2 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395be498a; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY edg_a
    ADD CONSTRAINT fk61c8d0a95188d2395be498a FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395c1dd7e; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY elc_a
    ADD CONSTRAINT fk61c8d0a95188d2395c1dd7e FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395c2c63c; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY enc_a
    ADD CONSTRAINT fk61c8d0a95188d2395c2c63c FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395c782bf; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY exp_a
    ADD CONSTRAINT fk61c8d0a95188d2395c782bf FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395cbf42e; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY fci_a
    ADD CONSTRAINT fk61c8d0a95188d2395cbf42e FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395d18a6b; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY for_a
    ADD CONSTRAINT fk61c8d0a95188d2395d18a6b FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395e17aea; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY gst_a
    ADD CONSTRAINT fk61c8d0a95188d2395e17aea FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395e17aeb; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY gst_b
    ADD CONSTRAINT fk61c8d0a95188d2395e17aeb FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395f542ef; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY iae_a
    ADD CONSTRAINT fk61c8d0a95188d2395f542ef FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395f56c3a; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY iap_a
    ADD CONSTRAINT fk61c8d0a95188d2395f56c3a FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395f573bc; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY iar_a
    ADD CONSTRAINT fk61c8d0a95188d2395f573bc FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395fb6411; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY int_a
    ADD CONSTRAINT fk61c8d0a95188d2395fb6411 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23961fb2bd; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY lap_a
    ADD CONSTRAINT fk61c8d0a95188d23961fb2bd FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23961fb2be; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY lap_b
    ADD CONSTRAINT fk61c8d0a95188d23961fb2be FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23962328a9; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY lid_a
    ADD CONSTRAINT fk61c8d0a95188d23962328a9 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239623687a; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY liu_a
    ADD CONSTRAINT fk61c8d0a95188d239623687a FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239623687b; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY liu_b
    ADD CONSTRAINT fk61c8d0a95188d239623687b FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239658f5be; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY pco_a
    ADD CONSTRAINT fk61c8d0a95188d239658f5be FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23965f9e04; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY prd_a
    ADD CONSTRAINT fk61c8d0a95188d23965f9e04 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23965fda14; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY prt_a
    ADD CONSTRAINT fk61c8d0a95188d23965fda14 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23966f8701; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY qvd_a
    ADD CONSTRAINT fk61c8d0a95188d23966f8701 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2396752881; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY rcp_a
    ADD CONSTRAINT fk61c8d0a95188d2396752881 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239675b366; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY rdv_a
    ADD CONSTRAINT fk61c8d0a95188d239675b366 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23967b09d2; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY rpn_a
    ADD CONSTRAINT fk61c8d0a95188d23967b09d2 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2396826a09; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY sau_a
    ADD CONSTRAINT fk61c8d0a95188d2396826a09 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239688acf4; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY son_a
    ADD CONSTRAINT fk61c8d0a95188d239688acf4 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23969126b6; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY tcc_a
    ADD CONSTRAINT fk61c8d0a95188d23969126b6 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2396912e38; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY tce_a
    ADD CONSTRAINT fk61c8d0a95188d2396912e38 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2396914c40; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY tcm_a
    ADD CONSTRAINT fk61c8d0a95188d2396914c40 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239698f009; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ttg_a
    ADD CONSTRAINT fk61c8d0a95188d239698f009 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239ab28d032; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY aces_a
    ADD CONSTRAINT fk61c8d0a95188d239ab28d032 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239ab54e831; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY afis_a
    ADD CONSTRAINT fk61c8d0a95188d239ab54e831 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239aba6469e; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY albs_a
    ADD CONSTRAINT fk61c8d0a95188d239aba6469e FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239abcaa44e; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ants_a
    ADD CONSTRAINT fk61c8d0a95188d239abcaa44e FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239b12d5dd5; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY dsos_a
    ADD CONSTRAINT fk61c8d0a95188d239b12d5dd5 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239b20b32ed; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY edgs_a
    ADD CONSTRAINT fk61c8d0a95188d239b20b32ed FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239b3224ec7; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY exas_a
    ADD CONSTRAINT fk61c8d0a95188d239b3224ec7 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239b95aaeb8; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY imas_a
    ADD CONSTRAINT fk61c8d0a95188d239b95aaeb8 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239c781a456; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY qvds_a
    ADD CONSTRAINT fk61c8d0a95188d239c781a456 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239c83032d6; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY rcps_a
    ADD CONSTRAINT fk61c8d0a95188d239c83032d6 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239c8410491; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY rdvs_a
    ADD CONSTRAINT fk61c8d0a95188d239c8410491 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239c9cb224e; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY saus_a
    ADD CONSTRAINT fk61c8d0a95188d239c9cb224e FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239ca8d3cc3; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY sons_a
    ADD CONSTRAINT fk61c8d0a95188d239ca8d3cc3 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239cc8973a5; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ttps_a
    ADD CONSTRAINT fk61c8d0a95188d239cc8973a5 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk67438414e5a553f; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ran_a
    ADD CONSTRAINT fk67438414e5a553f FOREIGN KEY (participant_id) REFERENCES public.participant(id);


--
-- Name: fk674384160ce0cfd; Type: FK CONSTRAINT; Schema: coorte; Owner: postgres
--

ALTER TABLE ONLY ran_a
    ADD CONSTRAINT fk674384160ce0cfd FOREIGN KEY (user_id) REFERENCES public."user"(id);


SET search_path = lab, pg_catalog;

--
-- Name: fk367e844e5a553f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY tube
    ADD CONSTRAINT fk367e844e5a553f FOREIGN KEY (participant_id) REFERENCES public.participant(id);


--
-- Name: fk58650e13c36cfab; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e13c36cfab FOREIGN KEY (biochemical120_id) REFERENCES aliquot(id);


--
-- Name: fk58650e1538c507b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e1538c507b FOREIGN KEY (glycemia1_120groupfluoride_id) REFERENCES aliquot(id);


--
-- Name: fk58650e153b0a1a8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e153b0a1a8 FOREIGN KEY (fluoride120_id) REFERENCES tube(id);


--
-- Name: fk58650e1602545fc; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e1602545fc FOREIGN KEY (glycemia2_120groupfluoride_id) REFERENCES aliquot(id);


--
-- Name: fk58650e16068eead; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e16068eead FOREIGN KEY (glycemia2_120_id) REFERENCES aliquot(id);


--
-- Name: fk58650e18ba1059e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e18ba1059e FOREIGN KEY (gel120_id) REFERENCES tube(id);


--
-- Name: fk58650e1a52966b0; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e1a52966b0 FOREIGN KEY (gel120cq_id) REFERENCES tube(id);


--
-- Name: fk58650e1a7c2283a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e1a7c2283a FOREIGN KEY (fluoride120cq_id) REFERENCES tube(id);


--
-- Name: fk58650e1f10798e7; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e1f10798e7 FOREIGN KEY (biochemical120groupgel120cq_id) REFERENCES aliquot(id);


--
-- Name: fk58650e1f887c1ce; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk58650e1f887c1ce FOREIGN KEY (glycemia1_120_id) REFERENCES aliquot(id);


--
-- Name: fk5866b2823e260e4; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b2823e260e4 FOREIGN KEY (hba1cqcaliquot_id) REFERENCES aliquot(id);


--
-- Name: fk5866b2826a1686d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b2826a1686d FOREIGN KEY (fluoridefastingtube_id) REFERENCES tube(id);


--
-- Name: fk5866b284a64059b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b284a64059b FOREIGN KEY (fluoridefastingqctube_id) REFERENCES tube(id);


--
-- Name: fk5866b284ff00715; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b284ff00715 FOREIGN KEY (glycemiaqcaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk5866b284ff07b74; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b284ff07b74 FOREIGN KEY (glycemiaqcaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk5866b2855f081e1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b2855f081e1 FOREIGN KEY (edtafastingtube_id) REFERENCES tube(id);


--
-- Name: fk5866b2856bb1fca; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b2856bb1fca FOREIGN KEY (biochemicalfastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk5866b2856bb9429; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b2856bb9429 FOREIGN KEY (biochemicalfastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk5866b285f417663; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b285f417663 FOREIGN KEY (gelfastingtube_id) REFERENCES tube(id);


--
-- Name: fk5866b287930d78; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b287930d78 FOREIGN KEY (biochemicalfastingqcaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk5866b2879381d7; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b2879381d7 FOREIGN KEY (biochemicalfastingqcaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk5866b289338365f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b289338365f FOREIGN KEY (glycemiafastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk5866b289338aabe; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b289338aabe FOREIGN KEY (glycemiafastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk5866b28db386e11; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b28db386e11 FOREIGN KEY (gelfastingqctube_id) REFERENCES tube(id);


--
-- Name: fk5866b28e252920f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b28e252920f FOREIGN KEY (edtafastingqctube_id) REFERENCES tube(id);


--
-- Name: fk5866b28ec0d5b92; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk5866b28ec0d5b92 FOREIGN KEY (hba1caliquot_id) REFERENCES aliquot(id);


--
-- Name: fk5867a2c6bbcec24; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aen_a
    ADD CONSTRAINT fk5867a2c6bbcec24 FOREIGN KEY (gelninetyqctube_id) REFERENCES tube(id);


--
-- Name: fk5867a2c6c22eeaa; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aen_a
    ADD CONSTRAINT fk5867a2c6c22eeaa FOREIGN KEY (biochemicalninetyaliquot_id) REFERENCES aliquot(id);


--
-- Name: fk5867a2c9caea67f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aen_a
    ADD CONSTRAINT fk5867a2c9caea67f FOREIGN KEY (glycemianinetyaliquot_id) REFERENCES aliquot(id);


--
-- Name: fk5867a2ccce45d36; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aen_a
    ADD CONSTRAINT fk5867a2ccce45d36 FOREIGN KEY (gelninetytube_id) REFERENCES tube(id);


--
-- Name: fk5867a2cec1901ec; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aen_a
    ADD CONSTRAINT fk5867a2cec1901ec FOREIGN KEY (fluorideninetytube_id) REFERENCES tube(id);


--
-- Name: fk5867a2cf4df8dfc; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aen_a
    ADD CONSTRAINT fk5867a2cf4df8dfc FOREIGN KEY (biochemicalninetyqcaliquot_id) REFERENCES aliquot(id);


--
-- Name: fk5868cf13ac0b9e2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aes_a
    ADD CONSTRAINT fk5868cf13ac0b9e2 FOREIGN KEY (gelsixtytube_id) REFERENCES tube(id);


--
-- Name: fk5868cf16d1b7d66; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aes_a
    ADD CONSTRAINT fk5868cf16d1b7d66 FOREIGN KEY (biochemicalsixtyaliquot_id) REFERENCES aliquot(id);


--
-- Name: fk5868cf199ef5db8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aes_a
    ADD CONSTRAINT fk5868cf199ef5db8 FOREIGN KEY (biochemicalsixtyqcaliquot_id) REFERENCES aliquot(id);


--
-- Name: fk5868cf1b8fef6f1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aes_a
    ADD CONSTRAINT fk5868cf1b8fef6f1 FOREIGN KEY (glycemiasixtyaliquot_id) REFERENCES aliquot(id);


--
-- Name: fk5868cf1d3f4cdd0; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aes_a
    ADD CONSTRAINT fk5868cf1d3f4cdd0 FOREIGN KEY (gelsixtyqctube_id) REFERENCES tube(id);


--
-- Name: fk5868cf1d8a9a66c; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aes_a
    ADD CONSTRAINT fk5868cf1d8a9a66c FOREIGN KEY (fluoridesixtytube_id) REFERENCES tube(id);


--
-- Name: fk58690b23ffbe484; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aet_a
    ADD CONSTRAINT fk58690b23ffbe484 FOREIGN KEY (biochemistry_id) REFERENCES aliquot(id);


--
-- Name: fk58690b27b32d60a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aet_a
    ADD CONSTRAINT fk58690b27b32d60a FOREIGN KEY (fluoride30_id) REFERENCES tube(id);


--
-- Name: fk58690b2a64b1b54; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aet_a
    ADD CONSTRAINT fk58690b2a64b1b54 FOREIGN KEY (gel30_id) REFERENCES tube(id);


--
-- Name: fk58690b2bda4e6e6; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aet_a
    ADD CONSTRAINT fk58690b2bda4e6e6 FOREIGN KEY (gel30cq_id) REFERENCES tube(id);


--
-- Name: fk58690b2ca26fd94; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aet_a
    ADD CONSTRAINT fk58690b2ca26fd94 FOREIGN KEY (glycemia30_id) REFERENCES aliquot(id);


--
-- Name: fk58690b2ee847c07; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aet_a
    ADD CONSTRAINT fk58690b2ee847c07 FOREIGN KEY (biochemistry30_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea18b7678; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea18b7678 FOREIGN KEY (urinefastingtube_id) REFERENCES tube(id);


--
-- Name: fk59666ea1beef4fe; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea1beef4fe FOREIGN KEY (gelfastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea1bef695d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea1bef695d FOREIGN KEY (gelfastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea1befddbc; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea1befddbc FOREIGN KEY (gelfastingaliquot3_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea1bf0521b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea1bf0521b FOREIGN KEY (gelfastingaliquot4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea1bf0c67a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea1bf0c67a FOREIGN KEY (gelfastingaliquot5_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea1bf13ad9; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea1bf13ad9 FOREIGN KEY (gelfastingaliquot6_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea1bf1af38; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea1bf1af38 FOREIGN KEY (gelfastingaliquot7_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea1bf22397; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea1bf22397 FOREIGN KEY (gelfastingaliquot8_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea27e973c5; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea27e973c5 FOREIGN KEY (edta120aliquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea27e9e824; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea27e9e824 FOREIGN KEY (edta120aliquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea27ea5c83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea27ea5c83 FOREIGN KEY (edta120aliquotqc3_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea27ead0e2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea27ead0e2 FOREIGN KEY (edta120aliquotqc4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea378055ba; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea378055ba FOREIGN KEY (gelaliquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea3780ca19; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea3780ca19 FOREIGN KEY (gelaliquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea37813e78; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea37813e78 FOREIGN KEY (gelaliquotqc3_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea3781b2d7; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea3781b2d7 FOREIGN KEY (gelaliquotqc4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea37822736; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea37822736 FOREIGN KEY (gelaliquotqc5_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea37829b95; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea37829b95 FOREIGN KEY (gelaliquotqc6_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea37830ff4; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea37830ff4 FOREIGN KEY (gelaliquotqc7_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea37838453; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea37838453 FOREIGN KEY (gelaliquotqc8_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea50f9e7b3; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea50f9e7b3 FOREIGN KEY (edta120aliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea50fa5c12; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea50fa5c12 FOREIGN KEY (edta120aliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea50fad071; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea50fad071 FOREIGN KEY (edta120aliquot3_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea50fb44d0; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea50fb44d0 FOREIGN KEY (edta120aliquot4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea55f081e1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea55f081e1 FOREIGN KEY (edtafastingtube_id) REFERENCES tube(id);


--
-- Name: fk59666ea5a4adc35; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea5a4adc35 FOREIGN KEY (gel120aliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea5a4b5094; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea5a4b5094 FOREIGN KEY (gel120aliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea5a4bc4f3; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea5a4bc4f3 FOREIGN KEY (gel120aliquot3_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea5a4c3952; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea5a4c3952 FOREIGN KEY (gel120aliquot4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea5a4cadb1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea5a4cadb1 FOREIGN KEY (gel120aliquot5_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea5a4d2210; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea5a4d2210 FOREIGN KEY (gel120aliquot6_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea5a4d966f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea5a4d966f FOREIGN KEY (gel120aliquot7_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea5a4e0ace; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea5a4e0ace FOREIGN KEY (gel120aliquot8_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea66b40b98; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea66b40b98 FOREIGN KEY (edta120tube_id) REFERENCES tube(id);


--
-- Name: fk59666ea66fec10a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea66fec10a FOREIGN KEY (secondgelfastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea66ff3569; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea66ff3569 FOREIGN KEY (secondgelfastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea66ffa9c8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea66ffa9c8 FOREIGN KEY (secondgelfastingaliquot3_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea67001e27; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea67001e27 FOREIGN KEY (secondgelfastingaliquot4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea67009286; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea67009286 FOREIGN KEY (secondgelfastingaliquot5_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea670106e5; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea670106e5 FOREIGN KEY (secondgelfastingaliquot6_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea67017b44; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea67017b44 FOREIGN KEY (secondgelfastingaliquot7_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea6701efa3; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea6701efa3 FOREIGN KEY (secondgelfastingaliquot8_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea6ef90799; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea6ef90799 FOREIGN KEY (heparinfastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea6ef97bf8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea6ef97bf8 FOREIGN KEY (heparinfastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea75b0e7e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea75b0e7e FOREIGN KEY (heparinfastingtube_id) REFERENCES tube(id);


--
-- Name: fk59666ea80bd9f81; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea80bd9f81 FOREIGN KEY (fastinggeltubeqc_id) REFERENCES tube(id);


--
-- Name: fk59666ea827911a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea827911a FOREIGN KEY (gel120tube_id) REFERENCES tube(id);


--
-- Name: fk59666ea851c206; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea851c206 FOREIGN KEY (edta120tubeqc_id) REFERENCES tube(id);


--
-- Name: fk59666ea8a60e293; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8a60e293 FOREIGN KEY (urinefastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8a6156f2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8a6156f2 FOREIGN KEY (urinefastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8a61cb51; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8a61cb51 FOREIGN KEY (urinefastingaliquot3_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8a623fb0; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8a623fb0 FOREIGN KEY (urinefastingaliquot4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8a62b40f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8a62b40f FOREIGN KEY (urinefastingaliquot5_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8f908401; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8f908401 FOREIGN KEY (fastinggel120aliquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8f90f860; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8f90f860 FOREIGN KEY (fastinggel120aliquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8f916cbf; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8f916cbf FOREIGN KEY (fastinggel120aliquotqc3_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8f91e11e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8f91e11e FOREIGN KEY (fastinggel120aliquotqc4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8f92557d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8f92557d FOREIGN KEY (fastinggel120aliquotqc5_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8f92c9dc; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8f92c9dc FOREIGN KEY (fastinggel120aliquotqc6_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8f933e3b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8f933e3b FOREIGN KEY (fastinggel120aliquotqc7_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea8f93b29a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea8f93b29a FOREIGN KEY (fastinggel120aliquotqc8_id) REFERENCES aliquot(id);


--
-- Name: fk59666ea9a726980; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ea9a726980 FOREIGN KEY (heparintubeqc_id) REFERENCES tube(id);


--
-- Name: fk59666eab89b7f05; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eab89b7f05 FOREIGN KEY (urinealiquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fk59666eab89bf364; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eab89bf364 FOREIGN KEY (urinealiquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fk59666eab89c67c3; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eab89c67c3 FOREIGN KEY (urinealiquotqc3_id) REFERENCES aliquot(id);


--
-- Name: fk59666eab89cdc22; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eab89cdc22 FOREIGN KEY (urinealiquotqc4_id) REFERENCES aliquot(id);


--
-- Name: fk59666eab89d5081; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eab89d5081 FOREIGN KEY (urinealiquotqc5_id) REFERENCES aliquot(id);


--
-- Name: fk59666eac3a25042; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eac3a25042 FOREIGN KEY (fastinggel120tubeqc_id) REFERENCES tube(id);


--
-- Name: fk59666eac510117c; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eac510117c FOREIGN KEY (edtafastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fk59666eac51085db; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eac51085db FOREIGN KEY (edtafastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fk59666eac510fa3a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eac510fa3a FOREIGN KEY (edtafastingaliquot3_id) REFERENCES aliquot(id);


--
-- Name: fk59666eac5116e99; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eac5116e99 FOREIGN KEY (edtafastingaliquot4_id) REFERENCES aliquot(id);


--
-- Name: fk59666ead04b6d46; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666ead04b6d46 FOREIGN KEY (urinetubeqc_id) REFERENCES tube(id);


--
-- Name: fk59666eae215ce3f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eae215ce3f FOREIGN KEY (heparinaliquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fk59666eae216429e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eae216429e FOREIGN KEY (heparinaliquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fk59666eaf4c4030a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eaf4c4030a FOREIGN KEY (gelfastingtube1_id) REFERENCES tube(id);


--
-- Name: fk59666eaf4c47769; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk59666eaf4c47769 FOREIGN KEY (gelfastingtube2_id) REFERENCES tube(id);


--
-- Name: fk5a8dd1512a95631; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csc_a
    ADD CONSTRAINT fk5a8dd1512a95631 FOREIGN KEY (fluoridetubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a8dd15a1c4c94d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csc_a
    ADD CONSTRAINT fk5a8dd15a1c4c94d FOREIGN KEY (geltube_id) REFERENCES tube(id);


--
-- Name: fk5a8dd15bc788f8f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csc_a
    ADD CONSTRAINT fk5a8dd15bc788f8f FOREIGN KEY (edtatube_id) REFERENCES tube(id);


--
-- Name: fk5a8dd15c229e67b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csc_a
    ADD CONSTRAINT fk5a8dd15c229e67b FOREIGN KEY (geltubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a8dd15dba8ae83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csc_a
    ADD CONSTRAINT fk5a8dd15dba8ae83 FOREIGN KEY (fluoridetube_id) REFERENCES tube(id);


--
-- Name: fk5a8dd15ff05243d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csc_a
    ADD CONSTRAINT fk5a8dd15ff05243d FOREIGN KEY (edtatubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a8f75c12a95631; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75c12a95631 FOREIGN KEY (fluoridetubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a8f75c2ab0d60; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75c2ab0d60 FOREIGN KEY (geltube1_id) REFERENCES tube(id);


--
-- Name: fk5a8f75c2ab81bf; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75c2ab81bf FOREIGN KEY (geltube2_id) REFERENCES tube(id);


--
-- Name: fk5a8f75c3e700f5e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75c3e700f5e FOREIGN KEY (edtatube1_id) REFERENCES tube(id);


--
-- Name: fk5a8f75c3e7083bd; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75c3e7083bd FOREIGN KEY (edtatube2_id) REFERENCES tube(id);


--
-- Name: fk5a8f75c3e70f81c; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75c3e70f81c FOREIGN KEY (edtatube3_id) REFERENCES tube(id);


--
-- Name: fk5a8f75c9a726980; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75c9a726980 FOREIGN KEY (heparintubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a8f75cbb9f86d8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75cbb9f86d8 FOREIGN KEY (urinetube_id) REFERENCES tube(id);


--
-- Name: fk5a8f75cc229e67b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75cc229e67b FOREIGN KEY (geltubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a8f75cd04b6d46; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75cd04b6d46 FOREIGN KEY (urinetubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a8f75cdba8ae83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75cdba8ae83 FOREIGN KEY (fluoridetube_id) REFERENCES tube(id);


--
-- Name: fk5a8f75ce5ec4992; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75ce5ec4992 FOREIGN KEY (heparintube_id) REFERENCES tube(id);


--
-- Name: fk5a8f75cff05243d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk5a8f75cff05243d FOREIGN KEY (edtatubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a90660a1c4c94d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csn_a
    ADD CONSTRAINT fk5a90660a1c4c94d FOREIGN KEY (geltube_id) REFERENCES tube(id);


--
-- Name: fk5a90660c229e67b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csn_a
    ADD CONSTRAINT fk5a90660c229e67b FOREIGN KEY (geltubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a90660dba8ae83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csn_a
    ADD CONSTRAINT fk5a90660dba8ae83 FOREIGN KEY (fluoridetube_id) REFERENCES tube(id);


--
-- Name: fk5a91925a1c4c94d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY css_a
    ADD CONSTRAINT fk5a91925a1c4c94d FOREIGN KEY (geltube_id) REFERENCES tube(id);


--
-- Name: fk5a91925c229e67b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY css_a
    ADD CONSTRAINT fk5a91925c229e67b FOREIGN KEY (geltubeqc_id) REFERENCES tube(id);


--
-- Name: fk5a91925dba8ae83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY css_a
    ADD CONSTRAINT fk5a91925dba8ae83 FOREIGN KEY (fluoridetube_id) REFERENCES tube(id);


--
-- Name: fk5a91ce6363402e2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cst_a
    ADD CONSTRAINT fk5a91ce6363402e2 FOREIGN KEY (geltube30cq_id) REFERENCES tube(id);


--
-- Name: fk5a91ce6bea90650; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cst_a
    ADD CONSTRAINT fk5a91ce6bea90650 FOREIGN KEY (geltube30_id) REFERENCES tube(id);


--
-- Name: fk5a91ce6f287606; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cst_a
    ADD CONSTRAINT fk5a91ce6f287606 FOREIGN KEY (fluoridetube30_id) REFERENCES tube(id);


--
-- Name: fk5b4a7395a855f34; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY dna_a
    ADD CONSTRAINT fk5b4a7395a855f34 FOREIGN KEY (edtadna_id) REFERENCES tube(id);


--
-- Name: fk5b4a739c92bcf65; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY dna_a
    ADD CONSTRAINT fk5b4a739c92bcf65 FOREIGN KEY (bankdna_id) REFERENCES aliquot(id);


--
-- Name: fk61c8d0a95188d23958650e1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aec_a
    ADD CONSTRAINT fk61c8d0a95188d23958650e1 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395866b28; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aej_a
    ADD CONSTRAINT fk61c8d0a95188d2395866b28 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395867a2c; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aen_a
    ADD CONSTRAINT fk61c8d0a95188d2395867a2c FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395868cf1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aes_a
    ADD CONSTRAINT fk61c8d0a95188d2395868cf1 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23958690b2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aet_a
    ADD CONSTRAINT fk61c8d0a95188d23958690b2 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23959666ea; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bio_a
    ADD CONSTRAINT fk61c8d0a95188d23959666ea FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395a8dd15; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csc_a
    ADD CONSTRAINT fk61c8d0a95188d2395a8dd15 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395a8f75c; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csj_a
    ADD CONSTRAINT fk61c8d0a95188d2395a8f75c FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395a90660; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csn_a
    ADD CONSTRAINT fk61c8d0a95188d2395a90660 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395a91925; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY css_a
    ADD CONSTRAINT fk61c8d0a95188d2395a91925 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395a91ce6; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cst_a
    ADD CONSTRAINT fk61c8d0a95188d2395a91ce6 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395b4a739; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY dna_a
    ADD CONSTRAINT fk61c8d0a95188d2395b4a739 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395c74a70; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY exa_a
    ADD CONSTRAINT fk61c8d0a95188d2395c74a70 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d2395fd791f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY isg_a
    ADD CONSTRAINT fk61c8d0a95188d2395fd791f FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d23969911d2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY ttp_a
    ADD CONSTRAINT fk61c8d0a95188d23969911d2 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239ab441676; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fk61c8d0a95188d239ab441676 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239ab47450f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fk61c8d0a95188d239ab47450f FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239ab4b5c66; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aess_a
    ADD CONSTRAINT fk61c8d0a95188d239ab4b5c66 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239ab4bd0c5; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aets_a
    ADD CONSTRAINT fk61c8d0a95188d239ab4bd0c5 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239ad36c18d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fk61c8d0a95188d239ad36c18d FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239af7310c2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cscs_a
    ADD CONSTRAINT fk61c8d0a95188d239af7310c2 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239af763f5b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fk61c8d0a95188d239af763f5b FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239af7a56b2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csss_a
    ADD CONSTRAINT fk61c8d0a95188d239af7a56b2 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239af7acb11; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csts_a
    ADD CONSTRAINT fk61c8d0a95188d239af7acb11 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239b0e08b1e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY dnas_a
    ADD CONSTRAINT fk61c8d0a95188d239b0e08b1e FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk61c8d0a95188d239b9b1f5f8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY isgs_a
    ADD CONSTRAINT fk61c8d0a95188d239b9b1f5f8 FOREIGN KEY (activity_id) REFERENCES public.activity(id);


--
-- Name: fk9bec8d124e5a553f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY participant_visit_qc_group
    ADD CONSTRAINT fk9bec8d124e5a553f FOREIGN KEY (participant_id) REFERENCES public.participant(id);


--
-- Name: fkab4416763c36cfab; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab4416763c36cfab FOREIGN KEY (biochemical120_id) REFERENCES aliquot(id);


--
-- Name: fkab441676538c507b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab441676538c507b FOREIGN KEY (glycemia1_120groupfluoride_id) REFERENCES aliquot(id);


--
-- Name: fkab44167653b0a1a8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab44167653b0a1a8 FOREIGN KEY (fluoride120_id) REFERENCES tube(id);


--
-- Name: fkab441676602545fc; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab441676602545fc FOREIGN KEY (glycemia2_120groupfluoride_id) REFERENCES aliquot(id);


--
-- Name: fkab4416766068eead; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab4416766068eead FOREIGN KEY (glycemia2_120_id) REFERENCES aliquot(id);


--
-- Name: fkab4416768ba1059e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab4416768ba1059e FOREIGN KEY (gel120_id) REFERENCES tube(id);


--
-- Name: fkab441676a52966b0; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab441676a52966b0 FOREIGN KEY (gel120cq_id) REFERENCES tube(id);


--
-- Name: fkab441676a7c2283a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab441676a7c2283a FOREIGN KEY (fluoride120cq_id) REFERENCES tube(id);


--
-- Name: fkab441676f10798e7; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab441676f10798e7 FOREIGN KEY (biochemical120groupgel120cq_id) REFERENCES aliquot(id);


--
-- Name: fkab441676f887c1ce; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aecs_a
    ADD CONSTRAINT fkab441676f887c1ce FOREIGN KEY (glycemia1_120_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f23e260e4; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f23e260e4 FOREIGN KEY (hba1cqcaliquot_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f26a1686d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f26a1686d FOREIGN KEY (fluoridefastingtube_id) REFERENCES tube(id);


--
-- Name: fkab47450f4a64059b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f4a64059b FOREIGN KEY (fluoridefastingqctube_id) REFERENCES tube(id);


--
-- Name: fkab47450f4ff00715; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f4ff00715 FOREIGN KEY (glycemiaqcaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f4ff07b74; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f4ff07b74 FOREIGN KEY (glycemiaqcaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f55f081e1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f55f081e1 FOREIGN KEY (edtafastingtube_id) REFERENCES tube(id);


--
-- Name: fkab47450f56bb1fca; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f56bb1fca FOREIGN KEY (biochemicalfastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f56bb9429; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f56bb9429 FOREIGN KEY (biochemicalfastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f5f417663; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f5f417663 FOREIGN KEY (gelfastingtube_id) REFERENCES tube(id);


--
-- Name: fkab47450f7930d78; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f7930d78 FOREIGN KEY (biochemicalfastingqcaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f79381d7; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f79381d7 FOREIGN KEY (biochemicalfastingqcaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f9338365f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f9338365f FOREIGN KEY (glycemiafastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkab47450f9338aabe; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450f9338aabe FOREIGN KEY (glycemiafastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkab47450fdb386e11; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450fdb386e11 FOREIGN KEY (gelfastingqctube_id) REFERENCES tube(id);


--
-- Name: fkab47450fe252920f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450fe252920f FOREIGN KEY (edtafastingqctube_id) REFERENCES tube(id);


--
-- Name: fkab47450fec0d5b92; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aejs_a
    ADD CONSTRAINT fkab47450fec0d5b92 FOREIGN KEY (hba1caliquot_id) REFERENCES aliquot(id);


--
-- Name: fkab4b5c663ac0b9e2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aess_a
    ADD CONSTRAINT fkab4b5c663ac0b9e2 FOREIGN KEY (gelsixtytube_id) REFERENCES tube(id);


--
-- Name: fkab4b5c666d1b7d66; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aess_a
    ADD CONSTRAINT fkab4b5c666d1b7d66 FOREIGN KEY (biochemicalsixtyaliquot_id) REFERENCES aliquot(id);


--
-- Name: fkab4b5c6699ef5db8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aess_a
    ADD CONSTRAINT fkab4b5c6699ef5db8 FOREIGN KEY (biochemicalsixtyqcaliquot_id) REFERENCES aliquot(id);


--
-- Name: fkab4b5c66b8fef6f1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aess_a
    ADD CONSTRAINT fkab4b5c66b8fef6f1 FOREIGN KEY (glycemiasixtyaliquot_id) REFERENCES aliquot(id);


--
-- Name: fkab4b5c66d3f4cdd0; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aess_a
    ADD CONSTRAINT fkab4b5c66d3f4cdd0 FOREIGN KEY (gelsixtyqctube_id) REFERENCES tube(id);


--
-- Name: fkab4b5c66d8a9a66c; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aess_a
    ADD CONSTRAINT fkab4b5c66d8a9a66c FOREIGN KEY (fluoridesixtytube_id) REFERENCES tube(id);


--
-- Name: fkab4bd0c53ffbe484; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aets_a
    ADD CONSTRAINT fkab4bd0c53ffbe484 FOREIGN KEY (biochemistry_id) REFERENCES aliquot(id);


--
-- Name: fkab4bd0c57b32d60a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aets_a
    ADD CONSTRAINT fkab4bd0c57b32d60a FOREIGN KEY (fluoride30_id) REFERENCES tube(id);


--
-- Name: fkab4bd0c5a64b1b54; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aets_a
    ADD CONSTRAINT fkab4bd0c5a64b1b54 FOREIGN KEY (gel30_id) REFERENCES tube(id);


--
-- Name: fkab4bd0c5bda4e6e6; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aets_a
    ADD CONSTRAINT fkab4bd0c5bda4e6e6 FOREIGN KEY (gel30cq_id) REFERENCES tube(id);


--
-- Name: fkab4bd0c5ca26fd94; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aets_a
    ADD CONSTRAINT fkab4bd0c5ca26fd94 FOREIGN KEY (glycemia30_id) REFERENCES aliquot(id);


--
-- Name: fkab4bd0c5ee847c07; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aets_a
    ADD CONSTRAINT fkab4bd0c5ee847c07 FOREIGN KEY (biochemistry30_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d1beef4fe; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d1beef4fe FOREIGN KEY (gelfastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d1bef695d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d1bef695d FOREIGN KEY (gelfastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d1befddbc; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d1befddbc FOREIGN KEY (gelfastingaliquot3_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d1bf0521b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d1bf0521b FOREIGN KEY (gelfastingaliquot4_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d1bf0c67a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d1bf0c67a FOREIGN KEY (gelfastingaliquot5_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d1bf13ad9; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d1bf13ad9 FOREIGN KEY (gelfastingaliquot6_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d1bf1af38; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d1bf1af38 FOREIGN KEY (gelfastingaliquot7_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d1bf22397; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d1bf22397 FOREIGN KEY (gelfastingaliquot8_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d27e973c5; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d27e973c5 FOREIGN KEY (edta120aliquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d27e9e824; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d27e9e824 FOREIGN KEY (edta120aliquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d27ea5c83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d27ea5c83 FOREIGN KEY (edta120aliquotqc3_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d27ead0e2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d27ead0e2 FOREIGN KEY (edta120aliquotqc4_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d378055ba; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d378055ba FOREIGN KEY (gelaliquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d3780ca19; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d3780ca19 FOREIGN KEY (gelaliquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d37813e78; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d37813e78 FOREIGN KEY (gelaliquotqc3_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d3781b2d7; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d3781b2d7 FOREIGN KEY (gelaliquotqc4_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d37822736; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d37822736 FOREIGN KEY (gelaliquotqc5_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d37829b95; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d37829b95 FOREIGN KEY (gelaliquotqc6_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d37830ff4; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d37830ff4 FOREIGN KEY (gelaliquotqc7_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d37838453; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d37838453 FOREIGN KEY (gelaliquotqc8_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d50f9e7b3; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d50f9e7b3 FOREIGN KEY (edta120aliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d50fa5c12; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d50fa5c12 FOREIGN KEY (edta120aliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d50fad071; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d50fad071 FOREIGN KEY (edta120aliquot3_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d50fb44d0; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d50fb44d0 FOREIGN KEY (edta120aliquot4_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d55f081e1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d55f081e1 FOREIGN KEY (edtafastingtube_id) REFERENCES tube(id);


--
-- Name: fkad36c18d5a4adc35; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d5a4adc35 FOREIGN KEY (gel120aliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d5a4b5094; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d5a4b5094 FOREIGN KEY (gel120aliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d5a4bc4f3; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d5a4bc4f3 FOREIGN KEY (gel120aliquot3_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d5a4c3952; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d5a4c3952 FOREIGN KEY (gel120aliquot4_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d5a4cadb1; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d5a4cadb1 FOREIGN KEY (gel120aliquot5_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d5a4d2210; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d5a4d2210 FOREIGN KEY (gel120aliquot6_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d5a4d966f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d5a4d966f FOREIGN KEY (gel120aliquot7_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d5a4e0ace; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d5a4e0ace FOREIGN KEY (gel120aliquot8_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d66b40b98; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d66b40b98 FOREIGN KEY (edta120tube_id) REFERENCES tube(id);


--
-- Name: fkad36c18d66fec10a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d66fec10a FOREIGN KEY (secondgelfastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d66ff3569; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d66ff3569 FOREIGN KEY (secondgelfastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d66ffa9c8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d66ffa9c8 FOREIGN KEY (secondgelfastingaliquot3_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d67001e27; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d67001e27 FOREIGN KEY (secondgelfastingaliquot4_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d67009286; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d67009286 FOREIGN KEY (secondgelfastingaliquot5_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d670106e5; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d670106e5 FOREIGN KEY (secondgelfastingaliquot6_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d67017b44; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d67017b44 FOREIGN KEY (secondgelfastingaliquot7_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d6701efa3; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d6701efa3 FOREIGN KEY (secondgelfastingaliquot8_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d6ef90799; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d6ef90799 FOREIGN KEY (heparinfastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d6ef97bf8; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d6ef97bf8 FOREIGN KEY (heparinfastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d75b0e7e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d75b0e7e FOREIGN KEY (heparinfastingtube_id) REFERENCES tube(id);


--
-- Name: fkad36c18d80bd9f81; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d80bd9f81 FOREIGN KEY (fastinggeltubeqc_id) REFERENCES tube(id);


--
-- Name: fkad36c18d827911a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d827911a FOREIGN KEY (gel120tube_id) REFERENCES tube(id);


--
-- Name: fkad36c18d851c206; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d851c206 FOREIGN KEY (edta120tubeqc_id) REFERENCES tube(id);


--
-- Name: fkad36c18d8f908401; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d8f908401 FOREIGN KEY (fastinggel120aliquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d8f90f860; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d8f90f860 FOREIGN KEY (fastinggel120aliquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d8f916cbf; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d8f916cbf FOREIGN KEY (fastinggel120aliquotqc3_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d8f91e11e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d8f91e11e FOREIGN KEY (fastinggel120aliquotqc4_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d8f92557d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d8f92557d FOREIGN KEY (fastinggel120aliquotqc5_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d8f92c9dc; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d8f92c9dc FOREIGN KEY (fastinggel120aliquotqc6_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d8f933e3b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d8f933e3b FOREIGN KEY (fastinggel120aliquotqc7_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d8f93b29a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d8f93b29a FOREIGN KEY (fastinggel120aliquotqc8_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18d9a726980; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18d9a726980 FOREIGN KEY (heparintubeqc_id) REFERENCES tube(id);


--
-- Name: fkad36c18dc3a25042; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18dc3a25042 FOREIGN KEY (fastinggel120tubeqc_id) REFERENCES tube(id);


--
-- Name: fkad36c18dc510117c; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18dc510117c FOREIGN KEY (edtafastingaliquot1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18dc51085db; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18dc51085db FOREIGN KEY (edtafastingaliquot2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18dc510fa3a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18dc510fa3a FOREIGN KEY (edtafastingaliquot3_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18dc5116e99; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18dc5116e99 FOREIGN KEY (edtafastingaliquot4_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18de215ce3f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18de215ce3f FOREIGN KEY (heparinaliquotqc1_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18de216429e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18de216429e FOREIGN KEY (heparinaliquotqc2_id) REFERENCES aliquot(id);


--
-- Name: fkad36c18df4c4030a; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18df4c4030a FOREIGN KEY (gelfastingtube1_id) REFERENCES tube(id);


--
-- Name: fkad36c18df4c47769; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY bios_a
    ADD CONSTRAINT fkad36c18df4c47769 FOREIGN KEY (gelfastingtube2_id) REFERENCES tube(id);


--
-- Name: fkaf7310c212a95631; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cscs_a
    ADD CONSTRAINT fkaf7310c212a95631 FOREIGN KEY (fluoridetubeqc_id) REFERENCES tube(id);


--
-- Name: fkaf7310c2a1c4c94d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cscs_a
    ADD CONSTRAINT fkaf7310c2a1c4c94d FOREIGN KEY (geltube_id) REFERENCES tube(id);


--
-- Name: fkaf7310c2bc788f8f; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cscs_a
    ADD CONSTRAINT fkaf7310c2bc788f8f FOREIGN KEY (edtatube_id) REFERENCES tube(id);


--
-- Name: fkaf7310c2c229e67b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cscs_a
    ADD CONSTRAINT fkaf7310c2c229e67b FOREIGN KEY (geltubeqc_id) REFERENCES tube(id);


--
-- Name: fkaf7310c2dba8ae83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cscs_a
    ADD CONSTRAINT fkaf7310c2dba8ae83 FOREIGN KEY (fluoridetube_id) REFERENCES tube(id);


--
-- Name: fkaf7310c2ff05243d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY cscs_a
    ADD CONSTRAINT fkaf7310c2ff05243d FOREIGN KEY (edtatubeqc_id) REFERENCES tube(id);


--
-- Name: fkaf763f5b12a95631; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5b12a95631 FOREIGN KEY (fluoridetubeqc_id) REFERENCES tube(id);


--
-- Name: fkaf763f5b2ab0d60; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5b2ab0d60 FOREIGN KEY (geltube1_id) REFERENCES tube(id);


--
-- Name: fkaf763f5b2ab81bf; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5b2ab81bf FOREIGN KEY (geltube2_id) REFERENCES tube(id);


--
-- Name: fkaf763f5b3e700f5e; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5b3e700f5e FOREIGN KEY (edtatube1_id) REFERENCES tube(id);


--
-- Name: fkaf763f5b3e7083bd; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5b3e7083bd FOREIGN KEY (edtatube2_id) REFERENCES tube(id);


--
-- Name: fkaf763f5b3e70f81c; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5b3e70f81c FOREIGN KEY (edtatube3_id) REFERENCES tube(id);


--
-- Name: fkaf763f5b9a726980; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5b9a726980 FOREIGN KEY (heparintubeqc_id) REFERENCES tube(id);


--
-- Name: fkaf763f5bc229e67b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5bc229e67b FOREIGN KEY (geltubeqc_id) REFERENCES tube(id);


--
-- Name: fkaf763f5bdba8ae83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5bdba8ae83 FOREIGN KEY (fluoridetube_id) REFERENCES tube(id);


--
-- Name: fkaf763f5be5ec4992; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5be5ec4992 FOREIGN KEY (heparintube_id) REFERENCES tube(id);


--
-- Name: fkaf763f5bff05243d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csjs_a
    ADD CONSTRAINT fkaf763f5bff05243d FOREIGN KEY (edtatubeqc_id) REFERENCES tube(id);


--
-- Name: fkaf7a56b2a1c4c94d; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csss_a
    ADD CONSTRAINT fkaf7a56b2a1c4c94d FOREIGN KEY (geltube_id) REFERENCES tube(id);


--
-- Name: fkaf7a56b2c229e67b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csss_a
    ADD CONSTRAINT fkaf7a56b2c229e67b FOREIGN KEY (geltubeqc_id) REFERENCES tube(id);


--
-- Name: fkaf7a56b2dba8ae83; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csss_a
    ADD CONSTRAINT fkaf7a56b2dba8ae83 FOREIGN KEY (fluoridetube_id) REFERENCES tube(id);


--
-- Name: fkaf7acb11363402e2; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csts_a
    ADD CONSTRAINT fkaf7acb11363402e2 FOREIGN KEY (geltube30cq_id) REFERENCES tube(id);


--
-- Name: fkaf7acb11bea90650; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csts_a
    ADD CONSTRAINT fkaf7acb11bea90650 FOREIGN KEY (geltube30_id) REFERENCES tube(id);


--
-- Name: fkaf7acb11f287606; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY csts_a
    ADD CONSTRAINT fkaf7acb11f287606 FOREIGN KEY (fluoridetube30_id) REFERENCES tube(id);


--
-- Name: fkb0e08b1e5a855f34; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY dnas_a
    ADD CONSTRAINT fkb0e08b1e5a855f34 FOREIGN KEY (edtadna_id) REFERENCES tube(id);


--
-- Name: fkb0e08b1ec92bcf65; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY dnas_a
    ADD CONSTRAINT fkb0e08b1ec92bcf65 FOREIGN KEY (bankdna_id) REFERENCES aliquot(id);


--
-- Name: fkc9849da76398c5b; Type: FK CONSTRAINT; Schema: lab; Owner: postgres
--

ALTER TABLE ONLY aliquot
    ADD CONSTRAINT fkc9849da76398c5b FOREIGN KEY (tube_id) REFERENCES tube(id);


SET search_path = public, pg_catalog;

--
-- Name: fk143bf46a60ce0cfd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT fk143bf46a60ce0cfd FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fk38b724204e5a553f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT fk38b724204e5a553f FOREIGN KEY (participant_id) REFERENCES participant(id);


--
-- Name: fk38b72420d38c5280; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT fk38b72420d38c5280 FOREIGN KEY (contact_info_id) REFERENCES contact_info(id);


--
-- Name: fk4c268d6d4e5a553f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact_info
    ADD CONSTRAINT fk4c268d6d4e5a553f FOREIGN KEY (participant_id) REFERENCES participant(id);


--
-- Name: fk611aa6145188d239; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity_log
    ADD CONSTRAINT fk611aa6145188d239 FOREIGN KEY (activity_id) REFERENCES activity(id);


--
-- Name: fk611aa61460ce0cfd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity_log
    ADD CONSTRAINT fk611aa61460ce0cfd FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fk6cb60bfb4e5a553f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY uploaded_file
    ADD CONSTRAINT fk6cb60bfb4e5a553f FOREIGN KEY (participant_id) REFERENCES participant(id);


--
-- Name: fk6cb60bfb5188d239; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY uploaded_file
    ADD CONSTRAINT fk6cb60bfb5188d239 FOREIGN KEY (activity_id) REFERENCES activity(id);


--
-- Name: fk6cb60bfb60ce0cfd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY uploaded_file
    ADD CONSTRAINT fk6cb60bfb60ce0cfd FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fk9d4bf30f4e5a553f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fk9d4bf30f4e5a553f FOREIGN KEY (participant_id) REFERENCES participant(id);


--
-- Name: fk9d4bf30f60ce0cfd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fk9d4bf30f60ce0cfd FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fk9d4bf30f8f96c39d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fk9d4bf30f8f96c39d FOREIGN KEY (offline_data_entry) REFERENCES offline_data_entry(id);


--
-- Name: fk9d4bf30feb40b958; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fk9d4bf30feb40b958 FOREIGN KEY (activity_type_id) REFERENCES activity_type(id);


--
-- Name: fk9f53c7b660ce0cfd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permission_grid
    ADD CONSTRAINT fk9f53c7b660ce0cfd FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fke125c5cf2e524b47; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permission
    ADD CONSTRAINT fke125c5cf2e524b47 FOREIGN KEY (permission_grid_id) REFERENCES permission_grid(id);


--
-- Name: fke61dbc92fd69ffa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY participant_registry
    ADD CONSTRAINT fke61dbc92fd69ffa FOREIGN KEY (interviewer_id) REFERENCES "user"(id);


--
-- Name: fke61dbc94e5a553f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY participant_registry
    ADD CONSTRAINT fke61dbc94e5a553f FOREIGN KEY (participant_id) REFERENCES participant(id);


--
-- Name: fkf19a3f7960ce0cfd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offline_data_entry
    ADD CONSTRAINT fkf19a3f7960ce0cfd FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fkf8eb36084e5a553f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY general_comment
    ADD CONSTRAINT fkf8eb36084e5a553f FOREIGN KEY (participant_id) REFERENCES participant(id);


--
-- Name: fkf8eb360860ce0cfd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY general_comment
    ADD CONSTRAINT fkf8eb360860ce0cfd FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fkfb157d774e5a553f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY variables
    ADD CONSTRAINT fkfb157d774e5a553f FOREIGN KEY (participant_id) REFERENCES participant(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


SET search_path = extraction, pg_catalog;

--
-- Name: aboutbreastfeeding_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION aboutbreastfeeding_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION aboutbreastfeeding_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION aboutbreastfeeding_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION aboutbreastfeeding_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION aboutbreastfeeding_mapping(value character varying) TO estatistica;


--
-- Name: actagainstmyself_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION actagainstmyself_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION actagainstmyself_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION actagainstmyself_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION actagainstmyself_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION actagainstmyself_mapping(value character varying) TO estatistica;


--
-- Name: againstme_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION againstme_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION againstme_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION againstme_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION againstme_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION againstme_mapping(value character varying) TO estatistica;


--
-- Name: agreedisagree_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION agreedisagree_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION agreedisagree_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION agreedisagree_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION agreedisagree_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION agreedisagree_mapping(value character varying) TO estatistica;


--
-- Name: agreeswithministryofhealth_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION agreeswithministryofhealth_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION agreeswithministryofhealth_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION agreeswithministryofhealth_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION agreeswithministryofhealth_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION agreeswithministryofhealth_mapping(value character varying) TO estatistica;


--
-- Name: babysiting_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION babysiting_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION babysiting_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION babysiting_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION babysiting_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION babysiting_mapping(value character varying) TO estatistica;


--
-- Name: beencrying_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION beencrying_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION beencrying_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION beencrying_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION beencrying_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION beencrying_mapping(value character varying) TO estatistica;


--
-- Name: beingbreastfed_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION beingbreastfed_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION beingbreastfed_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION beingbreastfed_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION beingbreastfed_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION beingbreastfed_mapping(value character varying) TO estatistica;


--
-- Name: birthweight_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION birthweight_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION birthweight_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION birthweight_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION birthweight_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION birthweight_mapping(value character varying) TO estatistica;


--
-- Name: bodyshape_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION bodyshape_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION bodyshape_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION bodyshape_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION bodyshape_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION bodyshape_mapping(value character varying) TO estatistica;


--
-- Name: bodyshapequestions_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION bodyshapequestions_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION bodyshapequestions_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION bodyshapequestions_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION bodyshapequestions_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION bodyshapequestions_mapping(value character varying) TO estatistica;


--
-- Name: breastfeedingintention_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION breastfeedingintention_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION breastfeedingintention_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION breastfeedingintention_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION breastfeedingintention_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION breastfeedingintention_mapping(value character varying) TO estatistica;


--
-- Name: breastfeedingplan_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION breastfeedingplan_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION breastfeedingplan_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION breastfeedingplan_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION breastfeedingplan_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION breastfeedingplan_mapping(value character varying) TO estatistica;


--
-- Name: breastfeedingplanoption_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION breastfeedingplanoption_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION breastfeedingplanoption_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION breastfeedingplanoption_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION breastfeedingplanoption_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION breastfeedingplanoption_mapping(value character varying) TO estatistica;


--
-- Name: chanceofhavingdiabetes_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION chanceofhavingdiabetes_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION chanceofhavingdiabetes_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION chanceofhavingdiabetes_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION chanceofhavingdiabetes_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION chanceofhavingdiabetes_mapping(value character varying) TO estatistica;


--
-- Name: cheerfuloutlook_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION cheerfuloutlook_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION cheerfuloutlook_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION cheerfuloutlook_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION cheerfuloutlook_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION cheerfuloutlook_mapping(value character varying) TO estatistica;


--
-- Name: chickenpreparing_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION chickenpreparing_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION chickenpreparing_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION chickenpreparing_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION chickenpreparing_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION chickenpreparing_mapping(value character varying) TO estatistica;


--
-- Name: concern_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION concern_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION concern_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION concern_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION concern_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION concern_mapping(value character varying) TO estatistica;


--
-- Name: consumptionfrequency_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION consumptionfrequency_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION consumptionfrequency_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION consumptionfrequency_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION consumptionfrequency_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION consumptionfrequency_mapping(value character varying) TO estatistica;


--
-- Name: diabetestestrequisition_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION diabetestestrequisition_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION diabetestestrequisition_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION diabetestestrequisition_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION diabetestestrequisition_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION diabetestestrequisition_mapping(value character varying) TO estatistica;


--
-- Name: diabetestestresult_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION diabetestestresult_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION diabetestestresult_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION diabetestestresult_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION diabetestestresult_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION diabetestestresult_mapping(value character varying) TO estatistica;


--
-- Name: difficultyintasks_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION difficultyintasks_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION difficultyintasks_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION difficultyintasks_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION difficultyintasks_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION difficultyintasks_mapping(value character varying) TO estatistica;


--
-- Name: emptybladder_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION emptybladder_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION emptybladder_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION emptybladder_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION emptybladder_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION emptybladder_mapping(value character varying) TO estatistica;


--
-- Name: familyincome_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION familyincome_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION familyincome_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION familyincome_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION familyincome_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION familyincome_mapping(value character varying) TO estatistica;


--
-- Name: frequenciesofresponses_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION frequenciesofresponses_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION frequenciesofresponses_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION frequenciesofresponses_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION frequenciesofresponses_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION frequenciesofresponses_mapping(value character varying) TO estatistica;


--
-- Name: frequenciesofresponsestoeat_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION frequenciesofresponsestoeat_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION frequenciesofresponsestoeat_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION frequenciesofresponsestoeat_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION frequenciesofresponsestoeat_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION frequenciesofresponsestoeat_mapping(value character varying) TO estatistica;


--
-- Name: frequencyofbingeeatingchoice_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION frequencyofbingeeatingchoice_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION frequencyofbingeeatingchoice_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION frequencyofbingeeatingchoice_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION frequencyofbingeeatingchoice_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION frequencyofbingeeatingchoice_mapping(value character varying) TO estatistica;


--
-- Name: frequencyofsleepproblems_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION frequencyofsleepproblems_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION frequencyofsleepproblems_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION frequencyofsleepproblems_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION frequencyofsleepproblems_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION frequencyofsleepproblems_mapping(value character varying) TO estatistica;


--
-- Name: frequencyofsocialactivities_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION frequencyofsocialactivities_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION frequencyofsocialactivities_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION frequencyofsocialactivities_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION frequencyofsocialactivities_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION frequencyofsocialactivities_mapping(value character varying) TO estatistica;


--
-- Name: frightenedorpanic_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION frightenedorpanic_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION frightenedorpanic_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION frightenedorpanic_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION frightenedorpanic_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION frightenedorpanic_mapping(value character varying) TO estatistica;


--
-- Name: futurehappiness_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION futurehappiness_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION futurehappiness_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION futurehappiness_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION futurehappiness_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION futurehappiness_mapping(value character varying) TO estatistica;


--
-- Name: goodisyourbaby_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION goodisyourbaby_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION goodisyourbaby_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION goodisyourbaby_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION goodisyourbaby_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION goodisyourbaby_mapping(value character varying) TO estatistica;


--
-- Name: guiltwithoutreason_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION guiltwithoutreason_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION guiltwithoutreason_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION guiltwithoutreason_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION guiltwithoutreason_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION guiltwithoutreason_mapping(value character varying) TO estatistica;


--
-- Name: healthstatus_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION healthstatus_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION healthstatus_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION healthstatus_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION healthstatus_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION healthstatus_mapping(value character varying) TO estatistica;


--
-- Name: howbreastfeedthesons_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION howbreastfeedthesons_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION howbreastfeedthesons_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION howbreastfeedthesons_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION howbreastfeedthesons_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION howbreastfeedthesons_mapping(value character varying) TO estatistica;


--
-- Name: howmanymonths_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION howmanymonths_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION howmanymonths_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION howmanymonths_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION howmanymonths_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION howmanymonths_mapping(value character varying) TO estatistica;


--
-- Name: howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(value character varying) FROM postgres;
GRANT ALL ON FUNCTION howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(value character varying) TO postgres;
GRANT ALL ON FUNCTION howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION howmuchaffectedyourhealthphysicaloremotionalinlastfourweeks_map(value character varying) TO estatistica;


--
-- Name: howmuchpaininlastfourweeks_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION howmuchpaininlastfourweeks_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION howmuchpaininlastfourweeks_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION howmuchpaininlastfourweeks_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION howmuchpaininlastfourweeks_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION howmuchpaininlastfourweeks_mapping(value character varying) TO estatistica;


--
-- Name: howmuchtimeinlastfourweekscharacteristics_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION howmuchtimeinlastfourweekscharacteristics_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION howmuchtimeinlastfourweekscharacteristics_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION howmuchtimeinlastfourweekscharacteristics_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION howmuchtimeinlastfourweekscharacteristics_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION howmuchtimeinlastfourweekscharacteristics_mapping(value character varying) TO estatistica;


--
-- Name: intensitydegree_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION intensitydegree_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION intensitydegree_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION intensitydegree_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION intensitydegree_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION intensitydegree_mapping(value character varying) TO estatistica;


--
-- Name: intentionofbreastfeed_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION intentionofbreastfeed_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION intentionofbreastfeed_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION intentionofbreastfeed_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION intentionofbreastfeed_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION intentionofbreastfeed_mapping(value character varying) TO estatistica;


--
-- Name: laughability_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION laughability_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION laughability_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION laughability_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION laughability_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION laughability_mapping(value character varying) TO estatistica;


--
-- Name: levelofagreement_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION levelofagreement_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION levelofagreement_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION levelofagreement_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION levelofagreement_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION levelofagreement_mapping(value character varying) TO estatistica;


--
-- Name: levelofdifficultytodosomeactivities_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION levelofdifficultytodosomeactivities_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION levelofdifficultytodosomeactivities_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION levelofdifficultytodosomeactivities_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION levelofdifficultytodosomeactivities_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION levelofdifficultytodosomeactivities_mapping(value character varying) TO estatistica;


--
-- Name: metadata_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION metadata_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION metadata_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION metadata_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION metadata_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION metadata_mapping(value character varying) TO estatistica;


--
-- Name: milkorformula_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION milkorformula_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION milkorformula_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION milkorformula_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION milkorformula_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION milkorformula_mapping(value character varying) TO estatistica;


--
-- Name: moodstate_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION moodstate_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION moodstate_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION moodstate_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION moodstate_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION moodstate_mapping(value character varying) TO estatistica;


--
-- Name: notagreeordisagree_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION notagreeordisagree_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION notagreeordisagree_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION notagreeordisagree_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION notagreeordisagree_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION notagreeordisagree_mapping(value character varying) TO estatistica;


--
-- Name: noyesbreastfeeding_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION noyesbreastfeeding_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION noyesbreastfeeding_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION noyesbreastfeeding_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION noyesbreastfeeding_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION noyesbreastfeeding_mapping(value character varying) TO estatistica;


--
-- Name: noyesfrequenciesofdesire_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION noyesfrequenciesofdesire_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION noyesfrequenciesofdesire_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION noyesfrequenciesofdesire_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION noyesfrequenciesofdesire_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION noyesfrequenciesofdesire_mapping(value character varying) TO estatistica;


--
-- Name: noyesuppercase_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION noyesuppercase_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION noyesuppercase_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION noyesuppercase_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION noyesuppercase_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION noyesuppercase_mapping(value character varying) TO estatistica;


--
-- Name: noyesuppercasedontcolecturine_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION noyesuppercasedontcolecturine_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION noyesuppercasedontcolecturine_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION noyesuppercasedontcolecturine_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION noyesuppercasedontcolecturine_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION noyesuppercasedontcolecturine_mapping(value character varying) TO estatistica;


--
-- Name: noyesuppercasedontcollecturine_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION noyesuppercasedontcollecturine_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION noyesuppercasedontcollecturine_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION noyesuppercasedontcollecturine_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION noyesuppercasedontcollecturine_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION noyesuppercasedontcollecturine_mapping(value character varying) TO estatistica;


--
-- Name: overloaded_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION overloaded_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION overloaded_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION overloaded_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION overloaded_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION overloaded_mapping(value character varying) TO estatistica;


--
-- Name: overloadedwithtasks_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION overloadedwithtasks_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION overloadedwithtasks_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION overloadedwithtasks_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION overloadedwithtasks_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION overloadedwithtasks_mapping(value character varying) TO estatistica;


--
-- Name: panicfeeling_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION panicfeeling_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION panicfeeling_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION panicfeeling_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION panicfeeling_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION panicfeeling_mapping(value character varying) TO estatistica;


--
-- Name: phonecallsaboutproblems_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION phonecallsaboutproblems_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION phonecallsaboutproblems_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION phonecallsaboutproblems_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION phonecallsaboutproblems_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION phonecallsaboutproblems_mapping(value character varying) TO estatistica;


--
-- Name: pulsewaist_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION pulsewaist_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION pulsewaist_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION pulsewaist_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION pulsewaist_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION pulsewaist_mapping(value character varying) TO estatistica;


--
-- Name: qualitysleep_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION qualitysleep_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION qualitysleep_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION qualitysleep_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION qualitysleep_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION qualitysleep_mapping(value character varying) TO estatistica;


--
-- Name: race_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION race_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION race_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION race_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION race_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION race_mapping(value character varying) TO estatistica;


--
-- Name: remembermenstruationdate_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION remembermenstruationdate_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION remembermenstruationdate_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION remembermenstruationdate_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION remembermenstruationdate_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION remembermenstruationdate_mapping(value character varying) TO estatistica;


--
-- Name: riskgroup_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION riskgroup_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION riskgroup_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION riskgroup_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION riskgroup_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION riskgroup_mapping(value character varying) TO estatistica;


--
-- Name: schooling_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION schooling_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION schooling_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION schooling_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION schooling_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION schooling_mapping(value character varying) TO estatistica;


--
-- Name: selfpunishment_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION selfpunishment_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION selfpunishment_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION selfpunishment_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION selfpunishment_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION selfpunishment_mapping(value character varying) TO estatistica;


--
-- Name: sex_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION sex_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION sex_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION sex_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION sex_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION sex_mapping(value character varying) TO estatistica;


--
-- Name: shouldornot_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION shouldornot_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION shouldornot_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION shouldornot_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION shouldornot_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION shouldornot_mapping(value character varying) TO estatistica;


--
-- Name: siteofcare_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION siteofcare_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION siteofcare_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION siteofcare_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION siteofcare_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION siteofcare_mapping(value character varying) TO estatistica;


--
-- Name: situtation_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION situtation_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION situtation_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION situtation_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION situtation_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION situtation_mapping(value character varying) TO estatistica;


--
-- Name: sleepproblems_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION sleepproblems_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION sleepproblems_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION sleepproblems_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION sleepproblems_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION sleepproblems_mapping(value character varying) TO estatistica;


--
-- Name: stateofhealthcomparedtootherpeople_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION stateofhealthcomparedtootherpeople_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION stateofhealthcomparedtootherpeople_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION stateofhealthcomparedtootherpeople_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION stateofhealthcomparedtootherpeople_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION stateofhealthcomparedtootherpeople_mapping(value character varying) TO estatistica;


--
-- Name: stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION stateofhealthcomparedwithstatusbeforeofthepregnancy_mapping(value character varying) TO estatistica;


--
-- Name: stillpregnant_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION stillpregnant_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION stillpregnant_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION stillpregnant_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION stillpregnant_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION stillpregnant_mapping(value character varying) TO estatistica;


--
-- Name: stillpregnantwithindicationofdeath_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION stillpregnantwithindicationofdeath_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION stillpregnantwithindicationofdeath_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION stillpregnantwithindicationofdeath_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION stillpregnantwithindicationofdeath_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION stillpregnantwithindicationofdeath_mapping(value character varying) TO estatistica;


--
-- Name: tearsofsorrow_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION tearsofsorrow_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION tearsofsorrow_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION tearsofsorrow_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION tearsofsorrow_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION tearsofsorrow_mapping(value character varying) TO estatistica;


--
-- Name: thinkaboutbreastfeeding_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION thinkaboutbreastfeeding_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION thinkaboutbreastfeeding_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION thinkaboutbreastfeeding_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION thinkaboutbreastfeeding_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION thinkaboutbreastfeeding_mapping(value character varying) TO estatistica;


--
-- Name: twins_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION twins_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION twins_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION twins_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION twins_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION twins_mapping(value character varying) TO estatistica;


--
-- Name: typebabyfoodindicatedperiodofbreastfeeding_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION typebabyfoodindicatedperiodofbreastfeeding_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION typebabyfoodindicatedperiodofbreastfeeding_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION typebabyfoodindicatedperiodofbreastfeeding_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION typebabyfoodindicatedperiodofbreastfeeding_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION typebabyfoodindicatedperiodofbreastfeeding_mapping(value character varying) TO estatistica;


--
-- Name: typebirth_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION typebirth_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION typebirth_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION typebirth_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION typebirth_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION typebirth_mapping(value character varying) TO estatistica;


--
-- Name: typebreastfeeding_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION typebreastfeeding_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION typebreastfeeding_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION typebreastfeeding_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION typebreastfeeding_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION typebreastfeeding_mapping(value character varying) TO estatistica;


--
-- Name: typechildbed_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION typechildbed_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION typechildbed_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION typechildbed_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION typechildbed_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION typechildbed_mapping(value character varying) TO estatistica;


--
-- Name: typeofbabyfood_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION typeofbabyfood_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION typeofbabyfood_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION typeofbabyfood_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION typeofbabyfood_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION typeofbabyfood_mapping(value character varying) TO estatistica;


--
-- Name: typeofbabyfoodrestrictedquestion_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION typeofbabyfoodrestrictedquestion_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION typeofbabyfoodrestrictedquestion_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION typeofbabyfoodrestrictedquestion_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION typeofbabyfoodrestrictedquestion_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION typeofbabyfoodrestrictedquestion_mapping(value character varying) TO estatistica;


--
-- Name: typeofbabyfoodwithoutcomments_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION typeofbabyfoodwithoutcomments_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION typeofbabyfoodwithoutcomments_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION typeofbabyfoodwithoutcomments_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION typeofbabyfoodwithoutcomments_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION typeofbabyfoodwithoutcomments_mapping(value character varying) TO estatistica;


--
-- Name: typepregnancy_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION typepregnancy_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION typepregnancy_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION typepregnancy_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION typepregnancy_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION typepregnancy_mapping(value character varying) TO estatistica;


--
-- Name: unhappinessdifficultysleeping_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION unhappinessdifficultysleeping_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION unhappinessdifficultysleeping_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION unhappinessdifficultysleeping_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION unhappinessdifficultysleeping_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION unhappinessdifficultysleeping_mapping(value character varying) TO estatistica;


--
-- Name: unhappyfeeling_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION unhappyfeeling_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION unhappyfeeling_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION unhappyfeeling_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION unhappyfeeling_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION unhappyfeeling_mapping(value character varying) TO estatistica;


--
-- Name: uniquetwins_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION uniquetwins_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION uniquetwins_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION uniquetwins_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION uniquetwins_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION uniquetwins_mapping(value character varying) TO estatistica;


--
-- Name: verysad_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION verysad_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION verysad_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION verysad_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION verysad_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION verysad_mapping(value character varying) TO estatistica;


--
-- Name: whatthebabyisdrinking_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION whatthebabyisdrinking_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION whatthebabyisdrinking_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION whatthebabyisdrinking_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION whatthebabyisdrinking_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION whatthebabyisdrinking_mapping(value character varying) TO estatistica;


--
-- Name: whichhand_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION whichhand_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION whichhand_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION whichhand_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION whichhand_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION whichhand_mapping(value character varying) TO estatistica;


--
-- Name: wichhandjob_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION wichhandjob_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION wichhandjob_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION wichhandjob_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION wichhandjob_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION wichhandjob_mapping(value character varying) TO estatistica;


--
-- Name: withanxiety_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION withanxiety_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION withanxiety_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION withanxiety_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION withanxiety_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION withanxiety_mapping(value character varying) TO estatistica;


--
-- Name: yesno_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION yesno_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION yesno_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION yesno_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION yesno_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION yesno_mapping(value character varying) TO estatistica;


--
-- Name: yesnoupper_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION yesnoupper_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION yesnoupper_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION yesnoupper_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION yesnoupper_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION yesnoupper_mapping(value character varying) TO estatistica;


--
-- Name: yesnouppercasecorrectposition_mapping(character varying); Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON FUNCTION yesnouppercasecorrectposition_mapping(value character varying) FROM PUBLIC;
REVOKE ALL ON FUNCTION yesnouppercasecorrectposition_mapping(value character varying) FROM postgres;
GRANT ALL ON FUNCTION yesnouppercasecorrectposition_mapping(value character varying) TO postgres;
GRANT ALL ON FUNCTION yesnouppercasecorrectposition_mapping(value character varying) TO PUBLIC;
GRANT ALL ON FUNCTION yesnouppercasecorrectposition_mapping(value character varying) TO estatistica;


--
-- Name: v_aaf_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aaf_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aaf_a FROM postgres;
GRANT ALL ON TABLE v_aaf_a TO postgres;
GRANT SELECT ON TABLE v_aaf_a TO estatistica;


--
-- Name: v_ace_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_ace_a FROM PUBLIC;
REVOKE ALL ON TABLE v_ace_a FROM postgres;
GRANT ALL ON TABLE v_ace_a TO postgres;
GRANT SELECT ON TABLE v_ace_a TO estatistica;


--
-- Name: v_aces_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aces_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aces_a FROM postgres;
GRANT ALL ON TABLE v_aces_a TO postgres;
GRANT SELECT ON TABLE v_aces_a TO estatistica;


--
-- Name: v_aec_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aec_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aec_a FROM postgres;
GRANT ALL ON TABLE v_aec_a TO postgres;
GRANT SELECT ON TABLE v_aec_a TO estatistica;


--
-- Name: v_aecs_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aecs_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aecs_a FROM postgres;
GRANT ALL ON TABLE v_aecs_a TO postgres;
GRANT SELECT ON TABLE v_aecs_a TO estatistica;


--
-- Name: v_aej_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aej_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aej_a FROM postgres;
GRANT ALL ON TABLE v_aej_a TO postgres;
GRANT SELECT ON TABLE v_aej_a TO estatistica;


--
-- Name: v_aejs_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aejs_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aejs_a FROM postgres;
GRANT ALL ON TABLE v_aejs_a TO postgres;
GRANT SELECT ON TABLE v_aejs_a TO estatistica;


--
-- Name: v_aen_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aen_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aen_a FROM postgres;
GRANT ALL ON TABLE v_aen_a TO postgres;
GRANT SELECT ON TABLE v_aen_a TO estatistica;


--
-- Name: v_aes_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aes_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aes_a FROM postgres;
GRANT ALL ON TABLE v_aes_a TO postgres;
GRANT SELECT ON TABLE v_aes_a TO estatistica;


--
-- Name: v_aess_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aess_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aess_a FROM postgres;
GRANT ALL ON TABLE v_aess_a TO postgres;
GRANT SELECT ON TABLE v_aess_a TO estatistica;


--
-- Name: v_aet_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aet_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aet_a FROM postgres;
GRANT ALL ON TABLE v_aet_a TO postgres;
GRANT SELECT ON TABLE v_aet_a TO estatistica;


--
-- Name: v_aets_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_aets_a FROM PUBLIC;
REVOKE ALL ON TABLE v_aets_a FROM postgres;
GRANT ALL ON TABLE v_aets_a TO postgres;
GRANT SELECT ON TABLE v_aets_a TO estatistica;


--
-- Name: v_afi_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_afi_a FROM PUBLIC;
REVOKE ALL ON TABLE v_afi_a FROM postgres;
GRANT ALL ON TABLE v_afi_a TO postgres;
GRANT SELECT ON TABLE v_afi_a TO estatistica;


--
-- Name: v_afis_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_afis_a FROM PUBLIC;
REVOKE ALL ON TABLE v_afis_a FROM postgres;
GRANT ALL ON TABLE v_afis_a TO postgres;
GRANT SELECT ON TABLE v_afis_a TO estatistica;


--
-- Name: v_age_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_age_a FROM PUBLIC;
REVOKE ALL ON TABLE v_age_a FROM postgres;
GRANT ALL ON TABLE v_age_a TO postgres;
GRANT SELECT ON TABLE v_age_a TO estatistica;


--
-- Name: v_alb_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_alb_a FROM PUBLIC;
REVOKE ALL ON TABLE v_alb_a FROM postgres;
GRANT ALL ON TABLE v_alb_a TO postgres;
GRANT SELECT ON TABLE v_alb_a TO estatistica;


--
-- Name: v_albs_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_albs_a FROM PUBLIC;
REVOKE ALL ON TABLE v_albs_a FROM postgres;
GRANT ALL ON TABLE v_albs_a TO postgres;
GRANT SELECT ON TABLE v_albs_a TO estatistica;


--
-- Name: v_ant_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_ant_a FROM PUBLIC;
REVOKE ALL ON TABLE v_ant_a FROM postgres;
GRANT ALL ON TABLE v_ant_a TO postgres;
GRANT SELECT ON TABLE v_ant_a TO estatistica;


--
-- Name: v_ants_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_ants_a FROM PUBLIC;
REVOKE ALL ON TABLE v_ants_a FROM postgres;
GRANT ALL ON TABLE v_ants_a TO postgres;
GRANT SELECT ON TABLE v_ants_a TO estatistica;


--
-- Name: v_bio_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_bio_a FROM PUBLIC;
REVOKE ALL ON TABLE v_bio_a FROM postgres;
GRANT ALL ON TABLE v_bio_a TO postgres;
GRANT SELECT ON TABLE v_bio_a TO estatistica;


--
-- Name: v_bios_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_bios_a FROM PUBLIC;
REVOKE ALL ON TABLE v_bios_a FROM postgres;
GRANT ALL ON TABLE v_bios_a TO postgres;
GRANT SELECT ON TABLE v_bios_a TO estatistica;


--
-- Name: v_cad_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_cad_a FROM PUBLIC;
REVOKE ALL ON TABLE v_cad_a FROM postgres;
GRANT ALL ON TABLE v_cad_a TO postgres;
GRANT SELECT ON TABLE v_cad_a TO estatistica;


--
-- Name: v_coa_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_coa_a FROM PUBLIC;
REVOKE ALL ON TABLE v_coa_a FROM postgres;
GRANT ALL ON TABLE v_coa_a TO postgres;
GRANT SELECT ON TABLE v_coa_a TO estatistica;


--
-- Name: v_csc_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_csc_a FROM PUBLIC;
REVOKE ALL ON TABLE v_csc_a FROM postgres;
GRANT ALL ON TABLE v_csc_a TO postgres;
GRANT SELECT ON TABLE v_csc_a TO estatistica;


--
-- Name: v_cscs_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_cscs_a FROM PUBLIC;
REVOKE ALL ON TABLE v_cscs_a FROM postgres;
GRANT ALL ON TABLE v_cscs_a TO postgres;
GRANT SELECT ON TABLE v_cscs_a TO estatistica;


--
-- Name: v_csj_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_csj_a FROM PUBLIC;
REVOKE ALL ON TABLE v_csj_a FROM postgres;
GRANT ALL ON TABLE v_csj_a TO postgres;
GRANT SELECT ON TABLE v_csj_a TO estatistica;


--
-- Name: v_csjs_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_csjs_a FROM PUBLIC;
REVOKE ALL ON TABLE v_csjs_a FROM postgres;
GRANT ALL ON TABLE v_csjs_a TO postgres;
GRANT SELECT ON TABLE v_csjs_a TO estatistica;


--
-- Name: v_csn_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_csn_a FROM PUBLIC;
REVOKE ALL ON TABLE v_csn_a FROM postgres;
GRANT ALL ON TABLE v_csn_a TO postgres;
GRANT SELECT ON TABLE v_csn_a TO estatistica;


--
-- Name: v_css_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_css_a FROM PUBLIC;
REVOKE ALL ON TABLE v_css_a FROM postgres;
GRANT ALL ON TABLE v_css_a TO postgres;
GRANT SELECT ON TABLE v_css_a TO estatistica;


--
-- Name: v_csss_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_csss_a FROM PUBLIC;
REVOKE ALL ON TABLE v_csss_a FROM postgres;
GRANT ALL ON TABLE v_csss_a TO postgres;
GRANT SELECT ON TABLE v_csss_a TO estatistica;


--
-- Name: v_cst_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_cst_a FROM PUBLIC;
REVOKE ALL ON TABLE v_cst_a FROM postgres;
GRANT ALL ON TABLE v_cst_a TO postgres;
GRANT SELECT ON TABLE v_cst_a TO estatistica;


--
-- Name: v_csts_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_csts_a FROM PUBLIC;
REVOKE ALL ON TABLE v_csts_a FROM postgres;
GRANT ALL ON TABLE v_csts_a TO postgres;
GRANT SELECT ON TABLE v_csts_a TO estatistica;


--
-- Name: v_dna_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_dna_a FROM PUBLIC;
REVOKE ALL ON TABLE v_dna_a FROM postgres;
GRANT ALL ON TABLE v_dna_a TO postgres;
GRANT SELECT ON TABLE v_dna_a TO estatistica;


--
-- Name: v_dnas_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_dnas_a FROM PUBLIC;
REVOKE ALL ON TABLE v_dnas_a FROM postgres;
GRANT ALL ON TABLE v_dnas_a TO postgres;
GRANT SELECT ON TABLE v_dnas_a TO estatistica;


--
-- Name: v_dso_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_dso_a FROM PUBLIC;
REVOKE ALL ON TABLE v_dso_a FROM postgres;
GRANT ALL ON TABLE v_dso_a TO postgres;
GRANT SELECT ON TABLE v_dso_a TO estatistica;


--
-- Name: v_dsos_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_dsos_a FROM PUBLIC;
REVOKE ALL ON TABLE v_dsos_a FROM postgres;
GRANT ALL ON TABLE v_dsos_a TO postgres;
GRANT SELECT ON TABLE v_dsos_a TO estatistica;


--
-- Name: v_edg_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_edg_a FROM PUBLIC;
REVOKE ALL ON TABLE v_edg_a FROM postgres;
GRANT ALL ON TABLE v_edg_a TO postgres;
GRANT SELECT ON TABLE v_edg_a TO estatistica;


--
-- Name: v_edgs_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_edgs_a FROM PUBLIC;
REVOKE ALL ON TABLE v_edgs_a FROM postgres;
GRANT ALL ON TABLE v_edgs_a TO postgres;
GRANT SELECT ON TABLE v_edgs_a TO estatistica;


--
-- Name: v_elc_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_elc_a FROM PUBLIC;
REVOKE ALL ON TABLE v_elc_a FROM postgres;
GRANT ALL ON TABLE v_elc_a TO postgres;
GRANT SELECT ON TABLE v_elc_a TO estatistica;


--
-- Name: v_enc_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_enc_a FROM PUBLIC;
REVOKE ALL ON TABLE v_enc_a FROM postgres;
GRANT ALL ON TABLE v_enc_a TO postgres;
GRANT SELECT ON TABLE v_enc_a TO estatistica;


--
-- Name: v_exa_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_exa_a FROM PUBLIC;
REVOKE ALL ON TABLE v_exa_a FROM postgres;
GRANT ALL ON TABLE v_exa_a TO postgres;
GRANT SELECT ON TABLE v_exa_a TO estatistica;


--
-- Name: v_exas_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_exas_a FROM PUBLIC;
REVOKE ALL ON TABLE v_exas_a FROM postgres;
GRANT ALL ON TABLE v_exas_a TO postgres;
GRANT SELECT ON TABLE v_exas_a TO estatistica;


--
-- Name: v_exp_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_exp_a FROM PUBLIC;
REVOKE ALL ON TABLE v_exp_a FROM postgres;
GRANT ALL ON TABLE v_exp_a TO postgres;
GRANT SELECT ON TABLE v_exp_a TO estatistica;


--
-- Name: v_fci_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_fci_a FROM PUBLIC;
REVOKE ALL ON TABLE v_fci_a FROM postgres;
GRANT ALL ON TABLE v_fci_a TO postgres;
GRANT SELECT ON TABLE v_fci_a TO estatistica;


--
-- Name: v_for_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_for_a FROM PUBLIC;
REVOKE ALL ON TABLE v_for_a FROM postgres;
GRANT ALL ON TABLE v_for_a TO postgres;
GRANT SELECT ON TABLE v_for_a TO estatistica;


--
-- Name: v_gst_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_gst_a FROM PUBLIC;
REVOKE ALL ON TABLE v_gst_a FROM postgres;
GRANT ALL ON TABLE v_gst_a TO postgres;
GRANT SELECT ON TABLE v_gst_a TO estatistica;


--
-- Name: v_gst_b; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_gst_b FROM PUBLIC;
REVOKE ALL ON TABLE v_gst_b FROM postgres;
GRANT ALL ON TABLE v_gst_b TO postgres;
GRANT SELECT ON TABLE v_gst_b TO estatistica;


--
-- Name: v_iae_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_iae_a FROM PUBLIC;
REVOKE ALL ON TABLE v_iae_a FROM postgres;
GRANT ALL ON TABLE v_iae_a TO postgres;
GRANT SELECT ON TABLE v_iae_a TO estatistica;


--
-- Name: v_iap_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_iap_a FROM PUBLIC;
REVOKE ALL ON TABLE v_iap_a FROM postgres;
GRANT ALL ON TABLE v_iap_a TO postgres;
GRANT SELECT ON TABLE v_iap_a TO estatistica;


--
-- Name: v_iar_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_iar_a FROM PUBLIC;
REVOKE ALL ON TABLE v_iar_a FROM postgres;
GRANT ALL ON TABLE v_iar_a TO postgres;
GRANT SELECT ON TABLE v_iar_a TO estatistica;


--
-- Name: v_imas_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_imas_a FROM PUBLIC;
REVOKE ALL ON TABLE v_imas_a FROM postgres;
GRANT ALL ON TABLE v_imas_a TO postgres;
GRANT SELECT ON TABLE v_imas_a TO estatistica;


--
-- Name: v_ine_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_ine_a FROM PUBLIC;
REVOKE ALL ON TABLE v_ine_a FROM postgres;
GRANT ALL ON TABLE v_ine_a TO postgres;
GRANT SELECT ON TABLE v_ine_a TO estatistica;


--
-- Name: v_int_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_int_a FROM PUBLIC;
REVOKE ALL ON TABLE v_int_a FROM postgres;
GRANT ALL ON TABLE v_int_a TO postgres;
GRANT SELECT ON TABLE v_int_a TO estatistica;


--
-- Name: v_isg_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_isg_a FROM PUBLIC;
REVOKE ALL ON TABLE v_isg_a FROM postgres;
GRANT ALL ON TABLE v_isg_a TO postgres;
GRANT SELECT ON TABLE v_isg_a TO estatistica;


--
-- Name: v_isgs_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_isgs_a FROM PUBLIC;
REVOKE ALL ON TABLE v_isgs_a FROM postgres;
GRANT ALL ON TABLE v_isgs_a TO postgres;
GRANT SELECT ON TABLE v_isgs_a TO estatistica;


--
-- Name: v_lap_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_lap_a FROM PUBLIC;
REVOKE ALL ON TABLE v_lap_a FROM postgres;
GRANT ALL ON TABLE v_lap_a TO postgres;
GRANT SELECT ON TABLE v_lap_a TO estatistica;


--
-- Name: v_lap_b; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_lap_b FROM PUBLIC;
REVOKE ALL ON TABLE v_lap_b FROM postgres;
GRANT ALL ON TABLE v_lap_b TO postgres;
GRANT SELECT ON TABLE v_lap_b TO estatistica;


--
-- Name: v_lid_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_lid_a FROM PUBLIC;
REVOKE ALL ON TABLE v_lid_a FROM postgres;
GRANT ALL ON TABLE v_lid_a TO postgres;
GRANT SELECT ON TABLE v_lid_a TO estatistica;


--
-- Name: v_liu_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_liu_a FROM PUBLIC;
REVOKE ALL ON TABLE v_liu_a FROM postgres;
GRANT ALL ON TABLE v_liu_a TO postgres;
GRANT SELECT ON TABLE v_liu_a TO estatistica;


--
-- Name: v_liu_b; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_liu_b FROM PUBLIC;
REVOKE ALL ON TABLE v_liu_b FROM postgres;
GRANT ALL ON TABLE v_liu_b TO postgres;
GRANT SELECT ON TABLE v_liu_b TO estatistica;


--
-- Name: v_pco_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_pco_a FROM PUBLIC;
REVOKE ALL ON TABLE v_pco_a FROM postgres;
GRANT ALL ON TABLE v_pco_a TO postgres;
GRANT SELECT ON TABLE v_pco_a TO estatistica;


--
-- Name: v_prd_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_prd_a FROM PUBLIC;
REVOKE ALL ON TABLE v_prd_a FROM postgres;
GRANT ALL ON TABLE v_prd_a TO postgres;
GRANT SELECT ON TABLE v_prd_a TO estatistica;


--
-- Name: v_prt_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_prt_a FROM PUBLIC;
REVOKE ALL ON TABLE v_prt_a FROM postgres;
GRANT ALL ON TABLE v_prt_a TO postgres;
GRANT SELECT ON TABLE v_prt_a TO estatistica;


--
-- Name: v_qvd_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_qvd_a FROM PUBLIC;
REVOKE ALL ON TABLE v_qvd_a FROM postgres;
GRANT ALL ON TABLE v_qvd_a TO postgres;
GRANT SELECT ON TABLE v_qvd_a TO estatistica;


--
-- Name: v_qvds_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_qvds_a FROM PUBLIC;
REVOKE ALL ON TABLE v_qvds_a FROM postgres;
GRANT ALL ON TABLE v_qvds_a TO postgres;
GRANT SELECT ON TABLE v_qvds_a TO estatistica;


--
-- Name: v_ran_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_ran_a FROM PUBLIC;
REVOKE ALL ON TABLE v_ran_a FROM postgres;
GRANT ALL ON TABLE v_ran_a TO postgres;
GRANT SELECT ON TABLE v_ran_a TO estatistica;


--
-- Name: v_rcp_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_rcp_a FROM PUBLIC;
REVOKE ALL ON TABLE v_rcp_a FROM postgres;
GRANT ALL ON TABLE v_rcp_a TO postgres;
GRANT SELECT ON TABLE v_rcp_a TO estatistica;


--
-- Name: v_rcps_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_rcps_a FROM PUBLIC;
REVOKE ALL ON TABLE v_rcps_a FROM postgres;
GRANT ALL ON TABLE v_rcps_a TO postgres;
GRANT SELECT ON TABLE v_rcps_a TO estatistica;


--
-- Name: v_rdv_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_rdv_a FROM PUBLIC;
REVOKE ALL ON TABLE v_rdv_a FROM postgres;
GRANT ALL ON TABLE v_rdv_a TO postgres;
GRANT SELECT ON TABLE v_rdv_a TO estatistica;


--
-- Name: v_rdvs_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_rdvs_a FROM PUBLIC;
REVOKE ALL ON TABLE v_rdvs_a FROM postgres;
GRANT ALL ON TABLE v_rdvs_a TO postgres;
GRANT SELECT ON TABLE v_rdvs_a TO estatistica;


--
-- Name: v_rpn_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_rpn_a FROM PUBLIC;
REVOKE ALL ON TABLE v_rpn_a FROM postgres;
GRANT ALL ON TABLE v_rpn_a TO postgres;
GRANT SELECT ON TABLE v_rpn_a TO estatistica;


--
-- Name: v_sau_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_sau_a FROM PUBLIC;
REVOKE ALL ON TABLE v_sau_a FROM postgres;
GRANT ALL ON TABLE v_sau_a TO postgres;
GRANT SELECT ON TABLE v_sau_a TO estatistica;


--
-- Name: v_saus_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_saus_a FROM PUBLIC;
REVOKE ALL ON TABLE v_saus_a FROM postgres;
GRANT ALL ON TABLE v_saus_a TO postgres;
GRANT SELECT ON TABLE v_saus_a TO estatistica;


--
-- Name: v_son_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_son_a FROM PUBLIC;
REVOKE ALL ON TABLE v_son_a FROM postgres;
GRANT ALL ON TABLE v_son_a TO postgres;
GRANT SELECT ON TABLE v_son_a TO estatistica;


--
-- Name: v_sons_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_sons_a FROM PUBLIC;
REVOKE ALL ON TABLE v_sons_a FROM postgres;
GRANT ALL ON TABLE v_sons_a TO postgres;
GRANT SELECT ON TABLE v_sons_a TO estatistica;


--
-- Name: v_tcc_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_tcc_a FROM PUBLIC;
REVOKE ALL ON TABLE v_tcc_a FROM postgres;
GRANT ALL ON TABLE v_tcc_a TO postgres;
GRANT SELECT ON TABLE v_tcc_a TO estatistica;


--
-- Name: v_tce_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_tce_a FROM PUBLIC;
REVOKE ALL ON TABLE v_tce_a FROM postgres;
GRANT ALL ON TABLE v_tce_a TO postgres;
GRANT SELECT ON TABLE v_tce_a TO estatistica;


--
-- Name: v_tcm_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_tcm_a FROM PUBLIC;
REVOKE ALL ON TABLE v_tcm_a FROM postgres;
GRANT ALL ON TABLE v_tcm_a TO postgres;
GRANT SELECT ON TABLE v_tcm_a TO estatistica;


--
-- Name: v_ttg_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_ttg_a FROM PUBLIC;
REVOKE ALL ON TABLE v_ttg_a FROM postgres;
GRANT ALL ON TABLE v_ttg_a TO postgres;
GRANT SELECT ON TABLE v_ttg_a TO estatistica;


--
-- Name: v_ttp_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_ttp_a FROM PUBLIC;
REVOKE ALL ON TABLE v_ttp_a FROM postgres;
GRANT ALL ON TABLE v_ttp_a TO postgres;
GRANT SELECT ON TABLE v_ttp_a TO estatistica;


--
-- Name: v_ttps_a; Type: ACL; Schema: extraction; Owner: postgres
--

REVOKE ALL ON TABLE v_ttps_a FROM PUBLIC;
REVOKE ALL ON TABLE v_ttps_a FROM postgres;
GRANT ALL ON TABLE v_ttps_a TO postgres;
GRANT SELECT ON TABLE v_ttps_a TO estatistica;


--
-- PostgreSQL database dump complete
--

