create table Group4_MusicWorld_Article(
	id int identity(1,1) primary key,
	title nvarchar(100) not null,
	link nvarchar(200),
	postDate date
);
create table Group4_MusicWorld_Category(
	id int identity(1,1) primary key,
	name varchar(20) unique not null,
);
create table Group4_MusicWorld_Artist(
	id int identity(1,1) primary key,
	name nvarchar(30) unique not null,
	biography ntext,
	region varchar(20) not null,
	profileImageURL nvarchar(200) not null,
	favoriteCount int default 0
);
create table Group4_MusicWorld_Album(
	id int identity(1,1) primary key,
	name nvarchar(50) unique not null,
	artistId int foreign key references Group4_MusicWorld_Artist(id),
	thumbnailURL nvarchar(200) not null,
	category int foreign key references Group4_MusicWorld_Category(id),
	favoriteCount int default 0
);
create table Group4_MusicWorld_Song(
	id int identity(1,1) primary key,
	name nvarchar(50) unique not null,
	albumId int foreign key references Group4_MusicWorld_Album(id),
	youtubeURL nvarchar(200) not null,
	lyrics ntext,
	viewCount int default 0,
	favoriteCount int default 0
);
create table Group4_MusicWorld_Song_Artists(
	id int identity(1,1) primary key,
	songId int foreign key references Group4_MusicWorld_Song(id) not null,
	artistId int foreign key references Group4_MusicWorld_Artist(id) not null
)

