-- Base de datos Taller 1 empresa ABC
-- 21/02/25
-- Grupo Criollo Palacios

USE master
GO

IF DB_ID('BDABC') IS NOT NULL
    DROP DATABASE BDABC
GO

CREATE DATABASE BDABC
GO

USE BDABC
GO

-- -------------------------------------------------------------

-- Creación de tabla Proveedor
IF OBJECT_ID('Proveedor', 'U') IS NOT NULL
    DROP TABLE Proveedor
GO

CREATE TABLE Proveedor 
(
    idProveedor VARCHAR(9) PRIMARY KEY,  
    nombreP VARCHAR(20) NOT NULL,
    apellidoP VARCHAR(20) NOT NULL,
    direccionP VARCHAR(50) NOT NULL,
    telefonoP VARCHAR(9) NOT NULL,
    emailP VARCHAR(50) NOT NULL
);
GO

-- -------------------------------------------------------------

-- Creación de tabla Orden de Compra
IF OBJECT_ID('OrdenCompra', 'U') IS NOT NULL
    DROP TABLE OrdenCompra
GO

CREATE TABLE OrdenCompra 
(
    idOrdenCompra VARCHAR(9) PRIMARY KEY,  
    fechaCompra DATETIME NOT NULL,  
    horaCompra DATETIME NOT NULL,  
    montoTotal DECIMAL(10,2) NOT NULL,
    idProveedor VARCHAR(9) NOT NULL,
    FOREIGN KEY (idProveedor) REFERENCES Proveedor(idProveedor) 
    ON DELETE CASCADE ON UPDATE CASCADE
);
GO

-- -------------------------------------------------------------

-- Creación de tabla Electrodomésticos (Para evitar error en idElectrodomestico)
IF OBJECT_ID('Electrodomesticos', 'U') IS NOT NULL
    DROP TABLE Electrodomesticos
GO

CREATE TABLE Electrodomesticos 
(
    idElectrodomestico VARCHAR(9) PRIMARY KEY,  
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL,
    marca VARCHAR(30) NOT NULL,
    precioCompra DECIMAL(10,2) NOT NULL,
    precioVenta DECIMAL(10,2) NOT NULL
);
GO

-- -------------------------------------------------------------

-- Creación de tabla Detalles de Entrada
IF OBJECT_ID('DetallesEntrada', 'U') IS NOT NULL
    DROP TABLE DetallesEntrada
GO

CREATE TABLE DetallesEntrada
(
    idDetEntrada VARCHAR(9) PRIMARY KEY,
    cantidad DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL, 
    fechaEntrada DATETIME NOT NULL,
    idOrdenCompra VARCHAR(9) NOT NULL,
	idElectrodomestico VARCHAR(9) NOT NULL,

    FOREIGN KEY (idOrdenCompra) REFERENCES OrdenCompra(idOrdenCompra) 
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idElectrodomestico) REFERENCES Electrodomesticos(idElectrodomestico) 
    ON DELETE CASCADE ON UPDATE CASCADE
);
GO

-- -------------------------------------------------------------

--Creacion de Clinete
if OBJECT_ID('Cliente','U') is not null
	drop table Cliente
go
create table Cliente
(
	idCliente char(9) primary key,
	nombresC varchar(50) not null,
	apellidoC varchar(50) not null,
	direccionC varchar(50) not null,
	telefoneC varchar(9) not null,
	emailC varchar(50) not null,
)
go

-- -------------------------------------------------------------

--Creacion de Comprobante
if OBJECT_ID('Comprobante','U') is not null
	drop table Comprobante
go
create table Comprobante
(
	idComp int primary key not null,
	fechaHoraComp datetime not null,
	origenComp varchar(50) not null,
	destinoComp varchar(50) not null,
	idCliente char(9),
	foreign key (idCliente) references Cliente(idCliente)
)
go
