#Ejercicio 15: ¿Cuál es el accesorio más barato disponible?

R/Consulta SQL

SELECT id_producto, nombre, MIN(precio) AS accesorio_mas_barato
FROM productos
WHERE categoria = 'Accesorios';