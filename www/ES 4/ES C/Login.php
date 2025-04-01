
 <!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In</title>
</head>
<body>
    <?php
    include 'sessione.php';
    login();
    ?>
    <input type="hidden" name="from" value="<?=$from?>"/>
</body>
</html>