#Ejercicio 9:  ¿Cuál fue la venta con mayor monto en toda la historia?

R/ Consulta SQL, el JOIN se utiliza para realizar consulta
en dos tablas.

SELECT  MAX(total_venta), nombre AS venta_mas_alta
FROM ventas
JOIN productos
