-- 01 Selecting Rows

USE world;
SELECT 'Hello, World';
SELECT 1 + 2;
SELECT * FROM Country;
SELECT * FROM Country ORDER BY Name;
SELECT Name, LifeExpectancy FROM Country ORDER BY Name;
SELECT Name, LifeExpectancy AS "Life Expectancy" FROM Country ORDER BY Name;
SELECT COUNT(*) FROM Country;
SELECT * FROM Country ORDER BY Name LIMIT 5;
SELECT * FROM Country ORDER BY Name LIMIT 5, 5;
SELECT * FROM Country ORDER BY Name LIMIT 10, 5;

-- 02 Selecting Columns

USE world;
SELECT * FROM Country ORDER BY Code;
SELECT Name, Code, Region, Population FROM Country ORDER BY Code;
SELECT Name AS Country, Code AS ISO, Region, Population AS Pop FROM Country ORDER BY Code;

-- 03 Counting Rows

USE world;
SELECT COUNT(*) FROM Country;
SELECT COUNT(*) FROM Country WHERE Population > 1000000;
SELECT COUNT(*) FROM Country WHERE Population > 100000000;
SELECT COUNT(*) FROM Country WHERE Population > 100000000 AND Continent = 'Europe' ;
SELECT COUNT(*) FROM Country;
SELECT COUNT(LifeExpectancy) FROM Country;

-- 04 Inserting Data

USE scratch;
SELECT * FROM customer;
INSERT INTO customer (name, address, city, state, zip) VALUES ('Fred Flintstone', '123 Cobblestone Way', 'Bedrock', 'CA', '91234');
INSERT INTO customer (name, city, state) VALUES ('Jimi Hendrix', 'Renton', 'WA');
SELECT * FROM customer;

-- 07 Updating Data

USE scratch;
SELECT * FROM customer;
SELECT * FROM customer WHERE name LIKE 'Jimi%';
UPDATE customer SET address = '123 Music Avenue', zip = '98056' WHERE name LIKE 'Jimi%';
UPDATE customer SET address = '987 Mockingbird Lane' WHERE name LIKE 'Jimi%';
UPDATE customer SET address = NULL, zip = NULL WHERE name LIKE 'Jimi%';

-- 05 Deleting Data

USE scratch;

CREATE TABLE test ( a INT, b VARCHAR(16), c VARCHAR(16) );
INSERT INTO test VALUES ( 1, 'this', 'right here!' );
INSERT INTO test VALUES ( 2, 'that', 'over there!' );
INSERT INTO test VALUES ( 3, 'another', 'nowhere.' );
INSERT INTO test VALUES ( 4, 'again', 'guess where?' );
INSERT INTO test VALUES ( 1, 'one more', 'everywhere!' );

SELECT * FROM test;
DELETE FROM test WHERE a = 2;
DELETE FROM test WHERE a = 1;
DELETE FROM test;
SELECT * FROM test;

DROP TABLE test;

SELECT * FROM customer;
SELECT * FROM customer WHERE name LIKE 'Jimi%' OR name LIKE 'Fred%';
DELETE FROM customer WHERE name LIKE 'Jimi%' OR name LIKE 'Fred%';
SELECT * FROM customer;

-- 06 Joining queries

USE album;
SELECT * FROM album;
SELECT * FROM track;

SELECT a.artist AS Artist, a.title AS Album, t.track_number AS 'Track Num',
    t.title AS Track, t.duration AS Seconds
  FROM album AS a
  JOIN track AS t ON a.id = t.album_id
  ORDER BY a.artist, a.title, t.track_number;

-- 07 Finding databases, tables, and columns

USE scratch;
SHOW databases;
SHOW tables;
DESCRIBE item;

-- 08 create table

USE scratch;

CREATE TABLE test (
    id INT,
    name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state CHAR(2),
    zip CHAR(10)
);

DESCRIBE test;
SHOW TABLE STATUS;
SHOW CREATE TABLE test;

DROP TABLE IF EXISTS test;

-- 09 date and time

USE scratch;
SELECT NOW();
SELECT UTC_TIMESTAMP();

-- 010 enum

USE scratch;

DROP TABLE IF EXISTS test;
CREATE TABLE test (
  id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
  a ENUM( 'Pablo', 'Henri', 'Jackson' )
);
INSERT INTO test ( a ) VALUES ( 'Pablo' );
INSERT INTO test ( a ) VALUES ( 'Henri' );
INSERT INTO test ( a ) VALUES ( 'Jackson' );
INSERT INTO test ( a ) VALUES ( 1 );
INSERT INTO test ( a ) VALUES ( 2 );
INSERT INTO test ( a ) VALUES ( 3 );
SELECT * FROM test;

DROP TABLE IF EXISTS test;
CREATE TABLE test (
  id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
  a SET( 'Pablo', 'Henri', 'Jackson' )
);
INSERT INTO test ( a ) VALUES ( 'Pablo' );
INSERT INTO test ( a ) VALUES ( 'Henri' );
INSERT INTO test ( a ) VALUES ( 'Jackson' );
INSERT INTO test ( a ) VALUES ( 'Pablo,Jackson,Henri,Henri,Henri' );
INSERT INTO test ( a ) VALUES ( 1 );
INSERT INTO test ( a ) VALUES ( 2 );
INSERT INTO test ( a ) VALUES ( 3 );
INSERT INTO test ( a ) VALUES ( 4 );
INSERT INTO test ( a ) VALUES ( 5 );
INSERT INTO test ( a ) VALUES ( 6 );
INSERT INTO test ( a ) VALUES ( 7 );
SELECT * FROM test;

DROP TABLE IF EXISTS test;

-- 11 regular expressions

USE world;
SELECT Name FROM country WHERE Name RLIKE 'y$' ORDER BY Name;
SELECT Name FROM country WHERE Name RLIKE '[xy][ai]' ORDER BY Name;

-- 12 trimming and padding

USE scratch;
SELECT * FROM customer WHERE name LIKE '  Bill Smith  ';
SELECT * FROM customer WHERE name LIKE TRIM('  Bill Smith  ');
SELECT CONCAT(':', RTRIM('  Bill Smith  '), ':');
SELECT CONCAT(':', LTRIM('  Bill Smith  '), ':');

-- 13 case conversion
USE scratch;
SELECT UPPER(name) FROM customer;
SELECT LOWER(name) FROM customer;