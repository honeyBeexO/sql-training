USE paw_database;


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

CREATE TABLE IF NOT EXISTS Address (
  address_id INT NOT NULL AUTO_INCREMENT,
  country VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  street VARCHAR(255),
  postcode VARCHAR(10) NOT NULL,
  PRIMARY KEY (address_id)
);
CREATE TABLE IF NOT EXISTS Address (
  address_id INT NOT NULL AUTO_INCREMENT,
  country VARCHAR(100) DEFAULT 'United Kingdom',
  city VARCHAR(100) NOT NULL,
  address_line VARCHAR(100) NOT NULL,
  building_number SMALLINT,
  postcode VARCHAR(10) NOT NULL,
  PRIMARY KEY (address_id),
  UNIQUE KEY (country, city, postcode, address_line, building_number)
);
CREATE TABLE IF NOT EXISTS Branch (
  branch_id SMALLINT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  address_id INT NOT NULL UNIQUE,
  PRIMARY KEY (branch_id),
  CONSTRAINT address_fk FOREIGN KEY(address_id) REFERENCES Address (address_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Employee (
  employee_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  date_of_birth DATE NULL,
  sex CHAR(1) NOT NULL DEFAULT 'F',
  email VARCHAR(100),
  phone_number VARCHAR(20),
  address_id INT NOT NULL,
  supervisor_id INT NULL,
  PRIMARY KEY (employee_id),
  CONSTRAINT suppervisor_id FOREIGN KEY (supervisor_id) REFERENCES Employee(employee_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Subscription (
  subscription_id INT NOT NULL AUTO_INCREMENT,
  subscription_type VARCHAR(10) NOT NULL,
  amount DECIMAL(2,2) NOT NULL,
  starting_date DATE NOT NULL,
  end_date DATE NOT NULL,
  member_id INT NOT NULL,
  PRIMARY KEY (subscription_id),
  CONSTRAINT member_fk FOREIGN KEY(member_id) REFERENCES Member(member_id) ON DELETE CASCADE,
  CONSTRAINT subscription_type_check CHECK (subscription_type IN ('basic','premium')),
  CONSTRAINT subscription_amount_check 
    CHECK (
        (subscription_type = 'basic' AND amount = 20.00) OR 
        (subscription_type = 'premium' AND amount = 50.00)
    ),
  CONSTRAINT subscription_dates_check CHECK (
    end_date > starting_date 
    AND 
    end_date = DATE_ADD(starting_date, INTERVAL 1 YEAR)
    )
);
