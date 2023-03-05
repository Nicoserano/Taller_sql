/* Seleccionar la base de datos */
USE tienda;

/*consulta para buscar los productos vendidos mediante el tipo y numero de documento del cliente*/
SELECT v.fecha , p.nombre, v.cantidad
FROM ventas v
INNER JOIN productos p ON v.id_producto = p.id_producto
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
WHERE c.tipo_documento = 'cc' AND c.numero_documento = '98765432101';

/*consultar proveedor mediante el nombre del producto*/
SELECT pr.nombre
FROM productos p
INNER JOIN proveedores pr ON p.id_proveedor = pr.id_proveedor
WHERE p.nombre='Papas';

/*consultar el producto mas vendido y ordenar los productos de mas a menos vendido*/
SELECT p.nombre, SUM(v.cantidad) AS cantidad
FROM ventas v
INNER JOIN productos p ON v.id_producto = p.id_producto
GROUP BY p.nombre
ORDER BY cantidad DESC;




