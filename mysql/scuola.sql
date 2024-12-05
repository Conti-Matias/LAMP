mysql -u root

CREATE DATABASE IF NOT EXISTS scuola;
USE scuola;


CREATE TABLE IF NOT EXISTS studente(
    matricola INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    DataNascita DATE NOT NULL,
    LuogoNascita VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS valutazioni(
    id INT AUTO_INCREMENT PRIMARY KEY,
    matricola INT NOT NULL,
    AnnoCorso INT NOT NULL,
    materia INT NOT NULL,
    voto INT NOT NULL,
    FOREIGN KEY (matricola) REFERENCES studente(matricola),
    FOREIGN KEY (materia) REFERENCES materia(id)
);

CREATE TABLE IF NOT EXISTS materia(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);


INSERT INTO materia (nome)
VALUES
    ('Matematica'),
    ('Italiano'),
    ('Inglese'),
    ('Francese'),
    ('Storia');
     

     
INSERT INTO studente (nome, cognome, DataNascita, LuogoNascita)
VALUES
    ('Giuseppe', 'Rossi', '1990-05-15', 'Roma'),
    ('Maria', 'Bianchi', '1985-08-10', 'Firenze'),
    ('Paolo', 'Verdi', '1995-12-07', 'Venezia'),
    ('Luca', 'Gialli', '1992-03-25', 'Napoli'),
    ('Giorgio', 'Neri', '1997-04-12', 'Torino');

INSERT INTO valutazioni (matricola, AnnoCorso, materia, voto)
VALUES
    (1, 2018, 1, 85),   -- Giuseppe Rossi, Matematica, Voto: 85
    (1, 2018, 2, 92),   -- Giuseppe Rossi, Italiano, Voto: 92
    (1, 2018, 3, 88),   -- Giuseppe Rossi, Inglese, Voto: 88
    (2, 2019, 1, 75),   -- Maria Bianchi, Matematica, Voto: 75
    (2, 2019, 4, 91),   -- Maria Bianchi, Francese, Voto: 91
    (3, 2020, 2, 82),   -- Paolo Verdi, Italiano, Voto: 82
    (3, 2020, 5, 89),   -- Paolo Verdi, Storia, Voto: 89
    (4, 2021, 3, 79),   -- Luca Gialli, Inglese, Voto: 79
    (4, 2021, 4, 85),   -- Luca Gialli, Francese, Voto: 85
    (5, 2022, 1, 95);   -- Giorgio Neri, Matematica, Voto: 95





SELECT s.cognome, v.voto
from studente s join valutazioni v 
on s.matricola = v.matricola;

select s.cognome, v.voto, m.nome
from studente s,valutazioni v,materia m
where s.matricola = v.matricola and v.materia = m.id