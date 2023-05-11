/*  Intermediate SQL */

/* 1) Selecting Data */

-- The number of records containing a film_id.
SELECT COUNT(film_id) AS count_film_id
FROM reviews;

-- Count the number of records in the people table
SELECT COUNT(*) AS count_records
FROM people;

-- Count the number of birthdates in the people table
SELECT COUNT(birthdate) AS count_birthdate
FROM people;

-- Count the languages and countries represented in the films table
SELECT COUNT(language) AS count_languages, COUNT(country) AS count_countries
FROM films;

-- Return the unique countries from the films table
SELECT DISTINCT country
FROM films;

-- Count the distinct countries from the films table
SELECT COUNT(DISTINCT country) AS count_distinct_countries
FROM films;

-- Debug this code
SELECT certification
FROM films
LIMIT 5;

-- Debug this code
SELECT film_id, imdb_score, num_votes
FROM reviews;

-- Debug this code
SELECT COUNT(birthdate) AS count_birthdays
FROM people;

-- Rewrite this query
SELECT 
    person_id, 
    role 
FROM roles 
LIMIT 10;

/* 2) Filtering Records */

-- Select film_ids and imdb_score with an imdb_score over 7.0
SELECT 
    film_id, 
    imdb_score
FROM reviews
WHERE imdb_score > 7.0;

-- Select film_ids and facebook_likes for ten records with less than 1000 likes 
SELECT 
    film_id, 
    facebook_likes
FROM reviews
WHERE facebook_likes < 1000
LIMIT 10;

-- Count the records with at least 100,000 votes
SELECT COUNT(*) AS films_over_100K_votes
FROM reviews
WHERE num_votes >= 100000;

-- Count the Spanish-language films
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';

-- Select the title and release_year for all German-language films released before 2000
SELECT
    title,
    release_year
FROM films
WHERE language = 'German' 
AND release_year < 2000;

-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM films
WHERE release_year > 2000
AND language = 'German';

-- Select all records for German-language films released after 2000 and before 2010
SELECT *
FROM films
WHERE release_year 
BETWEEN 2001 AND 2009
AND language = 'German';

-- Find the title and year of films from the 1990 or 1999
SELECT title, release_year
FROM films
WHERE release_year = 1990
OR release_year = 1999;

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
AND (language = 'English' OR language = 'Spanish');

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
AND (gross > 2000000);

-- Select the title and release_year for films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000;

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
-- Narrow down your query to films with budgets > $100 million
AND budget > 100000000;

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
-- Restrict the query to only Spanish-language films
AND language = 'Spanish';

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
-- Amend the query to include Spanish or French-language films
AND (language = 'Spanish' OR language = 'French');

-- Select the names that start with B
SELECT name
FROM people
WHERE name LIKE 'B%';

SELECT name
FROM people
-- Select the names that have r as the second letter
WHERE name LIKE '_r%';

SELECT name
FROM people
-- Select names that don't start with A
WHERE name NOT LIKE 'A%';

-- Find the title and release_year for all films over two hours in length released in 1990 and 2000
SELECT title, release_year
FROM films
WHERE duration > 120
AND release_year IN (1990, 2000);

-- Find the title and language of all films in English, Spanish, and French
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');

-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17', 'R')
AND language IN ('English', 'Italian', 'Greek');

-- Count the unique titles
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE release_year BETWEEN 1990 AND 1999
-- Filter to English-language films
AND language = 'English'
-- Narrow it down to G, PG, and PG-13 certifications
AND certification IN ('G', 'PG', 'PG-13');

-- List all film titles with missing budgets
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;

-- Count the number of films we have language data for
SELECT COUNT(*) AS count_language_known
FROM films
WHERE language IS NOT NULL;

/* 3) Aggregate Functions */

-- Query the sum of film durations
SELECT SUM(duration) AS total_duration
FROM films;

-- Calculate the average duration of all films
SELECT AVG(duration) AS average_duration
FROM films;

-- Find the latest release_year
SELECT MAX(release_year) AS latest_year
FROM films;

-- Find the duration of the shortest film
SELECT MIN(duration) AS shortest_film
FROM films;

