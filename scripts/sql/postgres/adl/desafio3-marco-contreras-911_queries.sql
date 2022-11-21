-- SELECT * FROM usuarios;
-- SELECT * FROM posts;

/* 2)
Cruza los datos de la tabla usuarios y posts mostrando las siguientes columnas,
nombre, email del usuario junto al título y contenido del post. */

SELECT nombre, email, título, contenido FROM usuarios
CROSS JOIN posts;

/* 3)
Muestra el id, título y contenido de los posts de los administradores. 
El administrador puede ser cualquier id y debe ser seleccionado dinámicamente */

SELECT p.id, p.título, p.contenido FROM usuarios AS u
INNER JOIN posts AS p
ON u.id = p.usuario_id
WHERE u.rol = 'administrador';

/* 4)
Cuenta la cantidad de posts de cada usuario. La tabla resultante debe mostrar 
el id e email del usuario junto con la cantidad de posts de cada usuario.*/

SELECT u.id, u.email, count(p.*) AS "total posts"
FROM usuarios AS u
LEFT JOIN posts AS p
ON u.id = p.usuario_id
GROUP BY u.id
ORDER BY "total posts";

/* 5)
Muestra el email del usuario que ha creado más posts. Aquí la tabla resultante tiene
un único registro y muestra solo el email.*/

SELECT u.email FROM usuarios AS u
INNER JOIN posts AS p
ON u.id = p.usuario_id
GROUP BY u.id
ORDER BY COUNT(p.*) DESC 
LIMIT 1;

/* 6)
Muestra la fecha del último post de cada usuario */

SELECT u.nombre, MAX(p.fecha_creación) AS "última publicación" 
FROM usuarios AS u
INNER JOIN posts AS p
ON u.id = p.usuario_id
GROUP BY u.id;

/* 7)
Muestra el título y contenido del post (artículo) con más comentarios.*/

SELECT p.título, p.contenido FROM posts AS p
INNER JOIN comentarios AS c
ON p.id = c.post_id
GROUP BY p.título, p.contenido
ORDER BY COUNT(c.*) DESC
LIMIT 1;

/* 8)
Muestra en una tabla el título de cada post, el contenido de cada post y el contenido
de cada comentario asociado a los posts mostrados, junto con el email del usuario
que lo escribió */

SELECT p.título, p.contenido AS "contenido post",
CASE 
 WHEN c.contenido IS NULL THEN 'Este post no tiene comentarios'
 ELSE c.contenido
END AS "contenido comentarios",
CASE
     WHEN u.email IS NULL THEN 'desconocido'
     ELSE u.email
END AS "email autor"
FROM posts AS p
LEFT JOIN comentarios AS c
ON p.id = c.post_id
LEFT JOIN usuarios AS u
ON u.id = c.usuario_id;


/* 9)
Muestra el contenido del último comentario de cada usuario. */

SELECT c.contenido
FROM (SELECT u.id, MAX(c.fecha_creación) FROM usuarios AS u
INNER JOIN comentarios AS c
ON u.id = c.usuario_id
GROUP BY u.id) AS t1, comentarios AS c
WHERE t1.max = c.fecha_creación;

/* 10)
Muestra los emails de los usuarios que no han escrito ningún comentario.*/

SELECT u.email
FROM usuarios AS u
LEFT JOIN comentarios AS c
ON u.id = c.usuario_id
GROUP BY u.email
HAVING COUNT(c.*) = 0;
