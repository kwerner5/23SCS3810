-- CS3810: Principles of Database Systems
-- Instructor: Thyago Mota
-- Description: The astronauts database

CREATE DATABASE astronauts;

\c astronauts

CREATE TABLE Astronauts (
    id SERIAL PRIMARY KEY,
    lastName VARCHAR(25) NOT NULL,
    firstName VARCHAR(25) NOT NULL,
    suffix CHAR(10),
    gender CHAR(1) NOT NULL,
    birth DATE NOT NULL,
    city VARCHAR(25),
    state CHAR(2), 
    country VARCHAR(25),
    status VARCHAR(15),
    daysInSpace INT NOT NULL,
    flights INT NOT NULL
);

\copy Astronauts from /var/lib/postgresql/data/astronauts.csv
can try: D:\Spring2023\CS3810\Code\Activities\activity_10_astronauts\sql

a) the total number of astronauts. 

b) the total number of American astronauts. 

c) the list of nationalities of all astronauts in alphabetical order. 
SELECT DISTINCT country FROM Astronauts ORDER BY 1;

d) all astronaut names ordered by last name (use the format Last Name, First Name, Suffix to display the names). //removed the suffix from the command since he was getting a lot of nulls. Might be able to do a conditional...?
SELECT CONCAT(lastName, ', ', firstName) AS name FROM Astronauts ORDER BY 1;

e) the total number of astronauts by gender. 
SELECT COUNT(*) AS total FROM Astronauts GROUP BY gender;

f) the total number of female astronauts that are still active. 

g) the total number of American female astronauts that are still active. 

h) the list of all American female astronauts that are still active ordered by last name (use the same name format used in d). 

i) the list of Chinese astronauts, displaying only their names and ages (use the same name format used in d). 

j) the total number of astronauts by country. 

k) the total number of American astronauts per state ordered by the totals in
descending order. 

l) the total number of astronauts by statuses (i.e., active or retired). 

m) name and age of all non-American astronauts in alphabetical order (use the same name format used in d). 

n) the average age of all American astronauts that are still active. 