#Ejercicio 20: Para cada categoría de producto, calcula el ingreso total
cantidad de unidades
vendidas y ticket promedio por venta.

R/Consulta SQL

SELECT p.categoria,
       SUM(v.total_venta) AS ingreso_total,
       SUM(dv.cantidad) AS unidades_vendidas,
       AVG(v.total_venta) AS ticket_promedio
FROM ventas v
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.categoria
