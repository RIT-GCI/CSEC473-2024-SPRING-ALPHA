-- SQL query for karoake

CREATE USER IF NOT EXISTS 'FreeBird'@'localhost' IDENTIFIED BY 'password1';
CREATE USER IF NOT EXISTS 'CountryRoads'@'localhost' IDENTIFIED BY 'password1';
CREATE USER IF NOT EXISTS 'SweetCaroline'@'localhost' IDENTIFIED BY 'password1';

-- Remote user for to login with WEBSERVER IP ADDRESS. NOT DATABASE ADDRESS
CREATE USER IF NOT EXISTS 'GrayWebserver'@'192.168.3.10' IDENTIFIED BY 'password1'; 

-- Add more users as needed Change the users and passwords when going into production

-- GRanting permissions for the users (Test Users. Need to change)
GRANT ALL PRIVILEGES ON *.* TO 'FreeBird'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'CountryRoads'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'SweetCaroline'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'GrayScoring'@'localhost';


GRANT ALL PRIVILEGES ON *.* TO 'GrayWebserver'@'192.168.3.10' WITH GRANT OPTION; -- WEBSERVER ADDRESS. NOT DATABASE ADDRESS
FLUSH PRIVILEGES;

-- Table for Website Credentials
CREATE TABLE IF NOT EXISTS Credentials (
        id INT AUTO_INCREMENT PRIMARY KEY,
        username NVARCHAR(255) NOT NULL,
        password NVARCHAR(255) NOT NULL
        );

-- Table for Songs
CREATE TABLE IF NOT EXISTS Songs (
            SongID INT AUTO_INCREMENT PRIMARY KEY,
            Title NVARCHAR(255),
            Artist NVARCHAR(255)
            
        );


        -- Table for Song Requests
CREATE TABLE IF NOT EXISTS Tabs (
            TabID INT AUTO_INCREMENT PRIMARY KEY,
            tabName NVARCHAR(255),
            AMOUNT NVARCHAR(255)
        );

        -- Additional tables can go below, unsure of what else.



-- Sample Data for Competition 
INSERT IGNORE INTO Songs (Title, Artist)
VALUES
    	('Highway to Hell', 'ACDC'),
    	('What a Wonderful World', 'Louis Armstrong'),
	('Southern Nights', 'Glenn Campbell'),
	('FreeBird', 'Lynrd Skynrd'),
	('Black Betty', 'Spiderbait'),
	('Fortunate Son', 'CCR'),
	('The Boys Are Back in Town','Thin Lizzy'),
	('Take Me Home, Country Roads', 'John Denver'),
	('Ballroom Blitz', 'Sweet');


INSERT IGNORE INTO Tabs (tabName, AMOUNT)
VALUES
    ('Samson', '80'),
    ('Johnson', '72'),
    ('Lychee', '98'),
    ('Pearson','93'),
    ('BlueSky', '105');





INSERT IGNORE INTO Credentials(username, password)
VALUES
    ('remote', 'jFASdfe12556'), 
    ('SweetCaroline', 'aivhaljkrhew7355608'),
    ('FreeBird', 'P4ssw5rd1?'),
    ('CountryRoads', 'FAJADa71AddR'),
    ('melody', 'Pivota4367');

