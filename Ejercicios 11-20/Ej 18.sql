#Ejercicio 18: Enlista todos los clientes mayores de 60 años que han
hecho compras, mostrando
nombre, edad aproximada y total gastado.

R/Consulta SQL, donde CAST se usa para convertir un tipo de dato en
otro tipo de dato, y AS INTEGER se usa para convertir un tipo de 
dato numerico.

SELECT c.nombre,
       CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365 AS INTEGER) AS edad,
       SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE edad > 60
GROUP BY c.id_cliente
ORDER BY edad 
