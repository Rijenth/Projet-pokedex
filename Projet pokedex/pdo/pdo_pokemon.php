<?php
// Moteur de bdd : mysql
$engine = "mysql";
// Hostname: localhost
$host = "localhost";
// Port : 3306 (par défaut)
$port = 3306;
// Nom de la base de données : pokedex
$dbname = "pokedex";
// Utilisateur : root
$username = "root";
// Mot de passe : root (par défaut)
$password = "root";
$pdo = new PDO("$engine:host=$host:$port;dbname=$dbname", $username, $password);
