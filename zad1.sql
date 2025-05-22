USE world;

SELECT 
  CONCAT(
    '{',
      '"ID": ', ID, ', ',
      '"Name": "', REPLACE(Name, '"', '\\\\"'), '", ',
      '"CountryCode": "', CountryCode, '", ',
      '"District": "', REPLACE(District, '"', '\\\\"'), '", ',
      '"Population": ', Population,
    '}'
  )
INTO OUTFILE 'C:/xampp/data/JSONplik.json'
LINES TERMINATED BY '\n'
FROM city;
