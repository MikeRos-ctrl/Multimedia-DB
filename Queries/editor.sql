create schema if not exists mdb;
use mdb;
drop schema mdb;

create table if not exists new_editor(
	id_editor int primary key auto_increment,
	register_date timestamp default current_timestamp,
	date_last_modification timestamp default current_timestamp,
    available bit default 1
);

create table if not exists personal_data_editor(
	id_editor int not null,
    name_editor varchar(200) not null,
    last_name_editor varchar(200) not null,
	birth_editor varchar(200) not null,
	email_editor varchar(200) not null,
	adress_editor varchar(200) not null,
    age_editor_editor varchar(200) not null,
    profile_pic_editor mediumblob,
	foreign key (id_editor) REFERENCES new_editor(id_editor)
);

create table if not exists login_editor(
	id_editor int not null,
    user_editor varchar(200) not null,
    passw_editor varchar(200) not null,
	foreign key (id_editor) REFERENCES new_editor(id_editor)
);


