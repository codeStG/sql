show databases;

USE students;

/* The name of the original SQL db is "students", which contains a single table called "tekcamp01" */

CREATE DATABASE IF NOT EXISTS `tc1-George-Torres`;

USE `tc1-George-Torres`;

CREATE TABLE IF NOT EXISTS tekcampers (
id int(11) AUTO_INCREMENT PRIMARY KEY, 
first_name varchar(20), 
last_name varchar(20), 
gender char(1), 
education varchar(20));

/* Below adds all records from students.tekcamp01 to tc1-George-Torres.tekcampers
INSERT INTO `tc1-George-Torres`.tekcampers
(id, first_name, last_name, gender, education)
SELECT id, first_name, last_name, gender, education
FROM students.tekcamp01; */

/* Below swaps values of gender and education columns.
UPDATE `tc1-George-Torres`.tekcampers s1, `tc1-George-Torres`.tekcampers s2 SET s1.gender=s1.education, s1.education=s2.gender
WHERE s1.id=s2.id; */

/* Below this line inserts the missing students. 
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Aaron", "White", 'M', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Cody", "Clark", 'M', "Some College");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Devon", "Brewster", 'M', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Gotham", "Katta", 'M', "Bachelors Degree");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("John", "Bozarov", 'M', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("John", "Kol", 'M', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Justin", "Cheng", 'M', "Some College");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Kevin", "Keesee", 'M', "High School Diploma");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Monica", "Howard", 'F', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Tyler", "Clements", 'M', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Vimala", "Murthy", 'F', "Masters Degree"); */

/* Below removes the records of people that are not students.
DELETE FROM `tc1-George-Torres`.`tekcampers` WHERE (`id` = '26');
DELETE FROM `tc1-George-Torres`.`tekcampers` WHERE (`id` = '9');
DELETE FROM `tc1-George-Torres`.`tekcampers` WHERE (`id` = '20'); */

/* Below SELECT query searches for students whose last names are more than 7 characters long. */
SELECT * FROM tekcampers
WHERE LENGTH(last_name) > 7;

/* Below SELECT query returns students sorted by first_name ascending. */
SELECT * FROM tekcampers
ORDER BY first_name;

/* Below SELECT query returns students sorted by last_name ascending. */
SELECT * FROM tekcampers
ORDER BY last_name;

/* Below SELECT query returns male students. */
SELECT * FROM tekcampers
WHERE gender='M';

/* Below SELECT query returns female students. */
SELECT * FROM tekcampers
WHERE gender='F';

/* Below SELECT query returns students with a Masters Degree. */
SELECT * FROM tekcampers
WHERE education="Masters Degree";

/* Below SELECT query returns students with a Bachelors Degree. */
SELECT * FROM tekcampers
WHERE education="Bachelors Degree";

/* Below SELECT query returns students with an Associates Degree. */
SELECT * FROM tekcampers
WHERE education="Associates Degree";

/* Below SELECT query returns students with no higher education. */
SELECT * FROM tekcampers
WHERE education!="Masters Degree" AND education!="Bachelors Degree" AND education!="Associates Degree" AND education!="Doctorate";

SELECT * FROM tekcampers;

/* Below statements update the existing records.
UPDATE tekcampers
SET education="Bachelors Degree"
WHERE id=1;

UPDATE tekcampers
SET gender='M'
WHERE id=2;

UPDATE tekcampers
SET education="Masters Degree"
WHERE id=3;

UPDATE tekcampers
SET gender='F', education="Bachelors Degree"
WHERE id=4;

UPDATE tekcampers
SET education="Bachelors Degree"
WHERE id=5;

UPDATE tekcampers
SET education="Bachelors Degree"
WHERE id=6;

UPDATE tekcampers
SET education="Some College"
WHERE id=7;

UPDATE tekcampers
SET education="Associates Degree"
WHERE id=8;

UPDATE tekcampers
SET education="Doctorate"
WHERE id=10;

UPDATE tekcampers
SET education="Bachelors Degree"
WHERE id=11;

UPDATE tekcampers
SET education="Some College"
WHERE id=12;

UPDATE tekcampers
SET education="High School Diploma"
WHERE id=14;

UPDATE tekcampers
SET gender='M', education="Some College"
WHERE id=15;

UPDATE tekcampers
SET education="Bachelors Degree"
WHERE id=16;

UPDATE tekcampers
SET education="Associates Degree"
WHERE id=17;

UPDATE tekcampers
SET education="Bachelors Degree"
WHERE id=18;

UPDATE tekcampers
SET education="Some College"
WHERE id=19;

UPDATE tekcampers
SET education="Masters Degree"
WHERE id=21;

UPDATE tekcampers
SET gender='M'
WHERE id=22;

UPDATE tekcampers
SET gender='M', education="Some College"
WHERE id=24;

UPDATE tekcampers
SET gender='F', education="Bachelors Degree"
WHERE id=25; */

CREATE TABLE IF NOT EXISTS `ta-dylan` (
id int(11) AUTO_INCREMENT PRIMARY KEY, 
first_name varchar(20), 
last_name varchar(20), 
gender char(1), 
education varchar(20));

/* Below this line inserts the students specific to the TA Dylan.
INSERT INTO `tc1-George-Torres`.`ta-dylan`
(id, first_name, last_name, gender, education)
SELECT id, first_name, last_name, gender, education
FROM `tc1-George-Torres`.tekcampers
WHERE id=15 OR id=4 OR id=46 OR id=11 OR id=18 OR id=3 OR id=10 OR id=14 OR id=13 OR id=5 OR id=19 OR id=51; */

SELECT * FROM `ta-dylan`;