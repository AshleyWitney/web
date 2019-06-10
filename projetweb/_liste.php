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
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Mon site</title>
</head>
<body>

<header>
    <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="/_creer.php" role="tab" aria-controls="nav-home" aria-selected="true">Fonctionalités</a>
            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="/_liste.php" role="tab" aria-controls="nav-profile" aria-selected="false">Données du formulaire</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="/_co.php" role="tab" aria-controls="nav-contact" aria-selected="false">Acceuil</a>
        </div>
    </nav>
</header>
<h1> Données formulaire</h1> <br>
<table class="table table-bordered" style="background-color:papayawhip">
    <thead>
    <tr style="background-color:papayawhip">
        <th scope="col">Noms</th>
        <th scope="col">Prénoms</th>
        <th scope="col">Email</th>
        <th scope="col">Messages</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <?php
        $stmt = $dbh->query('SELECT * FROM mon_schemas.contact');
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)):
        ?>
        <th scope="row"> <?= $row['nom']; ?> </th>
        <td><?= $row['prenom']; ?></td>
        <td> <?= $row['email']; ?> </td>
        <td> <?= $row['message']; ?> </td>
    </tr>

    <?php
    endwhile;
    ?>

</table>

</body>
</html>
