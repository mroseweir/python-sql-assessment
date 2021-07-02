-- Artist Table

-- Select 10 artists in reverse alphabetical order.

SELECT name FROM artist
ORDER BY name DESC LIMIT 10;

-- Select all artists that start with the word ‘Black’.

SELECT name FROM artist 
WHERE name LIKE 'Black%';

-- Select all artists that contain the word ‘Black’.

SELECT name FROM artist 
WHERE name LIKE '%Black%';

-- Employee Table

-- Find the birthdate for the youngest employee.

SELECT MAX(birth_date) FROM employee;

-- Find the birthdate for the oldest employee.

SELECT MIN(birth_date) FROM employee;

-- Invoice Table

-- Count how many orders were in CA, TX, or AZ (use IN).

SELECT SUM(total) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Get the average total of the orders.

SELECT AVG(total) FROM invoice;
-- OR (depending on if the question was asking for avg from all orders, or avg from CA, TX and AZ--
SELECT AVG(total) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- More Join Queries

-- Get all playlist_track track_ids where the playlist name is Music.

SELECT playlist_track.track_id, playlist.name 
FROM playlist_track
JOIN playlist
ON playlist_track.track_id = playlist.playlist_id
WHERE playlist.name = 'Music';

-- Get all track names for playlist_id 5.

SELECT track.name, playlist_track.playlist_id
FROM track
JOIN playlist_track
ON playlist_track.track_id = track.track_id
WHERE playlist_id = 5;

-- Get all track names and the playlist name that they’re on ( 2 joins ).

SELECT track.name, playlist.name
FROM track
JOIN playlist_track
	ON track.track_id = playlist_track.track_id
JOIN playlist
	ON playlist_track.playlist_id = playlist.playlist_id;

-- Get all track names and album titles that are the genre Alternative & Punk ( 2 joins ).

SELECT track.name, album.title
FROM track
JOIN album
	ON track.album_id = album.album_id
JOIN genre
	ON genre.genre_id = track.genre_id
WHERE genre.name = 'Alternative & Punk';