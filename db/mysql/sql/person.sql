DROP SCHEMA IF EXISTS experimental_db;
CREATE SCHEMA experimental_db;
USE experimental_db;

DROP TABLE IF EXISTS person;

CREATE TABLE person
(
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    birthday DATE,
    age INT(3),
    email VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO person (name, birthday, age, email) VALUES ("新井 淳一", '1990-04-01', 31, 'arai@sample.com');
INSERT INTO person (name, birthday, age, email) VALUES ("伊藤 広", '1991-06-23', 31, 'ito@sample.com');
INSERT INTO person (name, birthday, age, email) VALUES ("宇都宮 隆", '1995-06-07', 27, 'utsunomiya@sample.com');
INSERT INTO person (name, birthday, age, email) VALUES ("江本 裕美", '1990-11-12', 31, 'emoto@sample.com');
INSERT INTO person (name, birthday, age, email) VALUES ("緒方 恵美", '1996-12-01', 25, 'ogata@sample.com');