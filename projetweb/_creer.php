<?php

require_once '_connection.php';

?>

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

$bbd = 'pgsql:host=localhost;dbname=portfolio';
$user = 'postgres';
$password = 'FLORENCE5345_a';
try {
    $dbh = new PDO($bbd, $user, $password);
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
    die;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!-- Global CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="assets/plugins/prism/prism.css">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" type="text/css" href="index.css">
    <link rel="stylesheet" type="text/css" href="menu.css">


    <link rel="stylesheet" type="text/css" href="style.css">
    <source src="main.js" type="">
    <link rel="shortcut icon" type="image/x-icon" href="../img/0.jpg" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>
<body>





            <!-- Image and text -->

            <form style="margin-top: 50px;background-color: papayawhip;text-align: center;text-decoration-color: white" >
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="/_creer.php" role="tab" aria-controls="nav-home" aria-selected="true">Fonctionalités</a>
                        <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="/_liste.php" role="tab" aria-controls="nav-profile" aria-selected="false">Données du formulaire</a>
                        <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="/_co.php" role="tab" aria-controls="nav-contact" aria-selected="false">Acceuil</a>
                    </div>
                </nav>
                <h3>A propos</h3>
                <a href="apropos.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a><br><br>
                <h3>Formations</h3>
                <a href="formation.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a><br><br>
                <h3>Expériences </h3>
                <a href="experience.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a><br><br>

                <h3>Projet</h3><br><br>
                <a href="projet.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a><br><br>

                <h3>Compétences</h3>
                <a href="competance.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a><br><br>

                <h3>Conaissances linguistiques</h3>
                <a href="langue.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a><br><br>

                <h3>Loisirs</h3>
                <a href="loisir.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a><br><br>
            </form>
            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>







</body>
</html>