--\i to run scripts

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
--Before
--Time: 26.795 ms
--After
--Time: 3.160 ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--Before
--Time: 32.686 ms
--After
--Time: 4.388 ms

SELECT *
FROM car_models
WHERE make_code = 'LAM';
--Before
--Time: 37.359 ms
--After
--Time: 9.279 ms

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
--Before
--Time: 360.501 ms
--After
--Time: 339.670 ms

SELECT *
FROM car_models
WHERE year = 2010;
--Before
--Time: 79.786 ms
--After
--Time: 68.212 ms

-------Indexing-------
CREATE INDEX car_index_make
ON car_models (make_code, make_title);

CREATE INDEX car_index_model
ON car_models (model_code, model_title);

CREATE INDEX car_index_year
ON car_models (year);