-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: platziblog
-- ------------------------------------------------------
-- Server version	8.0.31

--
-- Table structure for table `categorias`
--

CREATE TABLE categorias (
  id int NOT NULL AUTO_INCREMENT,
  nombre_categoria varchar(30) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
