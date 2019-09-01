-- db indexed_cars

CREATE TABLE
IF NOT EXISTS car_models
(
 id serial,
 make_code character varying
(125) NOT NULL,
 make_title character varying
(125) NOT NULL,
 model_code character varying
(125) NOT NULL,
 model_title character varying
(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY
(id)
);

CREATE INDEX car_index_make
ON car_models (make_code, make_title);

CREATE INDEX car_index_model
ON car_models (model_code, model_title);

CREATE INDEX car_index_year
ON car_models (year);