<?php
// Includo il file delle funzioni
include 'functions.php';

// Avvio la sessione php per recuperare eventuali dati di sessione
// ...

// Recupero eventuali dati dal form di login
// Recupero eventuali dati inviati tramite query string

// Controllo se l'utente è registrato e se la password è corretta
[$retval, $errmsg] = login($email, $passw);

// Creo il codice html da visualizzare a seconda dei valori di $from e $retval
//if ...
  // se from è valorizzato significa che l'utente ha tentato di accedere ad una pagina riservata
  // senza essere autenticato, quindi visualizzo il messaggio di errore e il form di login
  $htlm = "<p class='error'>$from_msg</p>";
  $htlm .= $html_form;
  // ...
?>
<?php
//Form di login
$html_form = <<<FORM
<form action="$_SERVER[PHP_SELF]" method="post">
  <label for="email"> </label><input type="text" name="email" placeholder="Email" required/><br />
  <label for="password"> </label><input type="password" name="password" placeholder="Password" required/><br />
  <input type="submit" value="Login" /><input type="reset" value="Cancel" />
</form>
FORM;

// Creo il codice html da visualizzare a seconda dei valori di $from e $retval
  $html_out = "<p class='error'>$errmsg</p>";
  $html_out .= $html_form;
  $html_out .= "Non hai un account? <a href='register.php'>Registrati adesso</a>.<br />";
  $html_out .= "Hai dimenticato la password? <a href='pwd_reset.php'>Resetta la password</a>.<br />";
  $html_out .= "<a href='index.php'>Torna alla Home Page</a>.<br />";
?>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<body>
  <h2>Pagina di login</h2>
  <?=$html_out?>
</body>
</html>

