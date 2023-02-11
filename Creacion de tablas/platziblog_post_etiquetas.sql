-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: platziblog
-- ------------------------------------------------------
-- Server version	8.0.31

-- Table structure for table `post_etiquetas`
--

CREATE TABLE post_etiquetas (
  id int NOT NULL AUTO_INCREMENT,
  post_id int NOT NULL,
  etiqueta_id int NOT NULL,
  PRIMARY KEY (id),
  KEY post_etiquetas_idx (post_id),
  KEY postsetiquetas_etiquetas_idx (etiqueta_id),
  CONSTRAINT postsetiquetas_etiquetas FOREIGN KEY (etiqueta_id) REFERENCES etiquetas (id),
  CONSTRAINT postsetiquetas_post FOREIGN KEY (post_id) REFERENCES posts (id)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;