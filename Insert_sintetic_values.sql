---------------------------------------------------------
-- INSERTS CLIENTE
---------------------------------------------------------
INSERT INTO CLIENTE (idCliente, nombreCliente, edadCliente, correoCliente, ciudadCliente, cuentaBancariaCliente)
VALUES
(1, 'Ana Gómez', 28, 'ana.gomez@example.com', 'Madrid', 'ES1234567801'),
(2, 'Luis Pérez', 35, 'luis.perez@example.com', 'Barcelona', 'ES1234567802'),
(3, 'María López', 22, 'maria.lopez@example.com', 'Valencia', 'ES1234567803'),
(4, 'Carlos Ruiz', 41, 'carlos.ruiz@example.com', 'Sevilla', 'ES1234567804'),
(5, 'Laura Torres', 30, 'laura.torres@example.com', 'Bilbao', 'ES1234567805');

---------------------------------------------------------
-- INSERTS TIENDA
---------------------------------------------------------
INSERT INTO TIENDA (idTienda, nombreTienda, ciudadTienda)
VALUES
(1, 'TechWorld', 'Madrid'),
(2, 'GamerZone', 'Barcelona'),
(3, 'HomePlus', 'Valencia');

---------------------------------------------------------
-- INSERTS COMPRAR (N:M CLIENTE–TIENDA)
---------------------------------------------------------
INSERT INTO COMPRAR (idCliente, idTienda)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(4, 2),
(5, 1),
(5, 3);

---------------------------------------------------------
-- INSERTS EMPLEADOS
---------------------------------------------------------
INSERT INTO EMPLEADOS (idEmpleado, nombreEmpleado, edadEmpleado, correoEmpleado, ciudadEmpleado, cuentaBancariaEmpleado, sueldoEmpleado, ventasMesEmpleado, idTienda)
VALUES
(1, 'Jorge Martín', 29, 'jorge.martin@example.com', 'Madrid', 'ES9988776601', 1800.50, 120, 1),
(2, 'Sonia Vidal', 33, 'sonia.vidal@example.com', 'Barcelona', 'ES9988776602', 1950.00, 150, 2),
(3, 'Ricardo Navas', 41, 'ricardo.navas@example.com', 'Valencia', 'ES9988776603', 1750.75, 100, 3);

---------------------------------------------------------
-- INSERTS PRODUCTO
---------------------------------------------------------
INSERT INTO PRODUCTO (idProducto, nombreProducto, descripcionProducto, precioProducto)
VALUES
(1, 'Laptop Pro X', 'Portátil de alto rendimiento', 1299.99),
(2, 'Teclado Mecánico', 'Teclado con switches azules', 89.90),
(3, 'Silla Gamer', 'Silla ergonómica con soporte lumbar', 179.50),
(4, 'Cafetera Plus', 'Cafetera automática con molinillo', 249.00);

---------------------------------------------------------
-- INSERTS TENER (N:M TIENDA–PRODUCTO)
---------------------------------------------------------
INSERT INTO TENER (idTienda, idProducto)
VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(3, 4);

---------------------------------------------------------
-- INSERTS CATEGORIA
---------------------------------------------------------
INSERT INTO CATEGORIA (idCategoria, nombreCategoria)
VALUES
(1, 'Electrónica'),
(2, 'Accesorios'),
(3, 'Hogar'),
(4, 'Mobiliario');

---------------------------------------------------------
-- INSERTS PIEZAS
---------------------------------------------------------
INSERT INTO PIEZAS (idPieza, nombrePieza, colorPieza, precioPieza, idCategoria)
VALUES
(1, 'Pantalla LED', 'Negro', 150.00, 1),
(2, 'Tecla Switch', 'Azul', 1.50, 2),
(3, 'Espuma Lumbar', 'Negro', 12.00, 4),
(4, 'Filtro Café', 'Marrón', 5.00, 3),
(5, 'Batería Interna', 'Negro', 45.00, 1);

---------------------------------------------------------
-- INSERTS FABRICAR (N:M PRODUCTO–PIEZAS)
---------------------------------------------------------
INSERT INTO FABRICAR (idProducto, idPieza)
VALUES
(1, 1),
(1, 5),
(2, 2),
(3, 3),
(4, 4);

---------------------------------------------------------
-- INSERTS PROVEEDORES
---------------------------------------------------------
INSERT INTO PROVEEDORES (idProveedor, nombreProveedor, direccionProveedor, ciudadProveedor, provinciaProveedor)
VALUES
(1, 'SupplyTech SA', 'Calle Mayor 15', 'Madrid', 'Madrid'),
(2, 'Pieces&More', 'Av. Diagonal 120', 'Barcelona', 'Barcelona'),
(3, 'IndustrialParts', 'Ronda Norte 8', 'Valencia', 'Valencia');

---------------------------------------------------------
-- INSERTS SUMINISTRAR (N:M PIEZAS–PROVEEDORES)
---------------------------------------------------------
INSERT INTO SUMINISTRAR (idPieza, idProveedor, fechaSuministro, fechaRecepcion)
VALUES
(1, 1, '2024-01-10', '2024-01-13'),
(1, 2, '2024-02-05', '2024-02-08'),
(2, 2, '2024-01-20', '2024-01-22'),
(3, 3, '2024-03-01', '2024-03-03'),
(4, 3, '2024-01-12', '2024-01-14'),
(5, 1, '2024-02-18', '2024-02-21');
