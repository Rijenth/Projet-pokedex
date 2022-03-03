-- Création de la base de donnée (Entièrement basé sur les versions "blue" et "red")
CREATE DATABASE Pokemon;

USE Pokemon;

-- Création de la table "pokemon" avec setup des colonnes + types.
CREATE TABLE pokemon (
	id_pok SERIAL NOT NULL,
	nom_pok varchar(10) NOT NULL,
    type_pok1 varchar(10) NOT NULL,
    type_pok2 varchar(10) NOT NULL,
    methode_evolve varchar(20) NOT NULL,
	description text NOT NULL,
	PRIMARY KEY(id_pok)
);


-- Insertion de valeur dans la bdd "pokemon" sans la méthode d'évolution + description des pokémons.


INSERT INTO pokemon (id_pok, nom_pok, type_pok1, type_pok2, methode_evolve, description) VALUES
(  1, 'Bulbizarre', 'Plante', 'Poison','methode','description'),
(  2, 'Herbizarre','Plante', 'Poison','methode','description'),
(  3, 'Florizarre', 'Plante','Poison','methode','description'),
(  4, 'Salameche','Feu','','methode','description'),
(  5, 'Reptincel','Feu','','methode','description'),
(  6, 'Dracaufeu','Feu','Vol','methode','description'),
(  7, 'Carapuce','Eau','','methode','description'),
(  8, 'Carabaffe','Eau','','methode','description'),
(  9, 'Tortank','Eau','','methode','description'),
( 10, 'Chenipan','Insecte','','methode','description'),
( 11, 'Chrysacier','Insecte','','methode','description'),
( 12, 'Papilusion','Insecte','Vol','methode','description'),
( 13, 'Aspicot','Insecte','Poison','methode','description'),
( 14, 'Coconfort','Insecte','Poison','methode','description'),
( 15, 'Dardargnan','Insecte','Poison','methode','description'),
( 16, 'Roucool','Normal','Vol','methode','description'),
( 17, 'Roucoups','Normal','Vol','methode','description'),
( 18, 'Roucarnage','Normal','Vol','methode','description'),
( 19, 'Rattata','Normal','','methode','description'),
( 20, 'Rattatac','Normal','','methode','description'),
( 21, 'Piafabec','Vol','Normal','methode','description'),
( 22, 'Rapasdepic','Vol','Normal','methode','description'),
( 23, 'Abo','Poison','','methode','description'),
( 24, 'Arbok','Poison','','methode','description'),
( 25, 'Pikachu','Electrique','','methode','description'),
( 26, 'Raichu','Electrique','','methode','description'),
( 27, 'Sabelette','Sol','','methode','description'),
( 28, 'Sablaireau','Sol','','methode','description'),
( 29, 'NidoranF','Poison','','methode','description'),
( 30, 'Nidorina','Poison','','methode','description'),
( 31, 'Nidoqueen','Poison','Sol','methode','description'),
( 32, 'NidoranM','Poison','','methode','description'),
( 33, 'Nidorino','Poison','','methode','description'),
( 34, 'Nidoking','Poison','Sol','methode','description'),
( 35, 'Melofee','Fee','','methode','description'),
( 36, 'Melodelfe','Fee','','methode','description'),
( 37, 'Goupix','Feu','','methode','description'),
( 38, 'Feunard','Feu','','methode','description'),
( 39, 'Rondoudou','Fee','','methode','description'),
( 40, 'Grodoudou','Fee','','methode','description'),
( 41, 'Nosferapti','Poison','Vol','methode','description'),
( 42, 'Nosferalto','Poison','Vol','methode','description'),
( 43, 'Mystherbe','Poison','Plante','methode','description'),
( 44, 'Ortide','Poison','Plante','methode','description'),
( 45, 'Rafflesia','Poison','Plante','methode','description'),
( 46, 'Paras','Insecte','Plante','methode','description'),
( 47, 'Parasect','Insecte','Plante','methode','description'),
( 48, 'Mimitoss','Poison','Insecte','methode','description'),
( 49, 'Aeromite','Poison','Insecte','methode','description'),
( 50, 'Taupiqueur','Sol','','methode','description'),
( 51, 'Triopikeur','Sol','','methode','description'),
( 52, 'Miaouss','Normal','','methode','description'),
( 53, 'Persian','Normal','','methode','description'),
( 54, 'Psykokwak','Eau','','methode','description'),
( 55, 'Akwakwak','Eau','','methode','description'),
( 56, 'Ferosinge','Combat','','methode','description'),
( 57, 'Colossinge','Combat','','methode','description'),
( 58, 'Caninos','Feu','','methode','description'),
( 59, 'Arcanin','Feu','','methode','description'),
( 60, 'Ptitard','Eau','','methode','description'),
( 61, 'Tetarte','Eau','','methode','description'),
( 62, 'Tartard','Eau','Combat','methode','description'),
( 63, 'Abra','Psy','','methode','description'),
( 64, 'Kadabra','Psy','','methode','description'),
( 65, 'Alakazam','Psy','','methode','description'),
( 66, 'Machoc','Combat','','methode','description'),
( 67, 'Machopeur','Combat','','methode','description'),
( 68, 'Mackogneur','Combat','','methode','description'),
( 69, 'Chetiflor','Poison','Plante','methode','description'),
( 70, 'Boustiflor','Poison','Plante','methode','description'),
( 71, 'Empiflor','Poison','Plante','methode','description'),
( 72, 'Tentacool','Eau','Poison','methode','description'),
( 73, 'Tentacruel','Eau','Poison','methode','description'),
( 74, 'Racaillou','Roche','Sol','methode','description'),
( 75, 'Gravalanch','Roche','Sol','methode','description'),
( 76, 'Grolem','Roche','Sol','methode','description'),
( 77, 'Ponyta','Feu','','methode','description'),
( 78, 'Galopa','Feu','','methode','description'),
( 79, 'Ramoloss','Eau','Psy','methode','description'),
( 80, 'Flagadoss','Eau','Psy','methode','description'),
( 81, 'Magneti','Acier','Electrique','methode','description'),
( 82, 'Magneton','Acier','Electrique','methode','description'),
( 83, 'Canarticho','Normal','Vol','methode','description'),
( 84, 'Doduo','Normal','Vol','methode','description'),
( 85, 'Dodrio','Normal','Vol','methode','description'),
( 86, 'Otaria','Eau','Glace','methode','description'),
( 87, 'Lamantine','Eau','Glace','methode','description'),
( 88, 'Tadmorv','Poison','','methode','description'),
( 89, 'Grotadmorv','Poison','','methode','description'),
( 90, 'Kokiyas','Eau','Glace','methode','description'),
( 91, 'Crustabri','Eau','Glace','methode','description'),
( 92, 'Fantominus','Spectre','Poison','methode','description'),
( 93, 'Spectrum','Spectre','Poison','methode','description'),
( 94, 'Ectoplasma','Spectre','Poison','methode','description'),
( 95, 'Onix','Roche','Sol','methode','description'),
( 96, 'Soporifik','Psy','','methode','description'),
( 97, 'Hypnomade','Psy','','methode','description'),
( 98, 'Krabby','Eau','','methode','description'),
( 99, 'Krabboss','Eau','','methode','description'),
(100, 'Voltorbe','Electrique','','methode','description'),
(101, 'Electrode','Electrique','','methode','description'),
(102, 'Noeunoeuf','Plante','Psy','methode','description'),
(103, 'Noadkoko','Plante','Psy','methode','description'),
(104, 'Osselait','Sol','','methode','description'),
(105, 'Ossatueur','Sol','','methode','description'),
(106, 'Kicklee','Combat','','methode','description'),
(107, 'Tygnon','Combat','','methode','description'),
(108, 'Excelangue','Normal','','methode','description'),
(109, 'Smogo','Poison','','methode','description'),
(110, 'Smogogo','Poison','','methode','description'),
(111, 'Rhinocorne','Roche','Sol','methode','description'),
(112, 'Rhinoferos','Roche','Sol','methode','description'),
(113, 'Leveinard','Normal','','methode','description'),
(114, 'Saquedeneu','Plante','','methode','description'),
(115, 'Kangourex','Normal','','methode','description'),
(116, 'Hypotrempe','Eau','','methode','description'),
(117, 'Hypocean','Eau','','methode','description'),
(118, 'Poissirene','Eau','','methode','description'),
(119, 'Poissoroy','Eau','','methode','description'),
(120, 'Stari','Eau','','methode','description'),
(121, 'Staross','Eau','Psy','methode','description'),
(122, 'M. Mime','Psy','Fee','methode','description'),
(123, 'Insecateur','Insecte','Vol','methode','description'),
(124, 'Lippoutou','Psy','Glace','methode','description'),
(125, 'Elektek','Electrique','','methode','description'),
(126, 'Magmar','Feu','','methode','description'),
(127, 'Scarabrute','Insecte','','methode','description'),
(128, 'Tauros','Normal','','methode','description'),
(129, 'Magicarpe','Eau','','methode','description'),
(130, 'Leviator','Eau','Vol','methode','description'),
(131, 'Lokhlass','Eau','Glace','methode','description'),
(132, 'Metamorph','Normal','','methode','description'),
(133, 'Evoli','Normal','','methode','description'),
(134, 'Aquali','Eau','','methode','description'),
(135, 'Voltali','Electrique','','methode','description'),
(136, 'Pyroli','Feu','','methode','description'),
(137, 'Porygon','Normal','','methode','description'),
(138, 'Amonita','Eau','Roche','methode','description'),
(139, 'Amonistar','Eau','Roche','methode','description'),
(140, 'Kabuto','Eau','Roche','methode','description'),
(141, 'Kabutops','Eau','Roche','methode','description'),
(142, 'Ptera','Vol','Roche','methode','description'),
(143, 'Ronflex','Normal','','methode','description'),
(144, 'Artikodin','Vol','Glace','methode','description'),
(145, 'Electhor','Vol','Electrique','methode','description'),
(146, 'Sulfura','Vol','Feu','methode','description'),
(147, 'Minidraco','Dragon','','methode','description'),
(148, 'Draco','Eau','Dragon','methode','description'),
(149, 'Dracolosse','Dragon','Vol','methode','description'),
(150, 'Mewtwo','Psy','','methode','description'),
(151, 'Mew','Psy','','methode','description'),

-- J'utilise ce code afin de mettre à jour la colonne "methode_evolve".
-- source : https://www.pokepedia.fr

UPDATE pokemon
SET methode_evolve = 'Niveau evolution'
WHERE id_pok in ('Niveau du pokemon', 'Niveau du pokemon', '...');

-- + -- 

UPDATE pokemon
SET methode_evolve = 'Comment évolue le pokemon ? (pierre/echange ?)'
WHERE nom_pok in ('Nom_du_pokemon');

-- Fin des mise à jour de la colonne "methode_evolve".



-- Début de mise à jour de la colonne "description".
-- source : https://www.pokepedia.fr

UPDATE pokemon
set description = "Description du pokedex"
Where id_pok='id_du_pokemon'; 
-- ou --
UPDATE pokemon
set description = "Description du pokedex"
WHERE nom_pok in ('Nom_du_pokemon');

-- Fin de la mise à jour de la colonne "description".

-- Ajout d'une colonne "Dresseur" après "description".
ALTER TABLE pokemon ADD Dresseur varchar(15) not null AFTER description;

-- Ajout du nom de dresseur sur certains pokémons
-- (Basé sur les équipes reconnues de ces dresseurs.)
-- Red, Blue, Leaf, Olga, Aldo, Agatha, Peter (Nom des dresseurs) 

Red = Pikachu, Lokhlass, Ronflex, Florizarre, Dracaufeu, Tortank
Blue = Roucarnage, Noadkoko, Arcanin, Leviator, Rhinoferos, Alakazam
Leaf = Melodelfe, Tortank, Ectoplasma, Empiflor, Feunard, Kangourex
Olga = Lamantine, Crustabri, Flagadoss, Lippoutou, Lokhlass
Aldo = Onix, Tygnon, Kicklee, Mackogneur
Agatha = Ectoplasma, Nosferalto, Spectrum, Arbok
Peter = Draco, Dracolosse, Leviator, Ptera

-- Mise à jour des lignes de la colonne "dresseur".
UPDATE pokemon
SET dresseur = 'Red'
WHERE nom_pok in ('Pikachu', 'Lokhlass', 'Ronflex','Florizarre','Tortank','Dracaufeu');

UPDATE pokemon
SET dresseur = 'Blue'
WHERE nom_pok in ('Roucarnage', 'Noadkoko', 'Arcanin','Leviator','Rhinoferos','Alakazam');

UPDATE pokemon
SET dresseur = 'Leaf'
WHERE nom_pok in ('Melodelf', 'Tortank', 'Ectoplasma','Empiflor','Feunard','Kangourex');

UPDATE pokemon
SET dresseur = 'Olga'
WHERE nom_pok in ('Lamantine', 'Crustabri', 'Flagadoss','Lippoutou','Lokhlass');

UPDATE pokemon
SET dresseur = 'Aldo'
WHERE nom_pok in ('Onix', 'Mackogneur', 'Tygnon','Kicklee');


UPDATE pokemon
SET dresseur = 'Agatha'
WHERE nom_pok in ('Arbok', 'Ectoplasma', 'Spectrum','Nosferalto');

UPDATE pokemon
SET dresseur = 'Peter'
WHERE nom_pok in ('Draco', 'Dracolosse', 'Leviathor','Ptera');

-- Pour les cas ou les pokémons appartiennent à plusieurs dresseurs en même temps.

Lokhlass = Red, Olga
Tortank = Red, Leaf
Flagadoss = Blue, Olga
Leviator = Blue, Peter
Ectoplasma = Leaf, Agatha

UPDATE pokemon
SET dresseur = 'Red, Olga'
WHERE nom_pok in ('Lokhlass');

UPDATE pokemon
SET dresseur = 'Red, Leaf'
WHERE nom_pok in ('Tortank');

UPDATE pokemon
SET dresseur = 'Blue, Olga'
WHERE nom_pok in ('Flagadoss');

UPDATE pokemon
SET dresseur = 'Blue, Peter'
WHERE nom_pok in ('Leviator');

UPDATE pokemon
SET dresseur = 'Leaf, Agatha'
WHERE nom_pok in ('Ectoplasma');

-- Créer une table "couleur" puis ajouter les codes couleurs des pokémons :

ALTER TABLE Pokemon ADD couleur TEXT NOT NULL AFTER dresseur;

UPDATE pokemon
SET couleur = '#DEFDE0'
where nom_pok in ('Mystherbe','Ortide', 'Rafflesia') ;

fire: '#FDDFDF',
grass: '#DEFDE0',
electric: '#FCF7DE',
water: '#DEF3FD',
ground: '#f4e7da',
rock: '#d5d5d4',
fairy: '#fceaff',
poison: '#98d7a5',
bug: '#f8d5a3',
dragon: '#97b3e6',
psychic: '#eaeda1',
flying: '#F5F5F5',
fighting: '#E6E0D4',
normal: '#F5F5F5',
spectral: '#8A568A'

