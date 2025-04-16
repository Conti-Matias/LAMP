<?php
// Costanti per la connessione al database
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'ES05_user');
define('DB_PASSWORD', 'mia_password');
define('DB_NAME', 'ES05');
 

// Creazione della connessione
$conn = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Verifica della connessione
if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
} 
 $sql = "SELECT * FROM studenti";
 $result = mysqli_query($conn, $sql);

 if(!result) exit ("errore");
 while($riga = mysqli_fetch_assoc($result)){
    foreach($riga as $col){
        echo $col;
    }
}