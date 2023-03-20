--  Create database hbnb_test_db, 
--  Create the MySQL server user hbnb_dev
--  Grants all privileges for hbnb_dev on hbnb_dev_db.
--  Grants SELECT privilege for hbnb_dev on performance_schema.

CREATE DATABASE IF NOT EXISTS hbnb_test_db;
CREATE USER
	IF NOT EXISTS 'hbnb_test'@'localhost'
	IDENTIFIED BY 'hbnb_test_pwd';
GRANT ALL PRIVILEGES
	ON hbnb_dev_db.*
	TO 'hbnb_test'@'localhost';
GRANT SELECT
	ON performance_schema.*
	TO 'hbnb_test'@'localhost';
FLUSH PRIVILEGES;
