create table if not exists new_reporter(
	registered_by int not null,
	id_reporter int primary key auto_increment,
	register_date timestamp default current_timestamp,
	date_last_modification timestamp default current_timestamp,
    available bit default 0,
	foreign key (registered_by) REFERENCES new_editor(id_editor)
);

create table if not exists personal_data_reporter(
	id_reporter int not null,
    name_reporter varchar(200) not null,
    last_name_reporter varchar(200) not null,
	birth_reporter varchar(200) not null,
	email_reporter varchar(200) not null,
	adress_reporter varchar(200) not null,
    age_reporter_reporter varchar(200) not null,
    profile_pic_reporter mediumblob,
	foreign key (id_reporter) REFERENCES new_reporter(id_reporter)
);

create table if not exists login_reporter(
	id_reporter int not null,
    user_reporter varchar(200) not null,
    passw_reporter varchar(200) not null,
	foreign key (id_reporter) REFERENCES new_reporter(id_reporter)
);
