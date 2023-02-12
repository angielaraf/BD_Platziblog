
---CONOCIENFO LA BASE DE DATOS: Platziblog


--a.¿Cuántos post tiene la base de datos?

SELECT estatus, COUNT(*) post_quantity
FROM posts
GROUP BY estatus;

--b.¿Desde qué año tiene información la base de datos?
SELECT estatus, YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_quantity
FROM posts
GROUP BY estatus, post_year;
