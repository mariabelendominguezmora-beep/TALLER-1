#Ejercicio 16: Cuál es el cliente que más dinero ha gastado en total?
Muestra su nombre y monto total.

R/Consulta SQL, se usa ON para para indicar como se relacionan
las tablas, se usa GROUP BY para agrupar registros y LIMIT 
para restringir la cantidad de resultados 

SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente
ORDER BY total_gastado DESC
LIMIT 1;
