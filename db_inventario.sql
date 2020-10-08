create database inventario;
use inventario;

create table pais(
	codigo int auto_increment,
    nombre varchar(50),
    primary key(codigo)
);

create table marca(
	id int auto_increment,
    nombre varchar(50),
    id_pais int,
    primary key(id),
    foreign key(id_pais) references pais(codigo)
);

create table productos(
	cod int auto_increment,
    nombre varchar(50),
    stock int,
    precio int,
    id_marca int,
    primary key(cod),
    foreign key(id_marca) references marca(id)
);

-- creacion de registros 
insert into pais values
(null,'Alemania'),
(null,'El Salvador'),
(null,'China'),
(null,'Rusia'),
(null,'Venezuela');

insert into marca values
(null,'Chang & Chang',3), -- para el dato de la foreign key se inserta el id de la fk
(null,'Calasparrow',3),
(null,'Swellfun',3),
(null,'Mezcla super',4),
(null,'Jagermeister',1),
(null,'Endirger',1),
(null,'Clausthaler',1),
(null,'Lacoste',2),
(null,'Nestle',5),
(null,'Savoy',5);

insert into productos values
(null,'vino tinto',50,48,4),
(null,'cafe',10,20,9),
(null,'sopa',28,5,1),
(null,'arroz',200,10,2),
(null,'vino blanco',50,44,3),
(null,'cerveza',350,25,5),
(null,'foco',50,12,6),
(null,'camisa',111,33,7),
(null,'pantalon',40,18,8),
(null,'vino de uva',84,15,10);

-- selects
select * from pais;
select * from marca;
select * from productos;

select cod, nombre,precio from productos where precio<=100;

-- update
update productos set nombre='vino white' where cod=5;
update productos set nombre='short' where cod=9;
update productos set precio=12 where cod=3;


-- drops
drop table producto;
drop table marca;
drop table producto;

-- drop db
-- drop database inventario;
