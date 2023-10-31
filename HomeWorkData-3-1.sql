INSERT INTO artist
VALUES (1,'AC / DC'), (2,'Nirvana'), (3,'Пилот'), (4,'Misfits')

INSERT INTO genre (genre_name)
VALUES ('Hard rock'), ('Alternative rock'), ('Punk rock')

INSERT INTO artist_genre
VALUES (1, 1),
	   (2, 1), (2, 2), (2, 3),
	   (3, 1), (3, 2), (3, 3),
	   (4, 3)
	   
INSERT INTO album (album_name, album_release)
VALUES ('American Psycho', '1997-05-13'), 
 	   ('Highway to Hell', '1979-07-27'),
 	   ('Nevermind', '1991-09-24'),
 	   ('Осень', '2011-09-01')
 	   
INSERT INTO artist_album 
VALUES (1,2),
	   (2,3),
	   (3,4),
	   (4,1)
	   
INSERT INTO song (album_id, song_name, song_duration)
VALUES (1, 'Dig Up Her Bones', 181),
	   (1, 'Speak Of The Devil', 107),
	   (1, 'Crimson Ghost', 121),
	   (2, 'Highway to Hell', 208),
	   (2, 'Touch Too Much', 266),
	   (3, 'Smells Like Teen Spirit',301),
	   (3, 'Come As You Are', 218),
	   (4, 'Осень', 185),
	   (4, 'Двор', 186)
	   
INSERT INTO collection (collection_name, collection_release)
VALUES ('Коллекция AC/DC', '1996-11-09'),
	   ('Коллекция Nirvana', '1998-05-10'),
	   ('Коллекция Misfits', '1992-06-14'),
	   ('Коллекция AC/DC && Misfits', '2019-08-22')
	   
INSERT INTO collection_song 
VALUES (1, 13), (1, 14),
	   (2, 15), (2, 16),
	   (3, 10), (3, 11), (3, 12)

	   
INSERT INTO collection (collection_name, collection_release)
VALUES ('Коллекция AC/DC && Misfits', '2019-08-22')

INSERT INTO collection_song 
VALUES (4, 13), (4, 14), (4, 10), (4, 11), (4, 12)



