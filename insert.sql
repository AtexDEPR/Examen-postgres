-- Creacion de inserciones
-- Archivo insert.sql

-- 10 clientes
insert into cliente(nombre, contacto, direccion, historial) 
values
('Daniel','3004785962','calle 1 #88-04', '{"Historial-peliculas" : "king kong vs gozilla"}'), -- 1
('Juan','3004785963','calle 2 #66-14', '{"Historial-peliculas" : "A minecraft movie"}'), -- 2
('Pepe','3004785964','calle 3 #65-04', '{"Historial-peliculas" : "Avengers end game"}'), --3
('Francisco','3004785965','calle 40 #66-04', '{"Historial-peliculas" : "A minecraft movie"}'),-- 4
('Omar','3004785966','calle 5 #66-04', '{"Historial-peliculas" : "Avatar2"}'),-- 5
('Carlos','3004785967','carrera 10 #26-04', '{"Historial-peliculas" : "Rapidos y furiosos 9"}'), -- 6
('Ander','3004785968','carrera 22 #65-04', '{"Historial-peliculas" : "Avengers end game"}'),-- 7
('Chimberto','3004785961','carrera 37 #76-04', '{"Historial-peliculas" : "king kong vs gozilla"}'),-- 8
('Nicole','3004445962','carrera 47 #66-94', '{"Historial-peliculas" : "Notebook"}'),-- 9
('Alvaro','3004555966','carrera 55 #06-04', '{"Historial-peliculas" : "Spiderman 3"}');-- 10

-- 5 sucursales
insert into sucursal(direccion) 
values
('calle 55 #88-04'), -- 1
('calle 45 #40-14'), -- 2
('calle 70a #15-22'), --3
('calle 12b #09-36'),-- 4
('carrera 5 #68-54');-- 5

--15 peliculas
insert into pelicula(titulo, id_suc , genero , director, ano_estreno, disponibilidad, precio) 
values
('king kong vs godzilla', 1, 'accion', 'Daniel','2000','disponible',20000), -- 1
('A minecraft movie', 2, 'otro', 'Daniel','2025','disponible',20000), -- 2
('Avengers end game', 3, 'accion', 'Daniel','2022','disponible',10000), --3
('Lego', 4, 'comedia', 'Daniel','2018','disponible',70000),-- 4
('Avatar2', 5, 'accion', 'Daniel','2024','disponible',60000),-- 5
('Rapidos y furiosos 9', 1, 'accion', 'Daniel','2021','ocupada',10000), -- 6
('Avengers civil war', 2, 'accion', 'Daniel','2016','ocupada',40000),-- 7
('La monja', 3, 'drama', 'Daniel','2014','ocupada',30000),-- 8
('Notebook', 4, 'drama', 'Daniel','2001','ocupada',50000),-- 9
('Spiderman 3', 5, 'drama' , 'Daniel','2003','ocupada',20000);-- 10

insert into pelicula(titulo, id_suc , ano_estreno, disponibilidad, precio) 
values
('king kong vs godzilla 2', 1,'2000','disponible',20000), -- 11
('A minecraft movie 2', 2, '2025','disponible',40000), -- 12
('Avengers end game 4', 3, '2022','disponible',10000), --13
('Lego 2', 4,'2018','disponible',70000),-- 14
('Avatar', 5,'2024','disponible',90000);-- 15

-- 10 alquileres
insert into alquiler(id_cli, id_pe, fech, fech_devolucion, costo_total) 
values
(1,1,'2025-03-22','2025-03-25',60000),--1
(2,2,'2025-04-22','2025-04-25',70000),--2
(3,3,'2025-02-22','2025-02-25',90000),--3
(4,4,'2025-01-21','2025-03-22',30000),--4
(5,5,'2025-01-11','2025-02-21',40000),--5
(6,6,'2024-06-22','2024-07-25',60000),--6
(7,7,'2024-07-22','2024-08-23',90000),--7
(8,8,'2024-08-22','2024-09-24',30000),--8
(9,9,'2024-11-22','2024-11-28',80000),--9
(10,10,'2024-12-22','2025-12-26',80000);--10
