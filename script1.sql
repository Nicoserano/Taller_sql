/* Crear la base de datos */
CREATE DATABASE tienda;

/* Seleccionar la base de datos */
USE tienda;

/* Crear la tabla de proveedores */
CREATE TABLE proveedores(
	id_proveedor INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50) NOT NULL,
	direccion VARCHAR(60) ,
	telefono INT, 
    PRIMARY KEY (id_proveedor)
);


/* Crear la tabla de productos */
CREATE TABLE productos(
	id_producto INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(40) NOT NULL,
	id_proveedor INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (id_producto),
	FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor)
);

/* Crear la tabla de clientes */
CREATE TABLE clientes(
	id_cliente INT NOT NULL AUTO_INCREMENT,
	tipo_documento VARCHAR(20) NOT NULL,
    numero_documento VARCHAR(15) NOT NULL,
	PRIMARY KEY (id_cliente)
);

/* Crear la tabla de ventas */
CREATE TABLE ventas (
	id_venta INT NOT NULL AUTO_INCREMENT,
	id_producto INT NOT NULL,
	fecha DATE NOT NULL,
    id_cliente INT NOT NULL,
	cantidad INT NOT NULL,
	subtotal DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (id_venta),
	FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


/* Insertar información previa en la tabla de proveedores */
INSERT INTO proveedores (nombre, direccion, telefono) VALUES
	('Postobon', 'Calle 123, Ciudad Bucaramanga', '5551234'),
	('Frito lay', 'Avenida 456, Ciudad Barranquilla', '5555678'),
	('Ideal', 'Plaza xy, Ciudad Bogota', '5559999');
 
 
/* Insertar información previa en la tabla de productos */
INSERT INTO productos (nombre, id_proveedor, precio) VALUES
	('Gaseosa manzana', 1, 3500.00),
	('Gaseosa uva', 1, 2500.00),
	('Papas', 2, 1500.00),
	('Papas grandes', 2, 4000.00),
	('Arroz', 3, 1800.00);	
    

/* Insertar información previa en la tabla de clientes */
INSERT INTO clientes(tipo_documento, numero_documento) VALUES
	('CC', '98765432101'),
    ('CE', '12345678901'),
    ( 'CC', '87654321');

/* Insertar información previa en la tabla de ventas */
INSERT INTO ventas (id_producto, fecha, id_cliente,  cantidad, subtotal) VALUES
	(1, '2022-01-01',1,2, 7000.00),
	(2, '2022-01-02',3,3, 7500.00),
	(3, '2022-01-03',2,1, 1500.00),
	(4, '2022-01-04',1,4, 16000.0),
	(5, '2022-01-05',2, 2, 9000.00);

/* Borrado lógico de ventas */
UPDATE ventas SET cantidad = 0, subtotal=0 WHERE id_venta = 1;
UPDATE ventas SET cantidad = 0 ,subtotal=0 WHERE id_venta = 3;

/* Borrado físico de ventas */
DELETE FROM ventas WHERE id_venta = 5;
DELETE FROM ventas WHERE id_venta = 4;

/* Modificación de productos */
UPDATE productos SET nombre = 'gaseosa limon', id_proveedor = 1 WHERE id_producto = 1;
UPDATE productos SET nombre = 'Platanos', id_proveedor = 2 WHERE id_producto = 2;
UPDATE productos SET nombre = 'Aceite', id_proveedor = 3 WHERE id_producto = 5;





    

    


