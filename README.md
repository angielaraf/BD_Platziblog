# Creación de base de datos: Platziblog
El presente es un proyecto desarrollado en el Curso de Fundamentos de base de Datos de Platzi. Consiste en una base de datos utilizando My SQL Workbench con el fin de aplicar los conceptos vistos drante el curso tales como: identificación de entidades, atributos, relaciones, diagrama entidad-relación y consultas básicas en el lenguaje SQL.

La base de datos es un manejador de blogpost. Este sistema almacenará registros relacionados con el contenido del blog tales como los post, los usuarios que escriben su contenido, entre otros. 
## Desarrollo
El proceso de creación de base de datos se describe a continuación:
## 1.	Identificación de entidades
Las entidades establecidas para la base de datos fueron:

•	Usuarios: Corresponde al las personas que van a crear el contenido del blog.

•	Posts: Es el contenido que escrito en el blog.

•	Etiquetas: Son las etiquetas de cada post.

•	Categorias: Se refiere a la agrupación de los post según el tema.

•	Comentarios: Se refiere a las opiniones escritas por los usuarios.

## 2.	Identificación de los atributos
### a. Atributos para la entidad "usuarios":

•	id: Corresponde a un número de identificación del usuario.

•	login: Es el nombre de usuario que una persona utiliza para ingresar al blog.

•	password: Es la contraseña que el usuario utiliza para poder publicar en el blog.

•	email: Es correo de cada usuario.
### b. Atributos para la entidad "posts":

•	id: Número de identificación del post.

•	titulo: Es el título de cada post.

•	Fecha_publicacion: Es la fecha en la cuál se publica cada post.

•	Estatus: Puede ser activo o inactivo.

•	Etiquetas: Son las etiquetas que identifican a cada post.

•	Contenido: Es el texto que contiene el post.

### c. Atributos para la entidad "comentarios":

•	id: Número de identificación de cada comentario.

•	comentario: Es la opinión que un usuario escribe con relación a un post.

### d. Atributos para la entidad "categorias":

•	id: Número de identificación de la categoria.

•	nombre_categoria: Es el nombre de la categoría de cada post.

### e. Atributos para la entidad "etiquetas":

•	id: Número de identificación de una etiqueta.

•	Nombre_etiqueta: Es el nombre de las etiquetas que tiene cada post.

## 3.	Determinación de las relaciones
Las relaciones fueron establecidas teniendo en cuenta los conceptos de cardinalidad:

#### •	Cardinalidad 1: N: Relación uno a muchos:

-Un usuario puede escribir muchos posts y comentarios.

-Un post puede tener muchos comentarios.

-Una categoría puede pertenecer a varios posts.

#### •	Cardinalidad N: N: Relación muchos a muchos.

-Muchos posts pueden tener muchas etiquetas.
## 4.	Diagrama ER (Entidad-Relación):

<img src="https://github.com/angielaraf/BD_Platziblog/blob/main/Images/DiagramaEntidad-Relacion.png">

## 5.	Creación de base de datos y tablas en MySQL Workbench
La creación de base de datos y tablas se creó utilizando la interfaz de MySQL Workbench, el DDL generado puede ser consultado en el presente repositorio.

## 6. Conociendo la base de datos:
La tabla principal de la base de datos es la tabla Posts la cuál contiene información de 12 posts, de los cuales 17 se encuentran en estado activo y 5 inactivos. Los posts que han sido publicados en el blog desde el año 2021 al 2030, siendo el 2023 el año donde más publicaciones se registraron en platziblog.

## 7.	Consultando en Platziblog:
Se realizaron consultas en la base de datos con el ánimo de encontrar hallazgos sobresalientes acerca del comportamiento del blog:

### a.	¿Cuáles son los posts con más etiquetas?
Los posts con mayor cantidad de etiquetas tienen 4 y tienen por título Los mejores vestidos en la alfombra roja y Se mejora la conducción autónoma de vehículos. A pesar de tener misma cantidad de etiquetas estos posts cubren temáticas diferentes.

### b.	¿Cuáles son las etiquetas que no tienen ningún post?
El blog no contiene ningún post que contengan la etiqueta con temática Matemáticas.

### c.	¿Cuál es la categoría que tiene más post?
La etiqueta que tiene mayor cantidad de posts publicados en platziblog es Deportes, seguida de Tecnología y ciencia.

### d.	¿Qué usuario ha creado más post en el sistema?
En la base de datos contiene 4 usuarios que han escrito en platziblog. Moni es quien tiene mayor cantidad con 9 posts publicados

### e.	¿De qué categorías está escribiendo cada usuario?
Los posts publicados por Moni son principalmente de Deportes, Israel escribe en su mayoría de Tecnología, Ed escribe únicamente de Espectáculos y Lau de Ciencia.

### f.	¿Qué usuarios no han escrito ningún post?
Oso Pérez es el único usuario que no ha escrito ningún post en platziblog.
  
Made by [Angie Lara](https://angielara.com)
