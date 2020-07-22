show databases;

USE students;

/* The name of the original SQL db is "students", which contains a single table called "tekcamp01" */

/* Below is for Part 1, 2, 3 & 4 */

CREATE DATABASE IF NOT EXISTS `tc1-George-Torres`;

USE `tc1-George-Torres`;

CREATE TABLE IF NOT EXISTS tekcampers (
id int(11) AUTO_INCREMENT PRIMARY KEY, 
first_name varchar(20), 
last_name varchar(20), 
gender char(1), 
education varchar(20));


INSERT INTO `tc1-George-Torres`.tekcampers
(id, first_name, last_name, gender, education)
SELECT id, first_name, last_name, gender, education
FROM students.tekcamp01; 

SELECT * FROM tekcampers;


/* Below is for Part 5 */
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Aaron", "White", 'M', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Cody", "Clark", 'M', "Some College");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Devon", "Brewster", 'M', "Some College");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Gotham", "Katta", 'M', "Bachelors Degree");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("John", "Bozarov", 'M', "Bachelors Degree");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("John", "Kol", 'M', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Justin", "Cheng", 'M', "Some College");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Kevin", "Keesee", 'M', "High School Diploma");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Monica", "Howard", 'F', NULL);
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Tyler", "Clements", 'M', "Bachelors Degree");
INSERT INTO tekcampers(first_name, last_name, gender, education)
VALUES("Vimala", "Murthy", 'F', "Masters Degree");

SELECT * FROM tekcampers;


/* Below is for Part 6 */
DELETE FROM `tc1-George-Torres`.`tekcampers` WHERE (`id` = '26');
DELETE FROM `tc1-George-Torres`.`tekcampers` WHERE (`id` = '9');
DELETE FROM `tc1-George-Torres`.`tekcampers` WHERE (`id` = '20');

SELECT * FROM tekcampers;

/* Below is for Part 7 */
/* Below swaps values of gender and education columns. */
UPDATE `tc1-George-Torres`.tekcampers s1, `tc1-George-Torres`.tekcampers s2 SET s1.gender=s1.education, s1.education=s2.gender
WHERE s1.id=s2.id && s1.id < 28;

/* Below statements update the existing records after the columns have been swapped to represent the proper values. */
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
WHERE id=25;


/* Below is for Part 8 */
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


/* Below is for Part 9 */
CREATE TABLE IF NOT EXISTS `ta-dylan` (
id int(11) AUTO_INCREMENT PRIMARY KEY, 
first_name varchar(20), 
last_name varchar(20), 
gender char(1), 
education varchar(20));

/* Below this line inserts the students specific to the TA Dylan. */
INSERT INTO `tc1-George-Torres`.`ta-dylan`
(id, first_name, last_name, gender, education)
SELECT id, first_name, last_name, gender, education
FROM `tc1-George-Torres`.tekcampers
WHERE id=15 OR id=4 OR id=33 OR id=11 OR id=18 OR id=3 OR id=10 OR id=14 OR id=13 OR id=5 OR id=19 OR id=38;

SELECT * FROM `ta-dylan`;


/* Below is for Part 10 */
CREATE TABLE IF NOT EXISTS hobbies (
id int(11) AUTO_INCREMENT PRIMARY KEY, 
hobby varchar(20));

INSERT INTO hobbies(hobby)
VALUES
    ("Reading"),
    ("Motorcycle Riding"),
    ("Gaming"),
    ("Golfing"),
    ("Cattle Rustling"),
    ("Gardening"),
    ("Aerial Yoga"),
    ("Running"),
    ("Working Out"),
    ("Pickle Ball"),
    ("Engineering"),
    ("Jiu Jitsu"),
    ("Writing"),
    ("Cooking"),
    ("Eating"),
    ("Music Listening"),
    ("Soccer"),
    ("Hockey"),
    ("longboarding"),
    ("Reading"),
    ("Growing Peppers");
    
ALTER TABLE `tc1-George-Torres`.`tekcampers` 
ADD COLUMN hobby_id int(11);

ALTER TABLE `tc1-George-Torres`.`tekcampers` 
ADD FOREIGN KEY (hobby_id) REFERENCES hobbies(id);

UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '1' WHERE (`id` = '1');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '5' WHERE (`id` = '2');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '16' WHERE (`id` = '4');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '11' WHERE (`id` = '5');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '4' WHERE (`id` = '6');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '12' WHERE (`id` = '7');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '15' WHERE (`id` = '8');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '2' WHERE (`id` = '10');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '13' WHERE (`id` = '11');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '10' WHERE (`id` = '12');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '9' WHERE (`id` = '14');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '3' WHERE (`id` = '15');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '17' WHERE (`id` = '16');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '7' WHERE (`id` = '17');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '3' WHERE (`id` = '18');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '14' WHERE (`id` = '29');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '17' WHERE (`id` = '32');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '3' WHERE (`id` = '35');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '1' WHERE (`id` = '19');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '19' WHERE (`id` = '21');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '18' WHERE (`id` = '25');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '8' WHERE (`id` = '31');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '15' WHERE (`id` = '34');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '21' WHERE (`id` = '37');
UPDATE `tc1-George-Torres`.`tekcampers` SET `hobby_id` = '6' WHERE (`id` = '38');
   
    

SELECT * FROM hobbies;


/* Below is for Part 11 - Note there is also a photo */
SELECT CONCAT(tekcampers.first_name, ' ', tekcampers.last_name) as full_name, hobbies.hobby
FROM tekcampers INNER JOIN hobbies
ON tekcampers.hobby_id=hobbies.id;


/* Below is for Part 12 & 13 */
ALTER TABLE tekcampers
ADD bootcamp VARCHAR(25);

ALTER TABLE `ta-dylan`
ADD bootcamp VARCHAR(25);

SELECT * FROM tekcampers;
