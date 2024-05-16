CREATE DATABASE IF NOT EXISTS paw_db_draft;
USE paw_db_draft;
DROP Table Address;
CREATE TABLE IF NOT EXISTS Address (
  address_id INT NOT NULL AUTO_INCREMENT,
  country VARCHAR(100) DEFAULT 'United Kingdom',
  city VARCHAR(100) NOT NULL,
  postcode VARCHAR(10) NOT NULL,
  street VARCHAR(100) NOT NULL,
  building_num_or_name VARCHAR(100),
  PRIMARY KEY (address_id),
  UNIQUE KEY (country, city, postcode, street, building_num_or_name)
);

DESCRIBE Address;
SELECT * FROM Address WHERE postcode = 'W1A 1AA';
-- Inserting 10 addresses in London
INSERT INTO Address (building_num_or_name, street, city, postcode)
VALUES
('1','Oxford Street', 'London', 'W1A 1AA'),
('2','Regent Street', 'London', 'W1B 2DE' ),
('3','Piccadilly Circus', 'London', 'W1J 9HP' ),
('4','Trafalgar Square', 'London', 'WC2N 5DN' ),
('5','Covent Garden', 'London', 'WC2E 9DD' ),
('6','Leicester Square', 'London', 'WC2H 7NA' ),
('7','Baker Street', 'London', 'NW1 6XE' ),
('8','Camden Town', 'London', 'NW1 0AP' ),
('9','Notting Hill', 'London', 'W11 1HA' ),
('10','Shoreditch', 'London', 'E1 6PU' );

INSERT INTO Address (building_num_or_name, street, city, postcode)
VALUES
('Stanely House','Oxford Street', 'London', 'W1A 1AA');

CREATE TABLE `Address` (
  `address_id` <type>,
  `country` <type>,
  `city` <type>,
  `address_line` <type>,
  `building_number` <type>,
  `postcode` <type>,
  PRIMARY KEY (`address_id`)
);