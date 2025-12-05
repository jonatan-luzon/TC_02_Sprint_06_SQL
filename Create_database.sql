---------------------------------------------------------
-- TABLA CLIENTE
---------------------------------------------------------
CREATE TABLE CLIENTE (
    idCliente INT PRIMARY KEY,
    nombreCliente VARCHAR(100),
    edadCliente INT,
    correoCliente VARCHAR(120),
    ciudadCliente VARCHAR(100),
    cuentaBancariaCliente VARCHAR(50)
);

---------------------------------------------------------
-- TABLA TIENDA
---------------------------------------------------------
CREATE TABLE TIENDA (
    idTienda INT PRIMARY KEY,
    nombreTienda VARCHAR(100),
    ciudadTienda VARCHAR(100)
);

---------------------------------------------------------
-- RELACIÓN CLIENTE – TIENDA (COMPRAR) → N:M
---------------------------------------------------------
CREATE TABLE COMPRAR (
    idCliente INT,
    idTienda INT,
    fecha DATE
    PRIMARY KEY(idCliente, idTienda, fecha),
    FOREIGN KEY(idCliente) REFERENCES CLIENTE(idCliente),
    FOREIGN KEY(idTienda) REFERENCES TIENDA(idTienda)
);

---------------------------------------------------------
-- TABLA EMPLEADOS
---------------------------------------------------------
CREATE TABLE EMPLEADOS (
    idEmpleado INT PRIMARY KEY,
    nombreEmpleado VARCHAR(100),
    edadEmpleado INT,
    correoEmpleado VARCHAR(120),
    ciudadEmpleado VARCHAR(100),
    cuentaBancariaEmpleado VARCHAR(50),
    sueldoEmpleado DECIMAL(10,2),
    ventasMesEmpleado INT,
    idTienda INT UNIQUE,
    FOREIGN KEY(idTienda) REFERENCES TIENDA(idTienda)
);

-- Relación 1:1 entre EMPLEADOS y TIENDA
-- Ya está representada mediante idTienda UNIQUE

---------------------------------------------------------
-- TABLA PRODUCTO
---------------------------------------------------------
CREATE TABLE PRODUCTO (
    idProducto INT PRIMARY KEY,
    nombreProducto VARCHAR(100),
    descripcionProducto TEXT,
    precioProducto DECIMAL(10,2)
);

---------------------------------------------------------
-- RELACIÓN TIENDA – PRODUCTO (TENER) → N:M
---------------------------------------------------------
CREATE TABLE TENER (
    idTienda INT,
    idProducto INT,
    cantidad INT,
    PRIMARY KEY(idTienda, idProducto),
    FOREIGN KEY(idTienda) REFERENCES TIENDA(idTienda),
    FOREIGN KEY(idProducto) REFERENCES PRODUCTO(idProducto)
);

---------------------------------------------------------
-- TABLA CATEGORÍA
---------------------------------------------------------
CREATE TABLE CATEGORIA (
    idCategoria INT PRIMARY KEY,
    nombreCategoria VARCHAR(100)
);

---------------------------------------------------------
-- TABLA PIEZAS
---------------------------------------------------------
CREATE TABLE PIEZAS (
    idPieza INT PRIMARY KEY,
    nombrePieza VARCHAR(100),
    colorPieza VARCHAR(50),
    precioPieza DECIMAL(10,2),
    idCategoria INT,
    FOREIGN KEY(idCategoria) REFERENCES CATEGORIA(idCategoria)
);

---------------------------------------------------------
-- RELACIÓN PRODUCTO – PIEZAS (FABRICAR) → N:M
---------------------------------------------------------
CREATE TABLE FABRICAR (
    idProducto INT,
    idPieza INT,
    PRIMARY KEY(idProducto, idPieza),
    FOREIGN KEY(idProducto) REFERENCES PRODUCTO(idProducto),
    FOREIGN KEY(idPieza) REFERENCES PIEZAS(idPieza)
);

---------------------------------------------------------
-- TABLA PROVEEDORES
---------------------------------------------------------
CREATE TABLE PROVEEDORES (
    idProveedor INT PRIMARY KEY,
    nombreProveedor VARCHAR(100),
    direccionProveedor VARCHAR(150),
    ciudadProveedor VARCHAR(100),
    provinciaProveedor VARCHAR(100)
);

---------------------------------------------------------
-- RELACIÓN PIEZAS – PROVEEDORES (SUMINISTRAR) → N:M
---------------------------------------------------------
CREATE TABLE SUMINISTRAR (
    idPieza INT,
    idProveedor INT,
    fechaSuministro DATE,
    fechaRecepcion DATE,
    PRIMARY KEY(idPieza, idProveedor, fechaSuministro),
    FOREIGN KEY(idPieza) REFERENCES PIEZAS(idPieza),
    FOREIGN KEY(idProveedor) REFERENCES PROVEEDORES(idProveedor)
);
