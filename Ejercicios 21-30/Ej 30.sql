#Ejercicio 30: Genera un análisis demográfico: para cada rango de edad
 (18-29, 30-39, ..., 70+),cuenta clientes únicos, número de 
 transacciones e ingresos totales. Ordena por rango de edad.

 R/ Consulta SQL, Traer todos los registros de la tabla izquierda, 
 aunque no tengan coincidencia en la tabla derecha.

WITH edades AS (
    SELECT id_cliente,
           CAST((julianday('now') - julianday(fecha_nacimiento)) / 365 AS INTEGER) AS edad
    FROM clientes
)
SELECT 
    CASE
        WHEN edad BETWEEN 18 AND 29 THEN '18-29'
        WHEN edad BETWEEN 30 AND 39 THEN '30-39'
        WHEN edad BETWEEN 40 AND 49 THEN '40-49'
        WHEN edad BETWEEN 50 AND 59 THEN '50-59'
        WHEN edad BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT c.id_cliente) AS clientes_unicos,
    COUNT(v.id_venta) AS transacciones,
    SUM(v.total_venta) AS ingresos
FROM edades e
JOIN clientes c ON e.id_cliente = c.id_cliente
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY rango_edad
ORDER BY rango_edad;
