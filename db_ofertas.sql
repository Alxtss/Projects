create database db_ofertas;
use db_ofertas;

create table usuario(
	id int auto_increment primary key,
    nombre varchar(50)
);

create table marca(
	id int auto_increment primary key,
    nombre varchar(50)
);

create table producto(
	id int auto_increment primary key,
    nombre varchar(50),
    id_marca int,
    precio float,
    foreign key(id_marca) references marca(id)
);

create table oferta(
	id int auto_increment primary key,
    fecha datetime, -- a/m/d h/m/s
    id_producto int,
    id_usuario int,
    precio float,
    porcentaje int,
    foreign key(id_producto) references producto(id),
    foreign key(id_usuario) references usuario(id)
);

insert into marca values
(null,'Danny'),
(null,'Toledo'),
(null,'Del Cañal'),
(null,'Australian'),
(null,'Bimbo');

insert into usuario values 
(null,'Juan Perez'), 
(null,'Rene Castro'),
(null,'Luis Hernandez'),
(null,'Pahola Mendez'),
(null,'Sarai Campos');

insert into producto values
(null,'Pan de caja',1,2.35),
(null,'Jamon',2,1.50),
(null,'Azucar',3,1.10),
(null,'Leche 3lb',4,3.30),
(null,'Pan dulce',5,2.50),
(null,'Arroz',1,1.10),
(null,'Salchicas con queso',2,1.80),
(null,'Azucar 5lb',3,4.65),
(null,'Leche 5lb',4,5.10),
(null,'Pan tostado',5,3.20);

insert into oferta values
(null,now(),1,1,2.10,5), -- now introduce el momento exacto(fecha - hora) en el que se hizo el insert
(null,'2020-07-3 12:00:00',2,2,1.15,33),
(null,'2020-07-5 09:15:00',3,3,1,3),
(null,'2020-07-4 07:00:00',4,4,2.80,25),
(null,'2020-07-7 18:00:00',7,5,1,40);

select * from marca;
select * from usuario;
select * from producto;
select * from oferta;

-- consultas (select complejos)
-- like
select * from usuario where nombre like 'j%';
select * from usuario where nombre like '%a%';
-- between --> quiere decir 'entre'
select * from producto where precio between 1.50 and 4;
-- order by - asc desc
select * from marca order by nombre asc;
select * from marca order by id desc;
select nombre,precio from producto order by precio asc;
-- count() -- p/cantidades,conteos 
select count(id) from producto;
select count(id) from producto where nombre like 'j%';

-- and, or
select nombre,precio,id from producto 
where (nombre like 'p%' or nombre like 'a%' or nombre like 's%') 
and precio<3 order by precio asc

select oferta.id,oferta.fecha,producto.nombre as 'Producto',usuario.nombre as 'Usuario',oferta.precio,oferta.procentaje
from usuario,producto,oferta 
where producto.id=oferta.id_producto












