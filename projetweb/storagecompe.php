<?php
$bbd = 'pgsql:host=localhost;dbname=portfolio';
$user = 'postgres';
$password = 'FLORENCE5345_a';
try {
    $dbh = new PDO($bbd, $user, $password);
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
    die;
}
/*
//creer connexion To the BD
$dsn = 'mysql:dbname=admin;host=127.0.0.1';
$user = 'root';
$password = '';

try {
    $dbh = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
}
*/
$sql = "INSERT INTO mon_schemas.competenceclef (competence1, competence2, competence3) VALUES (?,?,?)";
$stmt = $dbh->prepare($sql);
//Executer la requete
$stmt->execute([$_GET['competence1'], $_GET['competence2'], $_GET['competence3']]);