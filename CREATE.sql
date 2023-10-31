CREATE TABLE IF NOT EXISTS Artist(
	id SERIAL PRIMARY KEY,
	artist_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre( 
	id SERIAL PRIMARY KEY, 
	genre_name VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Artist_genre(
	artist_id INTEGER REFERENCES Artist(id),
	genre_id INTEGER REFERENCES Genre(id),
	CONSTRAINT artist_genre_pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Album(
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(30) NOT NULL,
	album_release date
);

CREATE TABLE IF NOT EXISTS Artist_album(
	artist_id INTEGER REFERENCES Artist(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT artist_album_pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Song(  
	id SERIAL PRIMARY KEY,
	album_id INTEGER UNIQUE REFERENCES Album(id),
	song_name VARCHAR(30) NOT NULL,
	song_duration FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection(
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(30) NOT NULL,
	collection_release DATE
);

CREATE TABLE IF NOT EXISTS Collection_song(
	collection_id INTEGER REFERENCES Collection(id),
	song_id INTEGER REFERENCES Song(id),
	CONSTRAINT collection_song_pk PRIMARY KEY (collection_id, song_id)
);


