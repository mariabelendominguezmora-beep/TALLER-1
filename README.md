# TALLER-1
Infraestructura de base de datos     

Taller SQL – El Último Salto

Este repositorio contiene la solución del Taller SQL “El Último Salto”, el cual consiste en analizar una base de datos de una tienda especializada en paracaidismo y deportes extremos ubicada en Pasto, Nariño.
El objetivo del taller es aplicar consultas en SQL para responder diferentes preguntas de negocio relacionadas con clientes, productos, ventas, uso de cupones y análisis demográfico.
Base de Datos
Se trabajó con el archivo tienda.db, el cual contiene 4 tablas:
clientes
productos
ventas
detalle_ventas

Objetivo:
Aplicar consultas SQL para analizar información de clientes, productos y ventas, generando métricas comerciales que apoyen la toma de decisiones estratégicas.

Productos Principales
La tienda ofrece dos grandes categorías:
-Paracaídas (militares, deportivos y de emergencia)
-Accesorios de seguridad (cascos, altímetros, trajes de vuelo y gafas)

Existe un cupón llamado “ULTIMO_SUSPIRO” que ofrece un 30% de descuento a clientes mayores de 60 años (llamados “Saltadores de Oro”).
Para calcular el dinero que la empresa dejó de recibir por este descuento, se asumió que el valor pagado corresponde al 70% del valor original, por lo que se utilizó la fórmula:
monto_original = monto_pagado / 0.70.

Todas las consultas son de solo lectura (SELECT), no se realizaron modificaciones a la base de datos.

-Se utilizaron funciones propias de SQLite como strftime() para filtrar por año.
-Para el cálculo de edad se utilizó CAST(... AS INTEGER).
-Se asumió que los nombres de columnas corresponden exactamente a los definidos en la base de datos original.
-En los ejercicios de clasificación se utilizó CASE WHEN para segmentar clientes según nivel de gasto.
Este taller me permitió reforzar el uso de funciones de agregación, JOIN, GROUP BY, HAVING y subconsultas para análisis de información comercial.