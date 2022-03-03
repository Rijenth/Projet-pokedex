<?php

// La ligne suivante permet d'appeler 'pdo_pokemon.php' qui contient les élèments de connexion à la bdd. //
require('pdo/pdo_pokemon.php');

// filter_input permet de récupérer les données entrantes (ici en GET avec INPUT_GET)
// On récupère la donnée envoyées sous la forme "voir-categorie.php?id=10"
// FILTER_VALIDATE_INT nous assure que c'est un nombre entier
$id = filter_input(INPUT_GET, "id", FILTER_VALIDATE_INT);

// Etape 1 : Preparer la requête
$marequete = $pdo->prepare("SELECT * FROM pokemon WHERE id_pok = :id");

// Etape 2 : Executer la requête
$marequete->execute([
    ":id" => $id
]);

// Etape 3 : Récupération (Fetch)
$pokemon = $marequete->fetch(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les détails de <?= $pokemon["nom_pok"] ?></title>
    <link rel="stylesheet" href="pokemon.css">
</head>
<body>
        <div class="content">  
            <div><img class="animation" src="img/1G/<?= $pokemon["nom_pok"] ?>.gif" alt="Image animée"></div>

            <div class="pokemon" >
                    <div class="poke-container1">
                        <div class="img-container">
                            <img class="absolute" src="img/1G/<?= $pokemon["id_pok"] ?>.png" alt="Image du pokémon">
                        </div>

                        <div class="info">
                            <div class="voir"><span class="number"><?= $pokemon["id_pok"] ?></span></div>
                            <h4 class="name"><?= $pokemon["nom_pok"] ?></h4>
                            <div>
                                <small>Type 1 : <span><?= $pokemon["type_pok1"] ?></span> </small>
                                </div>
                            <div>
                                <small>Type 2 : <span><?= $pokemon["type_pok2"] ?></span> </small>
                                </div>
                        </div>
                    </div>
                <div class="poke-container2">
                        <h4 class="name">A quel niveau évolue votre pokémon :</h4>
                        <small><span><?= $pokemon["methode_evolve"] ?></span></small>                        
                    </div>
                <div class="poke-container3">
                    <h4 class="name">Description :</h4>
                    <small><span><?= $pokemon["description"] ?></span></small>
                    </div>
                <div class="poke-container4">
                        <h4 class="name">Dresseur notable qui possède ce pokémon :</h4>
                        <small><span><?= $pokemon["Dresseur"] ?></span></small>
                    </div>

            </div>
        </div>  

     
</body>

<div class="footer">
    <a href="pokemon_dashboard.php">Retour</a>
</div>  

</html>

