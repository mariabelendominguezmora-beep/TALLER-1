#Ejercicio 24:Para cada mes en 2025, calcula: total de ventas,
número de transacciones, y ticket promedio.

R/Consulta SQL, se usa COUNT para contar los registros.

SELECT strftime('%m', fecha_venta) AS mes,
       SUM(total_venta) AS total_ventas,
       COUNT(*) AS transacciones,
       AVG(total_venta) AS ticket_promedio
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
GROUP BY mes
ORDER BY mes;
