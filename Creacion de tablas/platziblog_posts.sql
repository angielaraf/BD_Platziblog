-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: platziblog
-- ------------------------------------------------------
-- Server version	8.0.31

-- Table structure for table `posts`
--

CREATE TABLE posts (
  id int NOT NULL AUTO_INCREMENT,
  titulo varchar(130) NOT NULL,
  fecha_publicacion varchar(45) DEFAULT NULL,
  contenido text NOT NULL,
  estatus char(8) DEFAULT 'activo',
  usuario_id int NOT NULL,
  categoria_id int NOT NULL,
  PRIMARY KEY (id),
  KEY posts_usuarios_idx (usuario_id),
  KEY post_categorias_idx (categoria_id),
  CONSTRAINT post_categorias FOREIGN KEY (categoria_id) REFERENCES categorias (id),
  CONSTRAINT posts_usuarios FOREIGN KEY (usuario_id) REFERENCES usuarios (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3;
