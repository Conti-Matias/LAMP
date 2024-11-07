mysql -u root

CREATE DATABASE IF NOT EXISTS videoteca;
USE videoteca;



CREATE TABLE IF NOT EXISTS videocassetta (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titolo VARCHAR(100) NOT NULL,   
    data_pubblicazione DATE NOT NULL,
    prezzo DOUBLE NOT NULL,
    durata INT(11) NOT NULL
); 

CREATE TABLE IF NOT EXISTS cliente (
    codice_fiscale INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titolo VARCHAR(100) NOT NULL,   
    data_pubblicazione DATE NOT NULL,
    direttore VARCHAR(100) NOT NULL,
    genere VARCHAR(100) NOT NULL
) ;

CREATE TABLE IF NOT EXISTS noleggio (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT(11) NOT NULL,
    id_videocassetta INT(11) NOT NULL,
    FOREIGN KEY (id_videocassetta) REFERENCES videocassetta(id)
    FOREIGN KEY (id_cliente) REFERENCES cliente(codice_fiscale)
);

CREATE TABLE IF NOT EXISTS attori (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ruolo VARCHAR(100) NOT NULL
); 

CREATE TABLE IF NOT EXISTS attori_videocassetta (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_attore INT(11) NOT NULL,
    id_videocassetta INT(11) NOT NULL,
    FOREIGN KEY (id_attore) REFERENCES attori(id),
    FOREIGN KEY (id_videocassetta) REFERENCES videocassetta(id)
) ;

CREATE TABLE IF NOT EXISTS regista(
    codice_fiscale INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cognome VARCHAR(100) NOT NULL,
    data_nascita DATE NOT NULL
) ;

CREATE TABLE IF NOT EXISTS regista_videocassetta(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_regista INT(11) NOT NULL,
    id_videocassetta INT(11) NOT NULL,
    FOREIGN KEY (id_regista) REFERENCES regista(codice_fiscale),
    FOREIGN KEY (id_videocassetta) REFERENCES videocassetta(id)
) ;

CREATE TABLE IF NOT EXISTS genere(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS genere_videocassetta(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_genere INT(11) NOT NULL,
    id_videocassetta INT(11) NOT NULL,
    FOREIGN KEY (id_genere) REFERENCES genere(id),
    FOREIGN KEY (id_videocassetta) REFERENCES videocassetta(id)
);



