USE world;

DROP TABLE IF EXISTS city_log;

CREATE TABLE city_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action_time DATETIME,
    user VARCHAR(50),
    changes JSON
);

INSERT INTO city_log (action_time, user, changes) VALUES
(NOW(), 'admin', JSON_OBJECT('field', 'Population', 'old', 300000, 'new', 350000)),
(NOW(), 'system', JSON_OBJECT('field', 'Name', 'old', 'Bombay', 'new', 'Mumbai'));
