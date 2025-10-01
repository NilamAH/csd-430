-- File: csd430_movies.sql
-- Create Database
CREATE DATABASE IF NOT exists csd430;
USE csd430;

-- Create table
DROP TABLE IF EXISTS nilam_movies_data;

CREATE TABLE nilam_movies_data (
movie_id int auto_increment primary key,
title varchar(100) not null,
director varchar(100) not null,
genre varchar(50),
release_year int,
rating decimal(2,1)
);

-- Insert Records (10 rows)
INSERT INTO nilam_movies_data (title, director, genre, release_year, rating) VALUES
('Inception', 'Christopher Nolan', 'Sci-Fi', 2010, 4.8),
('The Matrix', 'Wachowski Sisters', 'Sci-Fi', 1999, 4.7),
('The Lion King', 'Roger Allers', 'Animation', 1994, 4.5),
('Black Panther', 'Ryan Coogler', 'Action', 2018, 4.3),
('Pride and Prejudice', 'Joe Wright', 'Romance', 2005, 4.6),
('Parasite', 'Bong Joon-ho', 'Thriller', 2019, 4.9),
('Spirited Away', 'Hayao Miyazaki', 'Animation', 2001, 4.8),
('Interstellar', 'Christopher Nolan', 'Sci-Fi', 2014, 4.7),
('Avengers: Endgame', 'Anthony & Joe Russo', 'Action', 2019, 4.6),
('The Notebook', 'Nick Cassavetes', 'Romance', 2004, 4.2);
