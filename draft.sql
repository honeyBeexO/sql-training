CREATE DATABASE IF NOT EXISTS paw_db_draft;
USE paw_db_draft;
DROP Table Address;
CREATE TABLE IF NOT EXISTS Address (
  address_id INT NOT NULL AUTO_INCREMENT,
  country VARCHAR(100) DEFAULT 'United Kingdom',
  city VARCHAR(100) NOT NULL,
  address_line VARCHAR(100) NOT NULL,
  building_number SMALLINT,
  postcode VARCHAR(10) NOT NULL,
  PRIMARY KEY (address_id),
  UNIQUE KEY (country, city, postcode, address_line, building_number)
);DESCRIBE Address;
SELECT * FROM Address;
