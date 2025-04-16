mysql -u root

CREATE DATABASE IF NOT EXISTS scuola;
USE scuola;


CREATE TABLE IF NOT EXISTS corsi_studi(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);
    
CREATE TABLE IF NOT EXISTS disciplina(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS studente(
    matricola INT AUTO_INCREMENT PRIMARY KEY,
    cognome VARCHAR(50) NOT NULL,
    DataNascita DATE NOT NULL,
    CorsiStudi INT NOT NULL,
    FOREIGN KEY (CorsiStudi) REFERENCES corsi_studi(id)
    
);

CREATE TABLE IF NOT EXISTS valutazioni(
    id INT AUTO_INCREMENT PRIMARY KEY,
    matricola INT NOT NULL,
    DataSvolgimento DATE NOT NULL,
    disciplina INT NOT NULL,
    voto INT NOT NULL,
    FOREIGN KEY (matricola) REFERENCES studente(matricola),
    FOREIGN KEY (disciplina) REFERENCES disciplina(id)
);





INSERT INTO corsi_studi (nome)
VALUES
    ('Informatica'),
    ('Letteratura'),
    ('Economia'),
    ('Scienze'),
    ('Arte');


INSERT INTO disciplina (nome)
VALUES
    ('Matematica'),
    ('Italiano'),
    ('Inglese'),
    ('Francese'),
    ('Storia');
     

INSERT INTO studente (cognome, DataNascita, CorsiStudi)
VALUES
    ('Rossi', '1995-05-10', 1),  
    ('Bianchi', '1997-08-15', 2),  
    ('Verdi', '1996-12-20', 3),  
    ('Gialli', '1998-06-05', 4), 
    ('Neri', '1999-01-15', 5), 
    ('Rossi', '1995-05-10', 1);


INSERT INTO valutazioni (matricola, DataSvolgimento, disciplina, voto)
VALUES

    (1, '2021-01-01', 1, 85),  
    (2, '2021-02-15', 2, 90),  
    (3, '2021-03-31', 3, 78),  
    (4, '2021-04-10', 4, 82),  
    (5, '2021-05-25', 5, 95);





SELECT s.cognome, v.voto
from studente s join valutazioni v 
on s.matricola = v.matricola;

select s.cognome, v.voto, m.nome
from studente s,valutazioni v,disciplina m
where s.matricola = v.matricola and v.disciplina = m.id