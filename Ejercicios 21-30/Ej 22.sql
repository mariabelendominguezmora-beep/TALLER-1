#Ejercicio 22: Crea una clasificación de clientes por nivel de gasto:
o "Alto Valor" si gastó más de $5,000
o "Medio Valor" si gastó entre $2,000 y $5,000
o "Bajo Valor" si gastó menos de $2,000
o Muestra nombre, categoría de gasto y total gastado.

R/Consulta SQL, se usa WHEN para especificar "cuando pase esto...",
THEN se usa para "entonces devulve esto", ELSE para poner la condicion 
de "si no se cumple nada anterior".

SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado,
       CASE
           WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
           WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
           ELSE 'Bajo Valor'
       END AS categoria_cliente
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente
