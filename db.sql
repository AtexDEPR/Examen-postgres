-- Creacion de la base de datos movierental
-- Arvhivo db.sql

--Create Enum Categoria/Genero
create type genero as enum('accion','comedia','drama','otro');
create type disponibilidad as enum('disponible','ocupada'); 

--Creacion de la tabla clientes
create table cliente (
id serial unique primary key not null,
nombre varchar(250) not null,
contacto varchar(100) not null,
direccion varchar(100) not null,
historial json
);

--Creacion de la tabla sucursal
create table sucursal (
id serial unique primary key not null,
direccion varchar(100)
);

--Creacion de la tabla peliculas
create table pelicula (
id_pelicula serial primary key not null,
id_suc serial not null,
titulo varchar(250) not null,
genero genero not null default 'otro',
director varchar(250) not null default 'Desconocido',
ano_estreno varchar(4)not null,
disponibilidad disponibilidad check(disponibilidad in('disponible','ocupada')),
precio integer not null,
-- FK sucursal
foreign key (id_suc) references sucursal(id)
);

--Creacion de la tabla
create table alquiler (
id serial unique primary key not null,
id_cli serial not null,
id_pe serial not null,
fech date not null,
fech_devolicion date not null,
costo_total integer not null,
-- FK cliente
foreign key (id_cli) references cliente(id),
-- FK pelicula
foreign key (id_pe) references pelicula(id_pelicula)
);

--Creacion de la tabla pagos
create table pago (
id_pago serial unique not null,
id_cliente serial not null,
fech_pago date not null,
monto integer not null,
-- FK id_cliente
foreign key (id_cliente) references cliente(id)
);


