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

INSERT INTO videocassetta(id,titolo,data_pubblicazione,prezzo,durata)    
VALUES (1,'Il Pianista','2021-01-01',9.99,120);


INSERT INTO cliente(codice_fiscale,titolo,data_pubblicazione,direttore,genere)
VALUES (1,'La dolce vita','2021-01-01','Giuseppe Verdi','Commedia');

INSERT INTO noleggio(id,id_cliente,id_videocassetta)
VALUES (1,1,1);

INSERT INTO attori(id,nome,ruolo)
VALUES (1,'Giuseppe Verdi','Direttore');

INSERT INTO attori_videocassetta(id,id_attore,id_videocassetta)
VALUES (1,1,1);

INSERT INTO regista(codice_fiscale,nome,cognome,data_nascita)
VALUES (1,'Giuseppe','Verdi','1970-01-01');

INSERT INTO regista_videocassetta(id,id_regista,id_videocassetta)
VALUES (1,1,1);

INSERT INTO genere(id,nome)
VALUES (1,'Commedia');

INSERT INTO genere_videocassetta(id,id_genere,id_videocassetta)
VALUES (1,1,1);




