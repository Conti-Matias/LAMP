<?php
// Avvio la sessione php per recuperare eventuali dati di sessione
// ...

// Verifica se l'utente è autenticato
$utente = $_SESSION['username'] ?? 'Ospite';

// Creazione dei link in funzione dell'utente Ospite o Autenticato 
// ...
$html_link = '...';
$html_link .= '...';
 
?>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<body>
  <h2>ES05 - Login con PHP e MySql</h2>
  <p>Benvenuto <?=$utente?>. Questa è la home page del sito.<br />

  <!-- Link -->
</body>
</html>

