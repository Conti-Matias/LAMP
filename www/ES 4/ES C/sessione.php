
<?php 
function login(){
    session_start();
    $logIn=<<<LOGIN
    <h1>Richiesta credenziali per l'accesso alla pagina riservata</h1>
    <p>Dati: username = utente, password=psswrd</p>   
    <form method="POST" action="Login.php">
        <label for="username" type="text">Username</label>
        <input type="text" name="username" placeholder="Inserire username" required/>
        <br/>
        <br/>
        <label for="password" type="password">Password</label>
        <input type="password" name="password" placeholder="Password" required/>
        <br/>
        <br/>
        <input type="submit" name="ACCEDI"/>
    </form>
    LOGIN;
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $username = "utente"; 
        $password = "psswrd";

        if ($_POST['username'] === $username && $_POST['password'] === $password) {
            $_SESSION['username'] = $username;
            header('Location: Riservata.php');
            exit();
        } else {
            echo "<p>Credenziali non valide. Riprova.</p> $logIn";
        }
    } else echo $logIn;
}

function logout(){
    session_start();   
    session_destroy(); 
    header('Location: Login.php');
    exit();
}
function riservata(){
    session_start();

    if (!isset($_SESSION['username'])) {
        $url = 'Login.php?error=Fare prima il login&from=';
        $url .= basename($_SERVER['PHP_SELF']);
        header("Location: $url");
        exit();
    }
    $nome = $_SESSION['username'];
 
     echo "<b><h4>Benvenuto $nome <br/>Nell'area riservata del sito!</h4></b>";
}
?>