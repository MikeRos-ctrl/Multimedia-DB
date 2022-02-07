create table if not exists new_user(
	id_user int primary key auto_increment,
	register_date timestamp default current_timestamp,
	date_last_modification timestamp default current_timestamp,
    available bit default 1
);

create table if not exists personal_data_user(
	id_user int not null,
    name_user varchar(200) not null,
    last_name_user varchar(200) not null,
	birth_user varchar(200) not null,
	email_user varchar(200) not null,
	adress_user varchar(200) not null,
    age_user_user varchar(200) not null,
    profile_pic_user mediumblob,
	foreign key (id_user) REFERENCES new_user(id_user)
);

create table if not exists login_user(
	id_user int not null,
    user_user varchar(200) not null,
    passw_user varchar(200) not null,
	foreign key (id_user) REFERENCES new_user(id_user)
);
