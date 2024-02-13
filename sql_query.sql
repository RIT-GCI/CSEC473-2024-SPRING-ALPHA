-- SQL query for karoake

CREATE USER IF NOT EXISTS 'FreeBird'@'localhost' IDENTIFIED BY 'password1';
CREATE USER IF NOT EXISTS 'CountryRoads'@'localhost' IDENTIFIED BY 'password1';
CREATE USER IF NOT EXISTS 'SweetCaroline'@'localhost' IDENTIFIED BY 'password1';
-- Add more users as needed Change the users and passwords when going into production

-- GRanting permissions for the users (Test Users. Need to change)
GRANT ALL PRIVILEGES ON *.* TO 'FreeBird'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'CountryRoads'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'SweetCaroline'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'GrayScoring'@'localhost';

-- Table for Songs
CREATE TABLE IF NOT EXISTS Songs (
    SongID INT PRIMARY KEY,
    Title NVARCHAR(255),
    Artist NVARCHAR(255),
    Genre NVARCHAR(100)
);


-- Table for Song Requests
CREATE TABLE IF NOT EXISTS Tabs (
    TabID INT PRIMARY KEY,
    tabName NVARCHAR(255),
    Amount INT
);

--Table for Website Credentials 
CREATE TABLE IF NOT EXISTS Credentials ( 
	Username NVARCHAR(255), 
	Password NVARCHAR(255)
); 

-- Additional tables can go below, unsure of what else. 



-- Sample Data 
INSERT INTO Songs (SongID, Title, Artist)
VALUES 
    (1, 'Song1', 'Artist1'),
    (2, 'Song2', 'Artist2'),
    (3, 'Song3', 'Artist3');


INSERT INTO Tabs (TabsID, tabName, AMOUNT)
VALUES 
    (1, 'Tab1', '100'),
    (2, 'Tab2', '200'),
    (3, 'Tab3', '300');

