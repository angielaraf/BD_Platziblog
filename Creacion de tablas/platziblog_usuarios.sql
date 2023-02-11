-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: platziblog
-- ------------------------------------------------------
-- Server version	8.0.31
--
-- Table structure for table `usuarios`
--

CREATE TABLE usuarios (
  id int NOT NULL AUTO_INCREMENT,
  login varchar(30) NOT NULL,
  password varchar(32) NOT NULL,
  nickname varchar(40) NOT NULL,
  email varchar(45) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY nickname_UNIQUE (nickname),
  UNIQUE KEY email_UNIQUE (email)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
