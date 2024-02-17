-- Создание таблицы

CREATE TABLE IF NOT EXISTS Musical_Genre (
	id SERIAL PRIMARY KEY,
	Genre VARCHAR(80) UNIQUE NOT null
);

CREATE TABLE IF NOT EXISTS Musician_Performer (
	id SERIAL PRIMARY KEY,
	Performer VARCHAR(80) UNIQUE NOT null
);

CREATE TABLE IF NOT EXISTS Genre_Performer (
	id_Genre INTEGER REFERENCES Musical_Genre(id),
	id_Performer INTEGER REFERENCES Musician_Performer(id),
	CONSTRAINT pk PRIMARY KEY (id_Genre, id_Performer)
);

CREATE TABLE IF NOT EXISTS Album_list (
	id SERIAL PRIMARY KEY,
	Year_of_issue INTEGER NOT null,
	Album VARCHAR(120) UNIQUE NOT null
);

CREATE TABLE IF NOT EXISTS Performer_Album (
	id_Performer INTEGER REFERENCES Musician_Performer(id),
	id_Album INTEGER REFERENCES Album_list(id),
	CONSTRAINT pk1 PRIMARY KEY (id_Performer, id_Album)
);

CREATE TABLE IF NOT EXISTS Track_List (
	id SERIAL PRIMARY KEY,
	Album INTEGER REFERENCES Album_list(id),
	Duration TIME NOT null,
	Track VARCHAR(120) UNIQUE NOT null
);

CREATE TABLE IF NOT EXISTS Music_Collection (
	id SERIAL PRIMARY KEY,
	Collection_title VARCHAR(120) UNIQUE NOT null,
	Year_of_issue INTEGER NOT null
);

CREATE TABLE IF NOT EXISTS Collection_Track (
	id_Collection INTEGER REFERENCES Music_Collection(id),
	id_Track INTEGER REFERENCES Track_List(id),
	CONSTRAINT pk2 PRIMARY KEY (id_Collection, id_Track)
);