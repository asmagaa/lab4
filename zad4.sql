USE world;

-- 1.
SELECT changes FROM city_log;

-- 2.
SELECT JSON_UNQUOTE(JSON_EXTRACT(changes, '$.new')) AS new_value FROM city_log;

-- 3.
SELECT id, JSON_CONTAINS_PATH(changes, 'one', '$.new') AS has_new FROM city_log;

-- 4.
UPDATE city_log
SET changes = JSON_REPLACE(changes, '$.new', '400000')
WHERE JSON_UNQUOTE(JSON_EXTRACT(changes, '$.field')) = 'Population';

-- 5.
SELECT
  JSON_UNQUOTE(JSON_EXTRACT(json_data, '$.Name')) AS city_name,
  JSON_UNQUOTE(JSON_EXTRACT(json_data, '$.CountryCode')) AS country_code
FROM city_json;