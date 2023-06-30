create database VillaDeLasRosas

create table Difilcultades
(id_dificultad int identity(1,1) not null,
dificultad varchar (30)
primary key(id_dificultad)
)

create table Privado_Publico
(id_privado_publico int identity(1,1) not null,
privado_publico varchar (30)
primary key(id_privado_publico)
)

create table Entradas
(id_entrada int identity (1,1) not null,
entrada varchar (100)
primary key(id_entrada)
)

create table Provincias
(id_Provincia int identity (1,1)not null,
Provincia varchar (100)
primary key (id_Provincia)
)

create table Acampar
(
id_Acampar int identity (1,1) not null,
Acampar varchar (100)
primary key(id_Acampar)
)
 
create table Dique_Ciudad
(
id_Dique_Ciudad int identity (1,1) not null,
Dique_Ciudad varchar (100)
primary key (id_Dique_Ciudad)
)

create table Senderos
(
id_Sendero int identity (1,1) not null,
Sendero varchar (100),
distancia int,
precio float,
id_dificultad int,
id_privado_publico int,
id_Dique_Ciudad int,
id_entrada int,
id_provincia int,
primary key(id_Sendero),
foreign key(id_dificultad)references Difilcultades (id_dificultad),
foreign key(id_privado_publico)references privado_publico (id_privado_publico),
foreign key(id_Dique_Ciudad)references Dique_Ciudad (id_Dique_Ciudad),
foreign key(id_entrada)references entradas (id_entrada),
foreign key(id_Provincia)references Provincias (id_Provincia)
)


insert into Difilcultades (dificultad) values ('Dificil')
insert into Difilcultades (dificultad) values ('Normal')
insert into Difilcultades (dificultad) values ('Facil')
insert into Difilcultades (dificultad) values ('Moderada')
insert into Difilcultades (dificultad) values ('Media')
insert into Difilcultades (dificultad) values ('Extrema')

insert into Privado_Publico(privado_publico) values ('Publico')
insert into Privado_Publico(privado_publico) values ('Privado')

insert into Entradas(entrada) values ('Balneario Municipal Guasmara')
insert into Entradas(entrada) values ('Ruta Nacional Nº14')
insert into Entradas(entrada) values ('Camino a Barranca de los Loros')
insert into Entradas(entrada) values ('Camino a Los Molles Parador Portal de Los Molles')
insert into Entradas(entrada) values ('Vado de Las Chacras')
insert into Entradas(entrada) values ('Gruta Virgen de Fatima')

insert into Provincias(provincia) values ('Córdoba')

insert into Acampar(Acampar) values ('Si')
insert into Acampar(Acampar) values ('No')

insert into Dique_Ciudad(Dique_Cuidad) values ('Dique De La Viña')
insert into Dique_Ciudad(Dique_Cuidad) values ('Ciudad')