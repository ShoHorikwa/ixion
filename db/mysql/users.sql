CREATE TABLE mydb.users
(
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    birthday DATE,
    age INT(3),
    email VARCHAR(255),
    PRIMARY KEY (id)
);