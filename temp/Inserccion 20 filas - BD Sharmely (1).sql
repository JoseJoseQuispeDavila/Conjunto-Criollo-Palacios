-- Eliminar datos de tablas hijas primero
DELETE FROM Envio;
DELETE FROM Pago;
DELETE FROM Detalle_Pedido;
DELETE FROM Pedido;
DELETE FROM Usuario;
DELETE FROM Cliente;
DELETE FROM Producto;
DELETE FROM Categoria;
DELETE FROM Proveedor;

-- Datos PROVEEDOR
INSERT INTO Proveedor VALUES
(1, 'FerroPerú SAC', 'Carlos Huamán', '084234567', 'Fierro, cemento, mallas'),
(2, 'Ladrillos Inka', 'María Quispe', '084765432', 'Ladrillos, bloques'),
(3, 'Cementos Sur', 'Jorge Mamani', '084323456', 'Cemento tipo I, IP'),
(4, 'Alambrix Cusco', 'Lucía Sota', '084246810', 'Alambre, clavos'),
(5, 'Sika Perú', 'Pedro Aquino', '084135792', 'Selladores, aditivos'),
(6, 'Elektra Tools', 'Rosa Vargas', '084876543', 'Herramientas eléctricas'),
(7, 'Tuboplast SAC', 'Luis Choque', '084432198', 'Tuberías PVC'),
(8, 'Pinturas Andinas', 'Sandra Quispe', '084129843', 'Pinturas, disolventes'),
(9, 'Gypsum Perú', 'Manuel Huanca', '084333444', 'Placas de drywall'),
(10, 'TecnoVidrios', 'Camila Álvarez', '084546372', 'Vidrios templados'),
(11, 'InkaFerre', 'contacto@inkaferre.com', '084245372', 'Materiales diversos'),
(12, 'CuscoTools', 'contacto@cuscotools.com', '084298045', 'Materiales diversos'),
(13, 'FerreMax', 'contacto@ferremax.com', '084244387', 'Materiales diversos'),
(14, 'Materiales Sur', 'contacto@materialessur.com', '084262335', 'Materiales diversos'),
(15, 'Construcentro', 'contacto@construcentro.com', '084265648', 'Materiales diversos'),
(16, 'Makita Cusco', 'contacto@makitacusco.com', '084223847', 'Materiales diversos'),
(17, 'TodoHierro', 'contacto@todohierro.com', '084243621', 'Materiales diversos'),
(18, 'SuperFerretería', 'contacto@superferre.com', '084295646', 'Materiales diversos'),
(19, 'AceroPlus', 'contacto@aceroplus.com', '084238351', 'Materiales diversos'),
(20, 'TecnoFerre', 'contacto@tecnoferre.com', '084269552', 'Materiales diversos');


-- Datos CATEGORIA
INSERT INTO Categoria VALUES
(1, 'Cemento'),
(2, 'Ladrillos'),
(3, 'Metales'),
(4, 'Herramientas'),
(5, 'Electricidad'),
(6, 'Pinturas'),
(7, 'Plomería'),
(8, 'Drywall'),
(9, 'Vidrios'),
(10, 'Aditivos'),
(11, 'Cemento'),
(12, 'Ladrillos'),
(13, 'Herramientas'),
(14, 'Pinturas'),
(15, 'Clavos'),
(16, 'Tubos'),
(17, 'Madera'),
(18, 'Tornillos'),
(19, 'Pegamentos'),
(20, 'Eléctricos');

-- Datos PRODUCTO
INSERT INTO Producto VALUES
(1, 'Cemento Sol', 'Cemento tipo I', 28.50, 150, 3, 1),
(2, 'Ladrillo King Kong', 'Ladrillo artesanal cocido', 0.85, 1200, 2, 2),
(3, 'Fierro corrugado 3/8"', 'Varilla de construcción', 18.00, 500, 1, 3),
(4, 'Taladro Bosch', 'Taladro percutor 600W', 350.00, 20, 6, 4),
(5, 'Cable THW 2.5mm', 'Cable eléctrico por metro', 2.30, 1000, 1, 5),
(6, 'Pintura Látex Blanco', 'Pintura para interiores', 75.00, 40, 8, 6),
(7, 'Tubo PVC 1/2"', 'Tubería de presión', 5.50, 300, 7, 7),
(8, 'Placa drywall 1/2"', 'Placa de yeso de 1.20x2.40m', 34.00, 100, 9, 8),
(9, 'Vidrio templado 6mm', 'Hoja de 1x2m', 95.00, 25, 10, 9),
(10, 'Aditivo SikaLatex', 'Aditivo adherente para concreto', 15.90, 60, 5, 10),
(11, 'Cemento Andino', 'Producto de alta calidad', 52.00, 45, 11, 11),
(12, 'Ladrillo King Kong', 'Producto de alta calidad', 28.00, 34, 12, 12),
(13, 'Taladro Bosch', 'Producto de alta calidad', 180.00, 12, 13, 13),
(14, 'Pintura Vencedor', 'Producto de alta calidad', 70.00, 22, 14, 14),
(15, 'Clavos 2\', 'Producto de alta calidad', 12.00, 100, 15, 15),
(16, 'Tubo PVC 1/2\', 'Producto de alta calidad', 16.00, 65, 16, 16),
(17, 'Triplay 9mm', 'Producto de alta calidad', 85.00, 18, 17, 17),
(18, 'Tornillo drywall', 'Producto de alta calidad', 18.00, 200, 18, 18),
(19, 'Silicona TekBond', 'Producto de alta calidad', 24.00, 40, 19, 19),
(20, 'Cable eléctrico 2.5mm', 'Producto de alta calidad', 35.00, 75, 20, 20);

-- Datos CLIENTE
INSERT INTO Cliente VALUES
(1, 'Juan', 'Quispe', '984567321', 'Av. La Cultura 123, Cusco'),
(2, 'Rosa', 'Huallpa', '984123456', 'Calle Saphy 45, Cusco'),
(3, 'José', 'Choque', '984654789', 'Av. Collasuyo 89, Cusco'),
(4, 'Lucía', 'Mamami', '984987321', 'Urb. Magisterio B-10, Cusco'),
(5, 'Carlos', 'Ttito', '984765432', 'Av. Ejército 678, Cusco'),
(6, 'María', 'Abarca', '984000111', 'Urb. Los Jardines 32, Cusco'),
(7, 'Miguel', 'Suca', '984333222', 'Sector Tica Tica, Cusco'),
(8, 'Ana', 'Ccahuana', '984888777', 'Residencial Quillabamba, Cusco'),
(9, 'Fernando', 'Apaza', '984121212', 'Av. Garcilaso 55, Cusco'),
(10, 'Verónica', 'Paucar', '984777666', 'Calle Pampa del Castillo, Cusco'),
(11, 'Valeria', 'Lopez', '913040577', 'Av. Lopez 55, Cusco'),
(12, 'Ana', 'Gonzales', '944350660', 'Av. Gonzales 60, Cusco'),
(13, 'Luis', 'Huamán', '921122334', 'Av. Cultura 123, Cusco'),
(14, 'Carlos', 'Mamani', '944445566', 'Jr. Manco Capac 203, Cusco'),
(15, 'Lucía', 'Condori', '966778899', 'Av. La Cultura 789, Cusco'),
(16, 'Pedro', 'Flores', '932221133', 'Calle Plateros 32, Cusco'),
(17, 'Sofía', 'Ramirez', '922334455', 'Av. Ejército 404, Cusco'),
(18, 'José', 'Pérez', '987112233', 'Jr. Saphy 98, Cusco'),
(19, 'Juan', 'Cárdenas', '955667788', 'Urbanización Kennedy B-4, Cusco'),
(20, 'María', 'Quispe', '999888777', 'Urb. Santa Ursula 12, Cusco');

-- Datos USUARIO
INSERT INTO Usuario VALUES
(1, 'admin1', 'admin@sharmely.pe', 'admin123', 'Admin', NULL),
(2, 'rosahuallpa', 'rosa.h@gmail.com', 'rosa456', 'Cliente', 2),
(3, 'juanq', 'juan.q@gmail.com', 'qu1sp3!', 'Cliente', 1),
(4, 'luciam', 'lucia.m@hotmail.com', 'luci321', 'Cliente', 4),
(5, 'empleado1', 'emp1@sharmely.pe', 'trabajo123', 'Empleado', NULL),
(6, 'miguel.s', 'migs@gmail.com', 'migpass', 'Cliente', 7),
(7, 'carlos.t', 'cttito@gmail.com', 'ctpass', 'Cliente', 5),
(8, 'mariaa', 'mar.ab@gmail.com', 'mar987', 'Cliente', 6),
(9, 'fer.ap', 'fapaza@gmail.com', 'fer123', 'Cliente', 9),
(10, 'ana.cc', 'anacc@gmail.com', 'anita88', 'Cliente', 8),
(11, 'valeria.lopez', 'valeria11@gmail.com', 'claveSegura11', 'Cliente', 11),
(12, 'ana.gonzales', 'ana12@gmail.com', 'claveSegura12', 'Cliente', 12),
(13, 'luis.huaman', 'luis13@gmail.com', 'claveSegura13', 'Cliente', 13),
(14, 'carlos.mamani', 'carlos14@gmail.com', 'claveSegura14', 'Cliente', 14),
(15, 'lucia.condori', 'lucia15@gmail.com', 'claveSegura15', 'Cliente', 15),
(16, 'pedro.flores', 'pedro16@gmail.com', 'claveSegura16', 'Cliente', 16),
(17, 'sofia.ramirez', 'sofia17@gmail.com', 'claveSegura17', 'Cliente', 17),
(18, 'jose.perez', 'jose18@gmail.com', 'claveSegura18', 'Cliente', 18),
(19, 'juan.cardenas', 'juan19@gmail.com', 'claveSegura19', 'Cliente', 19),
(20, 'maria.quispe', 'maria20@gmail.com', 'claveSegura20', 'Cliente', 20);

-- Datos PEDIDO
INSERT INTO Pedido VALUES
(1, '2025-06-01', 'Pendiente', NULL, 'Pedido para obra en San Jerónimo', 1),
(2, '2025-06-01', 'Enviado', NULL, 'Compra materiales eléctricos', 2),
(3, '2025-06-02', 'Entregado', NULL, 'Pedido drywall para oficina', 4),
(4, '2025-06-02', 'Pendiente', NULL, 'Stock para ferretería', 3),
(5, '2025-06-03', 'En proceso', NULL, 'Herramientas varias', 5),
(6, '2025-06-03', 'Pendiente', NULL, 'Pintura y aditivos', 6),
(7, '2025-06-03', 'Enviado', NULL, 'Pedido semanal', 7),
(8, '2025-06-04', 'Pendiente', NULL, 'Vidrio templado', 8),
(9, '2025-06-04', 'Entregado', NULL, 'Plomería para casa', 9),
(10, '2025-06-04', 'Pendiente', NULL, 'Ladrillos y cemento', 10),
(11, '2025-05-25', 'Cancelado', NULL, 'Pedido generado desde app', 11),
(12, '2025-06-02', 'Entregado', NULL, 'Pedido generado desde app', 12),
(13, '2025-05-30', 'Pendiente', NULL, 'Pedido generado desde web', 13),
(14, '2025-06-01', 'Enviado', NULL, 'Pedido generado desde app', 14),
(15, '2025-06-03', 'Pagado', NULL, 'Pedido generado desde tienda', 15),
(16, '2025-06-02', 'Cancelado', NULL, 'Pedido generado desde app', 16),
(17, '2025-06-04', 'Pendiente', NULL, 'Pedido generado desde web', 17),
(18, '2025-06-01', 'Entregado', NULL, 'Pedido generado desde app', 18),
(19, '2025-06-03', 'Pagado', NULL, 'Pedido generado desde tienda', 19),
(20, '2025-06-04', 'Enviado', NULL, 'Pedido generado desde app', 20);

-- Datos DETALLE PEDIDO
INSERT INTO Detalle_Pedido VALUES
(1, 50, NULL, 1, 1),
(2, 300, NULL, 2, 5),
(3, 10, NULL, 3, 8),
(4, 100, NULL, 4, 2),
(5, 2, NULL, 5, 4),
(6, 5, NULL, 6, 6),
(7, 10, NULL, 7, 7),
(8, 3, NULL, 8, 9),
(9, 15, NULL, 9, 7),
(10, 500, NULL, 10, 2),
(11, 6, NULL, 11, 11),
(12, 3, NULL, 12, 12),
(13, 2, NULL, 13, 13),
(14, 4, NULL, 14, 14),
(15, 1, NULL, 15, 15),
(16, 5, NULL, 16, 16),
(17, 2, NULL, 17, 17),
(18, 3, NULL, 18, 18),
(19, 1, NULL, 19, 19),
(20, 6, NULL, 20, 20);

-- Datos PAGO
INSERT INTO Pago VALUES
(1, 'Tarjeta', 'Pagado', 1),
(2, 'Yape', 'Pendiente', 2),
(3, 'Efectivo', 'Pagado', 3),
(4, 'Transferencia', 'Pendiente', 4),
(5, 'Plin', 'Pagado', 5),
(6, 'Efectivo', 'Pendiente', 6),
(7, 'Transferencia', 'Pagado', 7),
(8, 'Tarjeta', 'Pendiente', 8),
(9, 'Yape', 'Pagado', 9),
(10, 'Efectivo', 'Pendiente', 10),
(11, 'Transferencia', 'Enviado', 11),
(12, 'Tarjeta', 'Entregado', 12),
(13, 'Efectivo', 'Pendiente', 13),
(14, 'Yape', 'Pagado', 14),
(15, 'Plin', 'Pagado', 15),
(16, 'Transferencia', 'Cancelado', 16),
(17, 'Tarjeta', 'Pendiente', 17),
(18, 'Yape', 'Pagado', 18),
(19, 'Efectivo', 'Pagado', 19),
(20, 'Plin', 'Pagado', 20);

-- Datos ENVIO
INSERT INTO Envio VALUES
(1, 'Av. La Cultura 123', 'Sharmely Logística', 20.00, '2025-06-02', 'Pendiente', 1),
(2, 'Calle Saphy 45', 'Sharmely Logística', 15.00, '2025-06-02', 'Enviado', 2),
(3, 'Urb. Magisterio B-10', 'Sharmely Logística', 18.00, '2025-06-03', 'Entregado', 3),
(4, 'Av. Collasuyo 89', 'Sharmely Logística', 22.00, '2025-06-03', 'Pendiente', 4),
(5, 'Av. Ejército 678', 'Sharmely Logística', 10.00, '2025-06-04', 'En proceso', 5),
(6, 'Urb. Los Jardines 32', 'Sharmely Logística', 12.00, '2025-06-04', 'Pendiente', 6),
(7, 'Sector Tica Tica', 'Sharmely Logística', 14.00, '2025-06-04', 'Enviado', 7),
(8, 'Residencial Quillabamba', 'Sharmely Logística', 25.00, '2025-06-05', 'Pendiente', 8),
(9, 'Av. Garcilaso 55', 'Sharmely Logística', 11.00, '2025-06-05', 'Entregado', 9),
(10, 'Calle Pampa del Castillo', 'Sharmely Logística', 16.00, '2025-06-05', 'Pendiente', 10),
(11, 'Mz Q Lt 22 Urbanización Cusco', 'SharmelyLogistics', 16.00, '2025-06-09', 'Pendiente', 11),
(12, 'Mz Q Lt 24 Urbanización Cusco', 'Serpost', 30.00, '2025-06-06', 'Pendiente', 12),
(13, 'Urb. Ttio K-12, Cusco', 'Olva Courier', 18.00, '2025-06-07', 'Enviado', 13),
(14, 'Av. El Sol 123, Cusco', 'SharmelyLogistics', 22.00, '2025-06-08', 'Entregado', 14),
(15, 'Jr. Ayacucho 45, Cusco', 'Serpost', 20.00, '2025-06-07', 'Pagado', 15),
(16, 'Av. Pardo 321, Cusco', 'Olva Courier', 25.00, '2025-06-10', 'Cancelado', 16),
(17, 'Jr. Zela 78, Cusco', 'SharmelyLogistics', 18.00, '2025-06-11', 'Pendiente', 17),
(18, 'Av. Grau 92, Cusco', 'Serpost', 16.00, '2025-06-08', 'Entregado', 18),
(19, 'Urb. Kennedy A-21, Cusco', 'Olva Courier', 19.00, '2025-06-09', 'Entregado', 19),
(20, 'Av. Arequipa 33, Cusco', 'SharmelyLogistics', 23.00, '2025-06-10', 'Enviado', 20);

