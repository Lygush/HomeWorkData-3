SELECT genre_name, COUNT(*) FROM artist_genre ag
JOIN genre g ON ag.genre_id = g.id
GROUP BY genre_id, genre_name
ORDER BY genre_id;

SELECT COUNT(*) 
FROM album a
JOIN song s ON s.album_id = a.id
WHERE a.album_release > DATE('1991-01-01') AND a.album_release < DATE('1997-12-31');

SELECT album_name, AVG(song_duration)
FROM song s 
JOIN album a ON a.id = s.album_id 
GROUP BY album_name;

SELECT artist_name
FROM artist_album aa
JOIN album a ON NOT (a.album_release > DATE('2020-01-01') AND a.album_release < DATE('2020-12-31'))
JOIN artist a2 ON a2.id = aa.artist_id AND a.id = aa.album_id;

SELECT DISTINCT(collection_name) 
FROM artist 
JOIN artist_album aa ON aa.artist_id = (SELECT id FROM artist WHERE artist_name = 'Misfits')
JOIN song ON song.album_id = aa.album_id 
JOIN collection_song cs ON cs.song_id = song.id 
JOIN collection c ON c.id = cs.collection_id;



