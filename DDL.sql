create database FilmLovers;

use FilmLovers;

create table Film (
	id int not null identity(1,1),
	title nvarchar(100),
	[type] varchar(10) check ([type] in ('movie', 'series')),
	[language] varchar(100),
	country varchar(100),
	release_year int,
	release_month int check (release_month >= 1 and release_month <= 12),
	release_status varchar(20) check (release_status in ('on-going', 'done', 'upcoming', 
														'postponed', 'cancelled')),
	[description] nvarchar(500),
	story_line nvarchar(1000),
	runtime int,
	visible_status varchar(10) check (visible_status in ('show', 'hidden')),
	add_date date,
	primary key(id)
);

alter table Film
add photo varchar(255);

create table Account(
	id int not null identity(1,1),
	username varchar(50),
	email varchar(255),
	password varchar(255),
	firstname nvarchar(75),
	lastname nvarchar(75),
	address nvarchar(255),
	date_of_birth date,
	isActive bit, -- status of account
	image_link varchar(255),
	role varchar(10) check (role in ('admin', 'user'))
	primary key(id)
);

ALTER TABLE Account
ADD CONSTRAINT UQ_Username UNIQUE (username)

ALTER TABLE Account
ADD CONSTRAINT UQ_Email UNIQUE (email)



create table Genre(
	id int not null identity(1,1),
	name nvarchar(50),
	primary key(id)
);

create table Film_Genre(
	genre_id int references Genre(id),
	film_id int references Film(id),
	primary key(genre_id, film_id)
);

create table Keyword(
	id int not null identity(1,1),
	name nvarchar(50),
	primary key(id)
);

create table Film_Keyword(
	keyword_id int references Keyword(id),
	film_id int references Film(id),
	primary key(keyword_id, film_id)
);

create table Photo(
	id int not null identity(1,1),
	film_id int references Film(id),
	image_link varchar(255),
	title nvarchar(255),
	primary key(id)
);

create table Video(
	id int not null identity(1,1),
	film_id int references Film(id),
	[url] varchar(255),
	title nvarchar(255),
	[type] varchar(20) check ([type] in ('trailer','teaser','scene','interview','bts')),
	primary key(id)
);

create table Person(
	id int not null identity(1,1),
	firstname nvarchar(75),
	lastname nvarchar(75),
	gender varchar(10) check (gender in ('male', 'female')),
	image_link varchar(255),
	date_of_birth date,
	short_bio nvarchar(1000),
	primary key(id)
);

create table CastPerson(
	film_id int references Film(id),
	person_id int references Person(id),
	[character] nvarchar(50),
	primary key(film_id, person_id, [character])
);

create table CrewPosition(
	id int not null identity(1,1),
	name varchar(50),
	primary key(id)
);

create table CrewPerson(
	film_id int references Film(id),
	person_id int references Person(id),
	position_id int references CrewPosition(id),
	primary key(film_id, person_id, position_id)
);

create table Review(
	id int not null identity(1,1),
	title nvarchar(100),
	content nvarchar(1000),
	send_at timestamp,
	is_spoiler bit,
	film_id int references Film(id),
	account_id int references Account(id),
	primary key(id)
);

create table Reaction(
	account_id int references Account(id),
	review_id int references Review(id),
	isUpvote bit,
	primary key(account_id, review_id)
);

create table ReportReason(
	id int not null identity(1,1),
	reason nvarchar(50),
	primary key (id)
);

create table ReportReview(
	account_id int references Account(id),
	review_id int references Review(id),
	sent_at timestamp,
	reason_id int references ReportReason(id),
	explain nvarchar(500),
	status varchar(30) check(status in ('proccessing','rejected','approved'))
	primary key (account_id, review_id, sent_at)
);

create table Rating(
	account_id int references Account(id),
	film_id int references Film(id),
	score int check (score >= 1 and score <= 10),
	rated_at timestamp,
	review_id int references Review(id),
	primary key (account_id, film_id)
);

create table Watched_Film(
	id int not null identity(1,1),
	film_id int references Film(id),
	account_id int references Account(id),
	watched_at timestamp
	primary key (id)
);

create table PlayList(
	id int not null identity(1,1),
	name nvarchar(100),
	is_public bit,
	created_at timestamp,
	account_id int references Account(id),
	primary key (id)
);

create table FavouriteFilm(
	playlist_id int references PlayList(id),
	film_id int references Film(id),
	added_at timestamp,
	note nvarchar(255),
	primary key(playlist_id, film_id)
);
