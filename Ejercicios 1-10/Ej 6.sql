#Ejercicio 6: ¿Cuál fue el monto total de ventas en toda la historia?

R/ Consulta SQL

SELECT SUM(total_venta) AS monto_total_historico
FROM ventas;
