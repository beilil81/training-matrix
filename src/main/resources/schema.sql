CREATE database trainingmatrixdb;

Use trainingmatrixdb;

DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS course_type;
DROP TABLE IF EXISTS intern;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS trainer;

CREATE TABLE course_type (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  type_title VARCHAR(250) NOT NULL
);

CREATE TABLE trainer (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  address VARCHAR(250) NOT NULL,
  phone VARCHAR(250) NOT NULL,
  email VARCHAR(250) NOT NULL
);
 CREATE TABLE course (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  id_type VARCHAR(250) NOT NULL,
  id_trainer VARCHAR(250) NOT NULL,
  title VARCHAR(250) NOT NULL,
  description VARCHAR(250) DEFAULT NULL,
  start_date DATE DEFAULT NULL,
  end_date DATE DEFAULT NULL
);

CREATE TABLE intern (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  email_person VARCHAR(250) NOT NULL
);

CREATE TABLE review (
  course_id VARCHAR(250) NOT NULL,
  intern_id VARCHAR(250) NOT NULL,
  created_on DATE NOT NULL,
  score INT NOT NULL,
  PRIMARY KEY (course_id, intern_id)
);
