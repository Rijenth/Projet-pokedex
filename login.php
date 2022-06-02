<?php

// Cette fonction est un login.
session_start();
$login = filter_input(INPUT_POST, "login");
$password = filter_input(INPUT_POST, "password");

if($login == "pokemon" && $password == "pokemon") {
    $_SESSION["connecte"] = true;
    $_SESSION["login"] = $login;
    http_response_code(302);
    header('Location: pokemon_dashboard.php');
    exit();
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion au pokedex</title>
    
    <link rel="stylesheet" href="login.css">
    
       

</head>
<body>
    <section class="img">
        <div class="rajeeth">
            <div class="connexion">
                <div class="logo"><img src="css/img/logo.svg" alt="Logo pokemon"></div>
                <br>
                <h2>Connexion</h2>                
                <form class="menu" method="POST">
                    <label for="login">Identifiant :</label>
                    
                    <div><input type="text" name="login" id="login" /><br/></div>
                    <label for="password">Mot de passe :</label>
                    <div><input type="password" name="password" id="password" /><br/></div>
                    <div><input type="submit" value="Se connecter" class="input" /></div>
                </form>
            </div>
        </div>
    </section>
    
</body>
</html>