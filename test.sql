create database test;
use test;

/* creacion de una tabla 
tipos de datos:
String --> varrchar(100)
int --> numeros enteros*/

create table cliente(
	id int auto_increment,
    nombre varchar(100),
    edad int,
    ciudad varchar(100),
    sexo varchar(1),
    primary key(id)
);

-- borrar tabla
drop table cliente;

-- creacion de registros 
insert into cliente values(null,'Juan',25,'San Vicente','M');
insert into cliente values(null,'Carlos',23,'Sivar','M');
insert into cliente values(null,'Jonathan',24,'San Miguel','M');
insert into cliente values(null,'David',21,'Sanvi','M');
insert into cliente values(null,'Daniel',22,'Sivar','M');
insert into cliente values(null,'Luis',31,'Sanvi','M');
insert into cliente values(null,'Jenifer',26,'Sanvi','F');

select * from cliente;

-- eliminar registros
delete from cliente where id = 4;

-- pruebas de consultas con filtros
select * from cliente where edad>=20;
-- and
select * from cliente where edad>=20 and edad<=24;
select * from cliente where sexo='f';
select nombre,edad from cliente 
where sexo='m' and (edad>=24 and edad<=34) and ciudad='sanvi';
-- or
select id,nombre,ciudad from cliente
where ciudad='sivar' or ciudad='san miguel';
-- order by
select nombre,ciudad from cliente order by nombre asc; 
select nombre,ciudad from cliente order by nombre desc; 
select nombre,edad,ciudad,id from cliente
where (edad >=18 and edad <=25) order by edad desc;
-- avg - para promedios
select avg(edad) as 'Promedio de edades' from cliente;
-- like
select * from cliente where nombre like 'j%';
select * from cliente where nombre like 'j%' order by edad asc;
select * from cliente where nombre like '%a%';





