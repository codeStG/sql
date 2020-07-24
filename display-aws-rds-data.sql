/* This is the query that displays all of the data from the AWS RDS instance. 
INSTRUCTIONS: 
In order to log in to the AWS RDS instance and run this query to get the data, you must access the AWS RDS at module11bonus.cji02v1qdbcw.us-east-2.rds.amazonaws.com with the username admin
This can be achieved by using the command:  mysql -u admin -p -h module11bonus.cji02v1qdbcw.us-east-2.rds.amazonaws.com
When prompted, enter the password: TEKcamp1

When inside of the AWS RDS instance, run this .sql file using the command: source display-aws-rds-data.sql
You have successfully queried the database!
*/
USE `tc1-George-Torres`;

SELECT * FROM tekcampers
LEFT JOIN hobbies
ON hobbies.id=tekcampers.hobby_id;