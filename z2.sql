USE world;

DROP TABLE IF EXISTS city_json;

CREATE TABLE city_json (
    id INT AUTO_INCREMENT PRIMARY KEY,
    json_data JSON
);

LOAD DATA INFILE 'C:/xampp/data/JSONplik.json'
INTO TABLE city_json
FIELDS TERMINATED BY ''
LINES TERMINATED BY '\n'
(json_data);
