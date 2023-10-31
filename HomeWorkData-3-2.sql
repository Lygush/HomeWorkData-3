SELECT song_name, song_duration
FROM song
ORDER BY song_duration DESC
LIMIT 1;

SELECT song_name
FROM song
WHERE song_duration >= 210;

SELECT collection_name
FROM collection 
WHERE collection_release  BETWEEN DATE('2018-01-01') AND DATE('2020-12-31');

SELECT artist_name
FROM artist 
WHERE artist_name NOT LIKE ('% %');

SELECT song_name 
FROM song
WHERE song_name LIKE ('%You%');
