create database farmacia_gigi;

create table medicamento(
	id serial primary key,
	nome varchar (100) not null,
	dosagem varchar (30) not null,
	lote varchar (50) not null,
	validade date not null,
	armazenamento_id int, foreign key (armazenamento_id) references armazenamento(id),
	forma_adm_id int, foreign key (forma_adm_id) references forma_adm(id)
);

create table forma_adm(
	id serial primary key,
	comprimido varchar (50) not null,
	liquido varchar(50) not null,
	injetavel varchar(50) not null
);

create table armazenamento(
	id serial primary key,
	refrigeracao varchar(50) not null,
	controle_temperatura varchar(50) not null
);