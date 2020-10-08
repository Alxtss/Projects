create database votos_os;
use votos_os;

-- id personalizado: --> char(38)
-- insert --> UUID()

create table sistema_operativo(
	id char(38) primary key,
    nombre varchar(50)
);

insert into sistema_operativo values
(uuid(),'Linux'),
(uuid(),'Windows'),
(uuid(),'Mac Os'),
(uuid(),'Solaris');

select * from sistema_operativo;

create table votos(
	id char(38) primary key,
    id_so char(38),
    fecha datetime,
    foreign key(id_so) references sistema_operativo(id)
);

select * from votos;