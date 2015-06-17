
CREATE SEQUENCE uploaded_file_seq
	START WITH 1
	INCREMENT BY 1
	NO MAXVALUE
	NO MINVALUE
	CACHE 1;

CREATE TABLE uploaded_file (
	id bigint NOT NULL,
	"date" timestamp without time zone,
	file oid,
	file_name character varying(255),
	owner_id bigint,
	story_id bigint
);

ALTER TABLE story
	ADD COLUMN wiki_page character varying(255);

ALTER TABLE uploaded_file
	ADD CONSTRAINT uploaded_file_pkey PRIMARY KEY (id);

ALTER TABLE uploaded_file
	ADD CONSTRAINT fk_foqxjaes96bqce73nrxjw3h1d FOREIGN KEY (story_id) REFERENCES story(id);

ALTER TABLE uploaded_file
	ADD CONSTRAINT fk_k19fghkdh96dr10u9ryt0v9op FOREIGN KEY (owner_id) REFERENCES "user"(id);
