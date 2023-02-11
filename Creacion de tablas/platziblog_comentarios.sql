-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: platziblog
-- ------------------------------------------------------
-- Server version	8.0.31

--
-- Table structure for table `comentarios`
--

CREATE TABLE comentarios (
  id int NOT NULL AUTO_INCREMENT,
  comentario text NOT NULL,
  usuarios_id int NOT NULL,
  posts_id int NOT NULL,
  PRIMARY KEY (id),
  KEY comentarios_post_idx (posts_id),
  KEY comentarios_usuarios_idx (usuarios_id),
  CONSTRAINT comentarios_post FOREIGN KEY (posts_id) REFERENCES posts (id),
  CONSTRAINT comentarios_usuarios` FOREIGN KEY (usuarios_id) REFERENCES usuarios (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3