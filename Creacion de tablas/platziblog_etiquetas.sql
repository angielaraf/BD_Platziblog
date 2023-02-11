-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: platziblog
-- ------------------------------------------------------
-- Server version	8.0.31

-- Table structure for table `etiquetas`
--

DROP TABLE IF EXISTS etiquetas;

CREATE TABLE etiquetas (
  id int NOT NULL AUTO_INCREMENT,
  nombre_etiqueta varchar(30) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `etiquetas`
--

LOCK TABLES etiquetas WRITE;

INSERT INTO etiquetas VALUES (1,'Robótica'),(2,'Computación'),(3,'Teléfonos Móviles'),(4,'Automovilismo'),(5,'Campeonatos'),(6,'Equipos'),(7,'Bolsa de valores'),(8,'Inversiones'),(9,'Brokers'),(10,'Celebridades'),(11,'Eventos'),(12,'Moda'),(13,'Avances'),(14,'Nobel'),(15,'Matemáticas'),(16,'Química'),(17,'Física'),(18,'Largo plazo'),(19,'Bienes Raíces'),(20,'Estilo');

UNLOCK TABLES;
