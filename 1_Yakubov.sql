--1 Задание. Якубов 2282

CREATE TABLE student(
id serial PRIMARY KEY,
name varchar(255) NOT NULL,
surname varchar(255) NOT NULL,
address varchar(3000),
n_group int CHECK (n_group >=1000 and n_group <=9999),
score real CHECK (score >=2 and score <=5));

CREATE TABLE hobby(
id serial PRIMARY KEY,
name varchar(255),
risk int);

CREATE TABLE student_hobby(
student_id int NOT NULL REFERENCES student(id),
hobby_id int NOT NULL REFERENCES hobby(id),
started_at date,
finished_at date);