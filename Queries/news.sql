create table if not exists new_news(
	registered_by int not null,
   	id_news int primary key auto_increment,
	register_date timestamp default current_timestamp,
	date_last_modification timestamp default current_timestamp,
	foreign key (registered_by) REFERENCES new_reporter(id_reporter)
);

create table if not exists info_news(
	id_news int not null,
    place varchar(200) not null,
    time_ varchar(200) not null,
    date_ varchar(200) not null,
	title varchar(200) not null,
	description_ varchar(200) not null,
	extra_text varchar(200) not null,
    picture mediumblob,
	video mediumblob,
    keywords varchar(200) not null,
	section varchar(200) not null,
	foreign key (id_news) REFERENCES new_news(id_news)
);

create table if not exists reviewing_news(
	commented_by int not null, -- la perzona que hizo el comentario
	the_comment varchar(200) not null,-- el comentario
	id_news int not null,
	foreign key (id_news) REFERENCES new_news(id_news),
	foreign key (commented_by) REFERENCES new_editor(id_editor)
);

create table if not exists status_news(
	published_OR_removed_by int not null,
	id_news int not null,
	available bit default 1,
	foreign key (id_news) REFERENCES new_news(id_news),
	foreign key (published_OR_removed_by) REFERENCES new_editor(id_editor)
);
