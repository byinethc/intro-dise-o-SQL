create table asunto(
	n_expediente int primary key,
	id_estado int not null,
	id_periodo int not null,
	num_cedula int not null,
	id_procurador int not null,
	FOREIGN KEY(id_estado) REFERENCES 
estado(id_estado),
	FOREIGN KEY(id_periodo) REFERENCES 
periodo(id_periodo),
	FOREIGN KEY(num_cedula) REFERENCES 
cliente(num_cedula),
	FOREIGN KEY(id_procurador) REFERENCES 
procuradores(id_procurador)

);

create table periodo(
	id_periodo serial primary key,
	fecha_ini date not null,
	fecha_final date not null

);

create table estado(
	id_estado serial primary key,
	tramite date not null,
	archivo date not null

);

create table cliente(
	num_cedula int primary key,
	nombre_cli varchar(150) not null,
	apellido_cli varchar (150) not null,
	telefono_cli varchar (15) not null,
	direccion_cli varchar (150) not null

);

create table procuradores(
	id_procurador int primary key,
	nombre_pro varchar(150) not null,
	apellido_pro varchar (150) not null,
	telefono varchar (15) not null,
	direccion varchar (150) not null

);

