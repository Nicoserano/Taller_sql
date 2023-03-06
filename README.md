# Taller_sql
Taller de sql -Sofka- cantera nivel 2

Este repositorio contiene dos archivos SQL, script1.sql y script2.sql, que se utilizan para crear y consultar una base de datos en MySQL para una tienda. La base de datos cumple con la primera, segunda y tercera forma normal de SQL.

<h2>Tablas y relaciones</h2>

La base de datos consta de cuatro tablas:

1.proveedores: Contiene información de los proveedores de los productos de la tienda. Cada proveedor tiene un identificador único id_proveedor, un nombre, dirección y número de teléfono.

2.productos: Contiene información de los productos que se venden en la tienda. Cada producto tiene un identificador único id_producto, un nombre, un precio y un identificador de proveedor id_proveedor. La tabla productos está relacionada con la tabla proveedores a través de la clave foránea id_proveedor.

3.clientes: Contiene información de los clientes que compran en la tienda. Cada cliente tiene un identificador único id_cliente y un tipo y número de documento que se solicitan para poder realizar una venta.

4.ventas: Contiene información de las ventas realizadas en la tienda. Cada venta tiene un identificador único id_venta, la fecha de la venta, el identificador de cliente id_cliente, el identificador de producto id_producto, la cantidad vendida y el subtotal de la venta. La tabla ventas está relacionada con las tablas productos y clientes a través de las claves foráneas id_producto e id_cliente, respectivamente.

<h2>Scripts</h2>
<h3>script1.sql</h3>
El archivo script1.sql se utiliza para crear las tablas y llenarlas con información previa para poder manipular la base de datos a nivel de datos. También incluye consultas para realizar borrados lógicos y físicos de ventas realizadas, así como para modificar productos en su nombre y proveedor que los provee.

<h3>script2.sql</h3>
El archivo script2.sql contiene consultas SQL que se pueden utilizar para obtener información de la base de datos. Incluye consultas para obtener los productos vendidos digitando el tipo y número de documento del cliente, y para consultar productos por medio de su nombre, mostrando quiénes han sido sus proveedores. Además, incluye una consulta que permite ver cuál ha sido el producto más vendido y en qué cantidades, de mayor a menor.

<h2>Uso</h2>
Para utilizar estos scripts, es necesario tener instalado MySQL en su computadora. Descargue los archivos SQL y ejecútelos en su cliente de MySQL para crear la base de datos y realizar consultas.

Tenga en cuenta que los archivos SQL están diseñados para trabajar en una base de datos llamada "tienda". Si desea utilizar otro nombre de base de datos, asegúrese de cambiar los comandos CREATE DATABASE y USE en el archivo script1.sql a su nombre de base de datos preferido.
