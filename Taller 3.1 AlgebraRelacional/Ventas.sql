use master 
go

--crear BDVentas
if DB_ID('BDVentas')is not null
   drop database BDVentas
go
create database BDVentas
go
 use BDVentas
go
 
 --Tabla Cliente
if OBJECT_ID('TCliente')is not null
    drop table TCliente
go
create table TCliente
(
  CodCliente char(5)primary key,
  Apellidos varchar(50),
  Nombres varchar(50),
  Direccion varchar(50)
)
go
--Tabla Ctegoria
if OBJECT_ID('TCategoria')is not null
  drop table TCategoria
go
create table TCategoria
(
  CodCategoria char(5)primary key,
  Nombre varchar(50),
  CategoriaPadre char(5),
  foreign key (CategoriaPadre)references TCategoria
)
go
 --Tabla Vendedor
if OBJECT_ID('TVendedor')is not null
    drop table TVendedor
go
create table TVendedor
(
    CodVendedor char(5)primary key,
    Apellidos varchar(50),
    Nombres varchar(50)
)
go
 --Tabla Boleta
if OBJECT_ID('TBoleta')is not null
   drop table TBoleta
go
create table TBoleta
(
  NroBoleta int primary key,
  Fecha date,
  CodCliente char(5),
  CodVendedor char(5),
  Anulado bit,
  foreign key (CodCliente)references TCliente,
  foreign key (CodVendedor)references TVendedor,
)
go
 --Tabla Producto
if OBJECT_ID('TProducto')is not null
   drop table TProducto
go
create table TProducto
(
  CodProduto char(5)primary key,
  Nombre varchar(50),
  UnidadDeMedida varchar(50),
  Precio decimal(4,2),
  Stock int,
  CodCategoria char (5),
  foreign key (CodCategoria)references TCategoria
)
go
 --Tabla Detalle
if OBJECT_ID('TDetalle')is not null
   drop table TDetalle
go
create table TDetalle
(
  NroBoleta int,
  CodProducto char(5),
  Cantidad int,
  PrecioUnitario decimal(4,2),
  primary key (NroBoleta,CodProducto),
  foreign key (NroBoleta) references TBoleta,
  foreign key (CodProducto) references TProducto 
)
go