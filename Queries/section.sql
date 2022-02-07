create table if not exists section(
	registered_by int not null,
	id_section int primary key auto_increment,
	available bit default 1,
	foreign key (registered_by) REFERENCES new_editor(id_editor)
);