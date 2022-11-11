-- BORRAMOS LA BASE DE DATOS SI EXISTE
DROP DATABASE "desafio2-marco-contreras-911";
-- CREAMOS LA BASE DE DATOS desafio2-nombre-apellido-digitos
CREATE DATABASE "desafio2-marco-contreras-911";

-- NOS CONECTAMOS A LA DB
\c desafio2-marco-contreras-911;

-- TABLA
CREATE TABLE IF NOT EXISTS INSCRITOS(
	cantidad INT, 
	fecha DATE, 
	fuente VARCHAR
);

-- BORRAMOS POR SI EJECUTAMOS POR SEGUNDA VEZ
DELETE FROM inscritos;

-- TUPLAS
INSERT INTO inscritos VALUES
(44,'01/01/2021','Blog'),
(56,'01/01/2021','Página'),
(39,'01/02/2021','Blog'),
(81,'01/02/2021','Página'),
(12,'01/03/2021','Blog'),
(91,'01/03/2021','Página'),
(48,'01/04/2021','Blog' ),
(45,'01/04/2021','Página'),
(55,'01/05/2021','Blog'),
(33,'01/05/2021','Página'),
(18,'01/06/2021','Blog'),
(12,'01/06/2021','Página'),
(34,'01/07/2021','Blog'),
(24,'01/07/2021','Página'),
(83,'01/08/2021','Blog'),
(99,'01/08/2021','Página');


-- 1) ¿Cuántos registros hay?

SELECT COUNT(*) AS "Total registros" FROM inscritos;

-- 2) ¿Cuántos inscritos hay en total?

SELECT SUM(cantidad) AS "Total inscritos" 
FROM inscritos;

-- 3) ¿Cuál o cuáles son los registros de mayor antiguedad?
-- (HINT: ocupar subconsultas)

SELECT cantidad, fecha, fuente FROM inscritos 
WHERE fecha = (SELECT min(fecha) FROM inscritos);


-- 4) ¿Cuántos inscritos hay por día?  
-- (entendiendo un día como una fecha distinta de ahora en adelante)

SELECT SUM(cantidad) AS "Total inscritos por día",  fecha FROM inscritos 
GROUP BY fecha;

-- 5) ¿Cuántos inscritos hay por fuente?

SELECT SUM(cantidad) AS "Total inscritos por fuente",  fuente FROM inscritos 
GROUP BY fuente;

-- 6) ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?

SELECT fecha, sum(cantidad) FROM inscritos 
GROUP BY fecha ORDER BY sum(cantidad) DESC LIMIT 1;

-- 7) ¿Qué días se inscribieron la mayor cantidad de personas utilizando el blog y cuántas personas fueron?
-- HINT: si hay más de un registro, tomar el primero

SELECT cantidad, fecha, fuente FROM inscritos 
WHERE cantidad = (SELECT MAX(cantidad) FROM inscritos WHERE fuente='Blog');

-- 8) ¿Cuántas personas en promedio se inscriben en un día?

SELECT ROUND(SUM(cantidad)/COUNT(distinct fecha), 0) AS "Promedio inscritos diariamente" FROM inscritos;


-- 9) ¿Qué días se inscribieron más de 50 personas?

SELECT SUM(cantidad) as "Total inscritos", fecha FROM inscritos 
GROUP BY fecha 
HAVING SUM(cantidad) > 50
ORDER BY fecha DESC;

-- 10) ¿Cuántas personas se registraron en promedio cada día a partir del tercer día?
-- HINT: ingresa manualmente la fecha del tercer día

SELECT ROUND(AVG(cantidad)) AS "Promedio de registros", fecha FROM inscritos 
GROUP BY fecha HAVING fecha > '2021-03-01' 
ORDER BY fecha;