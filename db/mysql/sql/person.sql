DROP SCHEMA IF EXISTS experimental_db;
CREATE SCHEMA experimental_db;
USE experimental_db;

DROP TABLE IF EXISTS person;

CREATE TABLE person
(
    id VARCHAR(36) NOT NULL,
    name VARCHAR(255),
    birthday DATE,
    email VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO person (id, name, birthday, email) VALUES (uuid(), "新井 淳一", '1990-04-01', 'arai@sample.com');
INSERT INTO person (id, name, birthday, email) VALUES (uuid(),"伊藤 広", '1991-06-23', 'ito@sample.com');
INSERT INTO person (id, name, birthday, email) VALUES (uuid(),"宇都宮 隆", '1995-06-07', 'utsunomiya@sample.com');
INSERT INTO person (id, name, birthday, email) VALUES (uuid(),"江本 裕美", '1990-11-12', 'emoto@sample.com');
INSERT INTO person (id, name, birthday, email) VALUES (uuid(),"緒方 恵美", '1996-12-01', 'ogata@sample.com');