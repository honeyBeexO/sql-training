USE paw_db;

CREATE TABLE IF NOT EXISTS Member (
  member_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100),
  phone_number VARCHAR(20),
  date_of_birth DATE,
  sex CHAR(1) NOT NULL DEFAULT 'F',
  date_joined DATE NOT NULL,
  PRIMARY KEY (member_id)
);