-- ¿Que cliente realizó la compra más cara?
SELECT c.nombre Nombre_Cliente, f.numero Nro_Factura, f.fecha Fecha_Compra, f.total Total_Factura 
FROM facturas f INNER JOIN clientes c 
ON f.id_cliente = c.id
ORDER BY total DESC LIMIT 1;

--¿Qué cliente pagó sobre 100000 de monto?
SELECT c.nombre Nombre_Cliente, f.numero Nro_Factura, f.fecha Fecha_Compra, f.total Total_Factura 
FROM facturas f INNER JOIN clientes c 
ON f.id_cliente = c.id
WHERE f.total > 200;

--¿Cuantos clientes han comprado el producto 6?
SELECT COUNT(DISTINCT(id_cliente)) cantidad_clientes FROM facturas WHERE numero IN 
    (
        SELECT nro_factura FROM detalle_facturas
        WHERE id_producto = 6
    );
