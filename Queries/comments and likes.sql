create table if not exists user_comments(
	id_news int not null,
	comment varchar (200) not null,
	foreign key (id_news) REFERENCES new_news(id_news)
);

create table if not exists user_like(
	id_news int not null,
	like_ bit default 0,
	foreign key (id_news) REFERENCES new_news(id_news)
);