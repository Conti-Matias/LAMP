mysql -u root

CREATE DATABASE IF NOT EXISTS videoteca;
USE videoteca;



CREATE TABLE IF NOT EXISTS film (
    id INT(11) NOT NULL AUTO_INCREMENT,
    titolo VARCHAR(100) NOT NULL,   
    data pubblicazione DATE NOT NULL,
    direttore VARCHAR(100) NOT NULL,
    genere VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) 

CREATE TABLE IF NOT EXISTS attori (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) 

CREATE TABLE IF NOT EXISTS attori_film (
    id INT(11) NOT NULL AUTO_INCREMENT,
    id_actor INT(11) NOT NULL,
    id_pelicula INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_actor) REFERENCES attori(id),
    FOREIGN KEY (id_pelicula) REFERENCES film(id)
) 

CREATE TABLE IF NOT EXISTS usuarios (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) 

CREATE TABLE IF NOT EXISTS film_usuarios (
    id INT(11) NOT NULL AUTO_INCREMENT,
    id_usuario INT(11) NOT NULL,
    id_pelicula INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_pelicula) REFERENCES film(id)
)

