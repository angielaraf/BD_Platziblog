
--CONSULTANDO EN PLATZIBLOG:


--1.¿Cuáles son los post con más etiquetas?
-- Utilizamos el comando COUNT para contar la cantidad de etiquetas, GROUP_CONTACT para mostrar las etiquetas separadas por comas y realizamos la unión de las tablas posts,
--etiquetas y post_etiquetas:

SELECT posts.titulo, COUNT(*)num_etiquetas, GROUP_CONCAT(nombre_etiqueta)
FROM posts
	INNER JOIN post_etiquetas ON posts.id = post_etiquetas.post_id 
	INNER JOIN etiquetas ON etiquetas.id= post_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC
LIMIT 5;

--2. ¿Cuáles son las etiquetas que no tienen ningún post?
--Utilizamos LEFT JOIN para en la tabla post_etiquetas que tiene la relación de post con etiquetas:
SELECT * 
FROM etiquetas
	LEFT JOIN post_etiquetas ON etiquetas.id = post_etiquetas.etiqueta_id
WHERE post_etiquetas.etiqueta_id IS NULL;

--3. ¿Cuál es la categoria que tiene más post?
--Utilizamos c como un alias de la tabla categorias y p para la tabla posts.

SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM categorias AS c
	INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC

--4. ¿Qué usuario ha estado creando más post en el sistema?
--Utilizamos u como un alias de la tabla usuarios y p para la tabla posts.
SELECT u.nickname, COUNT(*) AS cant_posts
FROM usuarios AS u
	INNER JOIN posts AS p ON u.id = p.usuario_id
GROUP BY u.id
ORDER BY cant_posts DESC

--5. ¿De qué categorías está escribiendo cada usuario?

SELECT u.nickname, COUNT(*) AS cant_posts, GROUP_CONCAT(nombre_categoria)
FROM usuarios AS u
	INNER JOIN posts AS p ON u.id = p.usuario_id
    INNER JOIN categorias AS c ON c.id = p.categoria_id
GROUP BY u.id
ORDER BY cant_posts DESC;

--6. ¿Qué usuarios no han escrito ningún post?
--Utilizamos Letf Join para traer la relacion de usuarios con sus posts:
SELECT *
FROM usuarios AS u
	LEFT JOIN posts ON u.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;