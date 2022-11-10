-- CREO UN USUARIO CON createuser
-- createuser -P -d -e marco911
-- CREO SU RESPECTIVA DB PARA EL NUEVO ROL
-- createdb marco911

-- CONEXIÓN CON EL NUEVO ROL
-- psql -U marco911 -d marco911 -h localhost -P 5432 -W

-- CREAR LA BASE DE DATOS
CREATE DATABASE "desafio-marco-contreras-123";

-- PODEMOS VER LA NUEVA BD CONSULTANDO LA VISTA pg_database;
-- SELECT datname FROM pg_database;

-- ESTABLECEMOS LA CONEXIÓN A LA BD CREADA ANTERIORMENTE
\c desafio-marco-contreras-123

-- DAMOS FORMATO A LA SALIDA DE LAS TABLE
\pset border 2

-- CREAMOS UNA TABLA PARA LA ENTIDAD CLIENTES
CREATE TABLE IF NOT EXISTS clients (
	email VARCHAR(50),
	name VARCHAR NOT NULL,
	phone VARCHAR(16) NOT NULL,
	company VARCHAR(50) NOT NULL,
	priority SMALLINT,
	CHECK (priority BETWEEN 1 AND 10)
);


-- INGRESAMOS NUEVAS TUPLAS A LA TABLA CLINTES 

INSERT INTO clients VALUES
('marco@gmail.com', 'marco', '+569-94687949', 'tata', 6),
('felipe@gmail.com', 'felipe', '+569-94281949', 'ibm', 2),
('evelyn@gmail.com', 'evelyn', '+569-94181929', 'facebook', 10),
('carlos@gmail.com', 'carlos', '+569-943831909', 'bell', 3),
('francisco@gmail.com', 'francisco', '+569-94481929', 'ibm', 5),
('alan@gmail.com', 'alan', '+569-94881909', 'facebook', 8),
('pepe@gmail.com', 'pepe', '+569-34393909', 'cognita', 1),
('drauco@gmail.com', 'drauco', '+569-39335909', 'incognita', 2),
('jaime@gmail.com', 'jaime', '+569-39333109', 'facebook', 4),
('paula@gmail.com', 'paula', '+569-39331909', 'github', 9);

-- SELECCIONAR A LOS 3 CLIENTES CON MAYOR PRIORIDAD  

\C 'Clientes con mayor prioridad'
SELECT email, name, phone, company, priority FROM clients
ORDER BY priority DESC limit 3;


-- SELECCIONAR UNA EMPRESA O PRIORIDAD,CONFORME DEVUELVA DOS RESULTADOS

\C 'UNA EMPRESA O PRIORIDAD (2 RESULTADOS)'
SELECT email, name, company FROM clients 
WHERE priority=4 OR company='tata';
