--consultas.sql

-- ingresos del mes


--listar todas las peliculas disponibles
select *
from pelicula p 
where disponibilidad = 'disponible';

--Historial de cliente
select historial
from cliente c 
where id = 1;

-- peliculas con precio de alquiler superiores a un valer epecifico
select *
from pelicula p 
where precio > 49000; -- cambiar valor par pruebas Ejemplo: 49000

-- Listar peliculas  en los ultimos 5 años
select *
from pelicula p 
where ano_estreno > '2020';
