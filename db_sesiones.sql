create database db_sesiones;
use db_sesiones;

create table privilegio(
	id int auto_increment primary key,
    descripcion varchar(50)
);

create table usuario(
	id varchar(12) primary key,
    nombre varchar(50),
    clave varchar(50),
    nivel int,
    foreign key(nivel) references privilegio(id)
);

insert into privilegio values
(null,'Administrador'),
(null,'Normal'),
(null,'Operador');

insert into usuario values
('11-1','Juan Perez','111',1),
('22-2','Carlos Gomez','222',2),
('33-3','David Fuentes','333',3);

select * from privilegio;
select * from usuario;