#Ejercicio 17: ¿Cuánto dinero hemos dejado de ingresar por el cupón 
"ULTIMO_SUSPIRO"? 

R/ Consulta SQL, se usa SUM para sumar los valores numericos de
una columna

SELECT SUM(
    (total_venta / 0.70) - total_venta
) AS dinero_no_ingresado
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';
