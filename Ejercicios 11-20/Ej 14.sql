#Ejercicio 14: Muestra todas las ventas realizadas en el año 2025, ordenadas por fecha (más
recientes primero).

R/Consulta SQL, se utiliza DESC para ordenar de mayor a menor. 

SELECT id_venta, fecha_venta, total_venta
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER BY fecha_venta DESC;

