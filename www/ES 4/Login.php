<?php
$host = 'localhost';
$db = 'nome_database';
$user = 'nome_utente';
$pass = 'password_utente';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
}

$username = $_POST['username'];
$password = $_POST['password'];

// Cerca l'utente
$sql = "SELECT * FROM utenti WHERE username = ? AND password = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $username, $password);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    echo "Benvenuto, $username!";
} else {
    // Inserisce nuovo utente
    $insert = "INSERT INTO utenti (username, password) VALUES (?, ?)";
    $stmt = $conn->prepare($insert);
    $stmt->bind_param("ss", $username, $password);
    if ($stmt->execute()) {
        echo "Utente registrato con successo.";
    } else {
        echo "Errore durante la registrazione.";
    }
}

$conn->close();
?>
