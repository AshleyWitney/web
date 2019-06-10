<?php
/*
//creer connexion To the BD
$dsn = 'mysql:dbname=formulaire;host=127.0.0.1';
$user = 'root';
$password = '';

try {
$dbh = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
echo 'Connexion échouée : ' . $e->getMessage();
}
*/


/*
//creer connexion To the BD
$dsn = 'mysql:dbname=formulaire;host=127.0.0.1';
$user = 'root';
$password = '';

try {
    $dbh = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
}
*/

$bbd = 'pgsql:host=localhost;dbname=portfolio';
$user = 'postgres';
$password = '';
try {
    $dbh = new PDO($bbd, $user, $password);
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
    die;
}

//Preparer requete d'insertion

$sql = "INSERT INTO mon_schemas.contact (prenom,nom,message,email) VALUES (?,?,?,?)";
$stmt = $dbh->prepare($sql);
//Executer la requete
$stmt->execute([$_GET['prenom'], $_GET['nom'], $_GET['message'], $_GET['email']]);

/*} else {
$sth = $dbh->prepare("
SELECT id, nom
FROM contact
WHERE nom = :nom
");

$sth->bindValue('nom', $_GET['nom']); */