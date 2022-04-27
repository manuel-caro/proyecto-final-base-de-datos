
--creacion de la base de datos
create database ferreterialuz
use ferreterialuz


-- Creacion de las tablas 
--credenciales de iniciar seccion tanto como empleado y administracion 
create table Credenciales(
Id int primary key identity (1,1),
Usuarios varchar (20) not null,
Pass varchar (50) not null
);


--tabla de clave foranea para la responbilidad de empleado
create table Rol(
Rol_Id int primary key identity (1,1) not null,
Rol_Nombre varchar(40) not null
);

--creacion de tabla de empleado 
create table Empleado(
Emp_Id int primary key identity (1,1) not null,
Emp_Codigo varchar(5) not null,
Emp_Nombre varchar (40) not null,
Emp_Apellido varchar(40) not null,
Emp_Telefono varchar (15) not null,
Emp_Email varchar (50) not null,
Emp_Domicilio text not null,
Emp_Rol varchar(50) not null
--Rol_Id int not null,
--Foreign key (Rol_Id) References Rol (Rol_Id),
--Cre_Id int not null,
--Foreign key (Cre_Id) References Credenciales (Id)
);



create table Articulo(
Art_Id int primary key identity (1,1) not null,
Art_Codigo varchar(10) not null,
Art_Tipo varchar(50) not null,
Art_Marca varchar(50),
Art_Color varchar(50) not null,
Art_Tamano varchar(50),
Art_Precio int not null,
Art_Descripcion varchar(100)
);

create table Cliente(
Cli_Id int primary key identity (1,1) not null,
Cli_Codigo varchar(5) not null,
Cli_Nombre varchar(20) not null,
Cli_Apellido varchar(20),
Cli_Telefono varchar(15),
Cli_Domicilio text, 
);

create table Factura(
Fact_Id int primary key identity (1,1) not null,
Fact_Codigo varchar(5) not null,
Fact_Cantidad int not null,
Fact_Subtotal int not null,
Fact_Descuento int not null,
Fact_Itbis int not null,
Fact_Total int not null
--Art_Id int not null,
--Foreign key (Art_Id) References Articulo (Art_Id),
--Cli_Id int not null,
--Foreign key (Cli_Id) References Cliente (Cli_Id)
);

create table Inventario(
Inv_Id int primary key identity (1,1) not null,
Inv_Codigo varchar (5)not null,
Inv_Tipo varchar (15) not null,
Inv_Fecha varchar(10) not null,
Inv_Periodo varchar(15) not null,
Inv_Cantidad int not null, 
Inv_Descripcion varchar(50) not null,
Inv_Precio int not null,
Inv_Total int not null
--Art_Id int not null,
--Foreign key (Art_Id) References Articulo (Art_Id)
);

create table Nomina(
Nom_ID int primary key identity (1,1) not null,
Nom_Codigo varchar (5) not null,
Nom_SueldoBruto int not null,
Nom_Impuesto int not null,
Nom_HorasTrabajo int not null,
Nom_HorasExtras int,
Nom_SueldoExtra int not null,
Nom_Comision int not null,
Nom_Descuento int not null,
Nom_SueldoNeto int not null
--Emp_Id int not null,
--Foreign key (Emp_Id) References Empleado (Emp_Id)
);



select * from Empleado;
select * from Articulo;
select * from Cliente;
select * from Credenciales;
select * from Rol;
select * from Factura;
select * from Inventario;
select * from Nomina;

-- Insertar 

Insert into Rol (Rol_Nombre) values ('Gerente');
Insert into Rol (Rol_Nombre) values ('Cajera');
Insert into Rol (Rol_Nombre) values ('Personal Inventario');
Insert into Rol (Rol_Nombre) values ('Supervisor Ventas');


Insert into Credenciales (Usuarios, Pass) values ('LD', '1234');
Insert into Credenciales (Usuarios, Pass) values ('L01', '0812');
Insert into Credenciales (Usuarios, Pass) values ('L08', '8080');


Insert into Empleado (Emp_Codigo, Emp_Nombre, Emp_Apellido, Emp_Telefono, Emp_Email, Emp_Domicilio, Emp_Rol) 
values ('L08', 'Lisbeth', 'Diaz', '849-656-1208', 'Lisbeth_Diaz08@hotmail.com', 'Calle San Antonio', 'Gerente' );
Insert into Empleado (Emp_Codigo, Emp_Nombre, Emp_Apellido, Emp_Telefono, Emp_Email, Emp_Domicilio, Emp_Rol) 
values ('L23', 'Linny', 'Abreu', '809-656-1234', 'AbreuLinny@gmail.com', 'Calle Su Casa', 'Cajera' );
Insert into Empleado (Emp_Codigo, Emp_Nombre, Emp_Apellido, Emp_Telefono, Emp_Email, Emp_Domicilio, Emp_Rol) 
values ('M28', 'Magdelin', 'Encarnacion', '849-123-1208', 'MagdelinE@hotmail.com', 'Calle el Sol', 'Supervisor Venta' );


Insert Into Articulo (Art_Codigo, Art_Tipo, Art_Marca, Art_Color, Art_Tamano, Art_Precio, Art_Descripcion)
values ('A01', 'Globos', 'Elastica', 'Azul', '2' , '200', 'Globos Azules Numero 2');
Insert Into Articulo (Art_Codigo, Art_Tipo, Art_Marca, Art_Color, Art_Tamano, Art_Precio, Art_Descripcion)
values ('A02', 'Globos', 'Elastica', 'Rojos', '2' , '200', 'Globos Rojos Numero 2');
Insert Into Articulo (Art_Codigo, Art_Tipo, Art_Marca, Art_Color, Art_Tamano, Art_Precio, Art_Descripcion)
values ('A03', 'Globos', 'Elastica', 'Amarillos', '2' , '200', 'Globos Amarillos Numero 2');
Insert Into Articulo (Art_Codigo, Art_Tipo, Art_Marca, Art_Color, Art_Tamano, Art_Precio, Art_Descripcion)
values ('A04', 'Cintas', 'Finas', 'Azul', '' , '200', 'Cintas Finas Azules');
Insert Into Articulo (Art_Codigo, Art_Tipo, Art_Marca, Art_Color, Art_Tamano, Art_Precio, Art_Descripcion)
values ('A05', 'Cintas', 'Finas', 'Rosadas', '' , '200', ' Cintas Finas Rosadas');


Insert into Cliente (Cli_Codigo, Cli_Nombre, Cli_Apellido, Cli_Telefono, Cli_Domicilio) 
values ('C01', 'Scarlet', 'Reinoso', '809-245-1416','Su Casa');
Insert into Cliente (Cli_Codigo, Cli_Nombre, Cli_Apellido, Cli_Telefono, Cli_Domicilio) 
values ('C02', 'Laura', 'Perez', '','El techo');
Insert into Cliente (Cli_Codigo, Cli_Nombre, Cli_Apellido, Cli_Telefono, Cli_Domicilio) 
values ('C03', 'Liz', 'Alcantara', '','La calle');
Insert into Cliente (Cli_Codigo, Cli_Nombre, Cli_Apellido, Cli_Telefono, Cli_Domicilio) 
values ('C04', 'Carmen', '', '','');
Insert into Cliente (Cli_Codigo, Cli_Nombre, Cli_Apellido, Cli_Telefono, Cli_Domicilio) 
values ('C05', 'Girazol', 'Peralta', '','');


Insert into Inventario (Inv_Codigo, Inv_Tipo, Inv_Fecha, Inv_Periodo, Inv_Cantidad, Inv_Descripcion, Inv_Precio, Inv_Total)
values ('I01', 'Articulos', '02-02-2020', 'Diario', '10', 'Globos Azules numero 2', '200', '2000');
Insert into Inventario (Inv_Codigo, Inv_Tipo, Inv_Fecha, Inv_Periodo, Inv_Cantidad, Inv_Descripcion, Inv_Precio, Inv_Total)
values ('I02', 'Articulos', '02-02-2020', 'Diario', '10', 'Globos Rojos numero 2', '200', '2000');
Insert into Inventario (Inv_Codigo, Inv_Tipo, Inv_Fecha, Inv_Periodo, Inv_Cantidad, Inv_Descripcion, Inv_Precio, Inv_Total)
values ('I03', 'Articulos', '02-02-2020', 'Diario', '10', 'Globos Amarillos numero 2', '200', '2000');


Insert into Nomina (Nom_Codigo, Nom_SueldoBruto, Nom_Impuesto, Nom_HorasTrabajo, Nom_HorasExtras, Nom_SueldoExtra, Nom_Comision, Nom_Descuento, Nom_SueldoNeto)
values ('N01', '25000', '100', '160', '16', '100', '2000','1500', '27000' );
Insert into Nomina (Nom_Codigo, Nom_SueldoBruto, Nom_Impuesto, Nom_HorasTrabajo, Nom_HorasExtras, Nom_SueldoExtra, Nom_Comision, Nom_Descuento, Nom_SueldoNeto)
values ('N02', '30000', '100', '160', '16', '100', '2000','1500', '32000' );
Insert into Nomina (Nom_Codigo, Nom_SueldoBruto, Nom_Impuesto, Nom_HorasTrabajo, Nom_HorasExtras, Nom_SueldoExtra, Nom_Comision, Nom_Descuento, Nom_SueldoNeto)
values ('N03', '35000', '150', '160', '16', '100', '2000','1500', '37000' );