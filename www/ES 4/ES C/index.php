<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>
<body>
<style> a{border: solid black 1px; background-color:#e6e6e6; border-radius:5px;}</style>
<p><a href="Login.php">Log In</a></p>
<?php
    session_start();
    echo '<p><a href="Riservata.php">Pagina Riservata</a></p>';   
 ?>   
</body>
</html>