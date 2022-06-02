<?php

// La ligne suivante permet d'appeler 'pdo_pokemon.php' qui contient les élèments de connexion à la bdd. //
require('pdo/pdo_pokemon.php');

// Cette partie est en lien avec
session_start();
if($_SESSION["connecte"] == false) {
    http_response_code(302);
    header('Location: login.php');
    exit();
}

// Etape 1 : Preparer la requête
$marequete = $pdo->prepare("SELECT * FROM pokemon");

// Etape 2 : Executer la requête
$marequete->execute();

// Etape 3 : Récupération (Fetch)
$pokemons = $marequete->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Pokedex</title>
    <link rel="stylesheet" href="pk_dashboard.css">

</head>
<body >

    <h1>Bienvenue !</h1>
    <p>Voici la liste des 151 pokémons de la première génération</p>
    <div class="poke">
        <?php foreach($pokemons as $pokemon): ?>
            <div class="pokemon" style="background-color:<?= $pokemon["couleur"] ?>;">
                
                <div class="poke-container" id="poke-container">
                    <div class="img-container">
                        <img src="img/1G/<?= $pokemon["id_pok"] ?>.png" alt="Image pokémon">
                    </div>
                    <div class="info">
                        <div class="voir"><span class="number"><?= $pokemon["id_pok"] ?></span></div>
                        <h3 class="name"><?= $pokemon["nom_pok"] ?></h3>
                        <div class="type">
                            <small>Type 1 : <span><?= $pokemon["type_pok1"] ?></span> </small>
                            </div>
                        <div class="type">
                            <small>Type 2 : <span><?= $pokemon["type_pok2"] ?></span> </small>
                            </div>
                            <br>
                        <div class="voir"><a href="voir_pokemon.php?id=<?= $pokemon["id_pok"] ?>"><button class="button">Info</button></a></div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <br>
    
    <a href="deconnexion.php">Quitter</a>
    <br>
</body>
</html>

