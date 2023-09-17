DROP DATABASE IF EXISTS AUTOREST2;
CREATE DATABASE AUTOREST2;
use AUTOREST2;

create table PerfilEmpleado(
	CodPerfil int not null auto_increment,
    Cargo varchar(15) not null,
	primary key (CodPerfil)
);

create table Empleado(
	CodEmpleado int not null auto_increment,
    Nombre varchar(20) not null,
    Apellido varchar(20) not null,
    Contrasena varchar(20) not null,
    CodPerfil int not null,
    Estado int not null,
    primary key (CodEmpleado),
    foreign key (CodPerfil) references PerfilEmpleado(CodPerfil)
);










