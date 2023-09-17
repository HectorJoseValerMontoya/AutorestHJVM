DROP DATABASE IF EXISTS AUTOREST;
CREATE DATABASE AUTOREST;
use AUTOREST;

create table CategoriaPlatos(
	CodCat int not null auto_increment,
    Nombre varchar(30) not null,
    primary key(CodCat)
);

create table ZonaCocina(
	CodZona int not null auto_increment,
    Nombre varchar(20) not null,
    primary key(CodZona)
);

create table Mesa(
	CodMesa int not null auto_increment,
    Nombre varchar(15) not null,
    Descripcion varchar(30),
    Estado char(1) not null,
    primary key (CodMesa)
);

create  table Clientes(
	CodCLiente int not null auto_increment,
    Nombre varchar(30) not null,
    Apellido varchar(30),
    Documento varchar(20) not null,
    Tipo char(1) not null,
    primary key (CodCLiente)
);

create table MetodoPago(
	CodMetodo int not null auto_increment,
	Nombre varchar(15),
	Estado char(1) not null,
	primary key(CodMetodo)
);

create table PerfilEmpleado(
	CodPerfil int not null auto_increment,
    Nombre varchar(15) not null,
    primary key(CodPerfil)
);

create table Plato(
	CodPlato int not null auto_increment,
    Nombre varchar(50) not null,
    CodCat int not null,
    Estado char(1) not null,
    imagen varchar(50),
    primary key(CodPlato),
    foreign key (CodCat) references CategoriaPlatos(CodCat)
);

create table Componente(
	CodComp int not null auto_increment,
    Nombre varchar(30) not null,
    CodZona int not null,
    primary key (CodComp),
    foreign key (CodZona) references ZonaCocina(CodZona)
);
create table Plato_Componente(
	CodPlato int not null,
    CodComp int not null,
    foreign key (CodPlato) references Plato(CodPlato),
    foreign key (CodComp) references Componente(CodComp)
);

create table Empleado(
	CodEmpleado int not null auto_increment,
    Nombre varchar(20) not null,
    Apellido varchar(20),
    password_ varchar(30) not null,
    CodPerfil int not null,
    Estado char(1) not null,
    primary key(CodEmpleado),
    foreign key (CodPerfil) references PerfilEmpleado(CodPerfil)
);

create table Orden (
	CodOrden int not null auto_increment,
    CodEmpleado int not null,
    CodMesa int not null,
    Estado char(1) not null,
    FechaCreacion datetime,
    primary key (CodOrden),
    foreign key (CodEmpleado) references Empleado(CodEmpleado),
    foreign key (CodMesa) references Mesa(CodMesa)
);

create table Recibo(
	CodRecibo int not null auto_increment,
    Documento varchar(13),
	CodOrden int not null,
	Tipo char(1),
    CodCliente int not null,
    Estado char(1),
    CodMetodo int not null,
    primary key (CodRecibo),
    foreign key (CodOrden) references Orden(CodOrden),
    foreign key (CodCliente) references Clientes(CodCliente),
    foreign key (CodMetodo) references Metodopago(CodMetodo)
);

create table Orden_Detalle(
	CodOrden int not null,
    CodPlato int not null,
    Cantidad int not null,
    Estado char(1) not null,
    Comentario varchar(50),
    foreign key (CodOrden) references Orden(CodOrden),
    foreign key (CodPlato) references Plato(CodPlato)
);



---------------------------------

insert into PerfilEmpleado values (null, "HJVM");
insert into Empleado values (null, 

select * from PerfilEmpleado;











