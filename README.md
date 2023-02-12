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
#### Los atributos establecidos para la entidad "usuarios" fueron los siguientes:

•	id: Corresponde a un número de identificación del usuario.

•	login: Es el nombre de usuario que una persona utiliza para ingresar al blog.

•	password: Es la contraseña que el usuario utiliza para poder publicar en el blog.

•	email: Es correo de cada usuario.
#### Los atributos establecidos para la entidad "posts" fueron:

•	id: Número de identificación del post.

•	titulo: Es el título de cada post.

•	Fecha_publicacion: Es la fecha en la cuál se publica cada post.

•	Estatus: Puede ser activo o inactivo.

•	Etiquetas: Son las etiquetas que identifican a cada post.

•	Contenido: Es el texto que contiene el post.

#### Los atributos establecidos para la entidad "comentarios" fueron:

•	id: Número de identificación de cada comentario.

•	comentario: Es la opinión que un usuario escribe con relación a un post.

#### Los atributos establecidos para la entidad "categorias" fueron:

•	id: Número de identificación de la categoria.

•	nombre_categoria: Es el nombre de la categoría de cada post.

#### Los atributos establecidos para la entidad "etiquetas" fueron:

•	id: Número de identificación de una etiqueta.

•	Nombre_etiqueta: Es el nombre de las etiquetas que tiene cada post.

## 3.	Determinación de las relaciones
Las relaciones fueron establecidas teniendo en cuenta los conceptos de cardinalidad:

#### •	Cardinalidad 1: N: Relación uno a muchos:

-Un usuario puede escribir muchos posts y comentarios.

-Un post puede tener muchos comentarios.

- Una categoría puede pertenecer a varios posts.

#### •	Cardinalidad N: N: Relación muchos a muchos.

-Muchos posts pueden tener muchas etiquetas.
