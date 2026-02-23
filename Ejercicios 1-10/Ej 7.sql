# Ejercicio 7: Enlista todos los productos de "Accesorios" con precio menor a $500.

R/ Consulta SQL, se usa AND para combinar multiples condiciones dentro
del WHERE donde todas las condiciones deben cumplirse al mismo tiempo.

SELECT nombre, precio
FROM productos
WHERE categoria = 'Accesorios'
AND precio < 500; 