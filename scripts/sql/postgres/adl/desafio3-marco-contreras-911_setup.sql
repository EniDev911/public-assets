/*
CREAR BASE DE DATOS PATRON desafio3-tuNombre-tuApellido-3digitos 
*/
DROP DATABASE IF EXISTS "desafio3-marco-contreras-911";
CREATE DATABASE "desafio3-marco-contreras-911";
/*
CREAR TABLA USUARIOS
Donde:
- El id es serial.
- El rol es un varchar que puede ser "administrador" o "usuario", no es necesario limutarlo
- El resto de los campos definirlos utilizando el mejor criterio. */

DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios(
    id SERIAL PRIMARY KEY,
    email VARCHAR(40) NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    rol VARCHAR(20),
    CHECK (rol = 'administrador' OR rol = 'usuario')
);

/* 
Agregar 5 usuarios en la base de datos, debe haber al menos un usuario con el rol de administrador */

INSERT INTO usuarios (email, nombre, apellido, rol)
VALUES 
('marco@gmail.com', 'marco', 'conteras', 'administrador'),
('pedro@gmail.com', 'pedro', 'villarroel', 'usuario'), 
('javier@gmail.com', 'javier', 'vargas', 'usuario'), 
('luis@gmail.com', 'luis', 'rojas', 'usuario'), 
('fabian@gmail.com', 'fabian', 'aguirre', 'usuario');

-- SELECT * from usuarios;

/*
CREAR TABLA POSTS
Donde:
- fecha_creación y fecha_actualización son de tipo timestamp.
- destacado es un boolean.
- usuario_id es un bigint y es utilizado para conectar con el usuario que escribió el post.
- título es un varchar.
- contenido es un tipo text. */

DROP TABLE IF EXISTS posts;
CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    título VARCHAR(50) NOT NULL,
    contenido TEXT,
    fecha_creación TIMESTAMP,
    fecha_actualización TIMESTAMP,
    destacado BOOLEAN,
    usuario_id BIGINT
);

/*
Ingresar 5 posts:

- El post con id 1 y 2 deben pertenecer al usuario administrador.
- El post 3 y 4 asignarlo al usuario que prefieras (no puede ser el administrador)
- El post 5 no debe tener usuario_id asignado */

INSERT INTO posts (título, contenido, fecha_creación, fecha_actualización, destacado, usuario_id)
VALUES
('instalar postgres en ubuntu', 'Lorem Ipsum Content1 ....','2019-03-02'::timestamp, '2019-03-02'::timestamp, 't', 1),
('instalar postgres en fedora', 'Lorem Ipsum Content2 ....','2020-03-02'::timestamp, '2020-03-02'::timestamp, 't', 1),
('conectarse desde psql', 'Lorem Ipsum Content3 ....','2021-04-06'::timestamp, '2021-04-06'::timestamp, 't', 2),
('crear una base de datos en postgres', 'Lorem Ipsum Content3 ....','2021-05-22'::timestamp, '2021-05-22'::timestamp, 'f', 3),
('meta-comandos de psql', 'Lorem Ipsum Content3 ....','2023-01-01'::timestamp, '2023-01-01'::timestamp, 'f', NULL);

-- SELECT * FROM posts;

/* 
CREAR TABLA COMENTARIOS
Donde:
- fecha_creación es un timestamp.
- usuario_id es un bigint para conectarlo con el usuario que escribió el comentario.
- post_id es un bigint que se utilizará para conectarlo con el id de la tabla post.
- contenido es un tipo text. */

DROP TABLE IF EXISTS comentarios;
CREATE TABLE comentarios(
    id SERIAL PRIMARY KEY,
    contenido TEXT NOT NULL,
    fecha_creación TIMESTAMP,
    usuario_id BIGINT,
    post_id BIGINT
);

/*
Ingresar 5 comentarios:

Los comentarios con id 1, 2 y 3 deben estar asociado al post 1, a los usuarios 1, 2 y 3 respectivamente.
Los comentarios 4 y 5 deben estar asociado al post 2, a los usuarios 1 y 2 respectivamente.*/
INSERT INTO comentarios (contenido, fecha_creación, usuario_id, post_id)
VALUES
('Comentario Lorem Ipsum Content1 ....','2019-03-02'::timestamp, 1, 1),
('Comentario Lorem Ipsum Content2 ....','2019-03-03'::timestamp, 2, 1),
('Comentario Lorem Ipsum Content3 ....','2019-03-04'::timestamp, 3, 1),
('Comentario Lorem Ipsum Content4 ....','2020-03-02'::timestamp, 1, 2),
('Comentario Lorem Ipsum Content5 ....','2020-03-03'::timestamp, 2, 2);

-- SELECT * FROM comentarios;