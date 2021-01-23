CREATE TABLE users (
	login TEXT NOT NULL,
	password_hash TEXT NOT NULL,
	parent TEXT NOT NULL,

	PRIMARY KEY (login),
	FOREIGN KEY (parent) REFERENCES users(login)
);

CREATE TABLE media (
	uuid TEXT NOT NULL,
	title TEXT NOT NULL,
	release_date INTEGER NOT NULL,
	upload_date INTEGER NOT NULL,
	synopsis TEXT,

	PRIMARY KEY (uuid)
);

CREATE TABLE tags (
	value TEXT NOT NULL,

	PRIMARY KEY (value)
);

CREATE TABLE directors (
	firstname TEXT NOT NULL,
	lastname TEXT NOT NULL,
	nationality TEXT NOT NULL,
	birth_date INTEGER NOT NULL,

	PRIMARY KEY (firstname, lastname)
);

CREATE TABLE playlists (
	title TEXT NOT NULL,
	owner_login TEXT NOT NULL,
	is_private INTEGER NOT NULL,

	PRIMARY KEY (title, owner_login),
	FOREIGN KEY (owner_login) REFERENCES users(login)
);

CREATE TABLE playlist_positions (
	playlist_title TEXT NOT NULL,
	playlist_owner_login TEXT NOT NULL,
	medium_uuid TEXT NOT NULL,
	position INTEGER NOT NULL,

	PRIMARY KEY (playlist_title, playlist_owner_login),
	FOREIGN KEY (playlist_owner_login, playlist_title) REFERENCES playlists(owner_login, title),
	FOREIGN KEY (medium_uuid) REFERENCES media(uuid)
); 

CREATE TABLE playlist_tags (
	playlist_title TEXT NOT NULL,
	playlist_owner_login TEXT NOT NULL,
	tag_value TEXT NOT NULL,

	PRIMARY KEY (playlist_title, playlist_owner_login),
	FOREIGN KEY (playlist_owner_login, playlist_title) REFERENCES playlists(owner_login, title),
	FOREIGN KEY (tag_value) REFERENCES tags(value)
);

CREATE TABLE medium_tags (
	medium_uuid TEXT NOT NULL,
	tag_value TEXT NOT NULL,

	PRIMARY KEY (medium_uuid, tag_value),
	FOREIGN KEY (medium_uuid) REFERENCES media(uuid),
	FOREIGN KEY (tag_value) REFERENCES tags(value)
);

CREATE TABLE viewing (
	user_login TEXT NOT NULL,
	medium_uuid TEXT NOT NULL,
	date INTEGER NOT NULL,

	PRIMARY KEY (user_login, medium_uuid),
	FOREIGN KEY (medium_uuid) REFERENCES media(uuid),
	FOREIGN KEY (user_login) REFERENCES users(login)
);

CREATE TABLE medium_directors (
	medium_uuid TEXT NOT NULL,
	director_firstname TEXT NOT NULL,
	director_lastname TEXT NOT NULL,

	PRIMARY KEY (medium_uuid),
	FOREIGN KEY (medium_uuid) REFERENCES media(uuid),
	FOREIGN KEY (director_firstname, director_lastname) REFERENCES directors(firstname, lastname)
);

