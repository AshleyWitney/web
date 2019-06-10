<div class="jumbotron" style="background-color:#f3ca96">
    <h1 class="display-4">Hello,bienvenue sur ta page d'administration Ashley!</h1>
    <img src="img/Ashley.jpg" width="300"  class="imga" class="photo" style="border-radius: 100%">
    <p class="lead">Bonne continuation!</p>
    <hr class="my-4">

    <?php

    if (!isset($_SERVER['PHP_AUTH_USER'])) {
        header('WWW-Authenticate: Basic realm="My Realm"');
        header('HTTP/1.0 401 Unauthorized');
        echo "Bye bye";
        exit;
    }

    if (
        $_SERVER['PHP_AUTH_USER'] != 'admin' ||
        $_SERVER['PHP_AUTH_PW'] != '123456'
    ) {
        echo "On se connait pas !";
        die;
    }
    ?>

</div>
<?php



session_start();
require_once '_functions.php';

if(isset($_GET['page'])) {
    $page = $_GET['page'];
}else {
    $page = 'acceuil';

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Ashley Witney KONATE</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <source src="main.js" type="">
    <link rel="shortcut icon" type="image/x-icon" href="../img/Ashley.jpg" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>
<body>

<header>

    <div class="container-fluide">
        <div class="row">
            <div class="col">

                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.php"> <img src="user.png"  width="25px" height="25px"> <strong>Ashley KONATE</strong > </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#apropos"> <img src="notification.png"  width="25px" height="25px"> </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"> <img src="envelope.png"  width="25px" height="25px">  </a>
                    </li>

                </ul>

            </div>
        </div>
    </div>
</header><br><br>
<div class="row">
    <div class="col-lg-6" style="background-color:#f3ca96">

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
        </head>

        <body data-spy="scroll">
        <section id="about" class="about section">




            <form style="margin-top: 50px; margin-left: 150px">
                <h3>A propos</h3>
                <a href="apropos.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a>
                <h3>Formations</h3>
                <a href="formation.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a>
                <h3>Expériences </h3>
                <a href="experience.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a>

                <h3>Projet</h3>
                <a href="projet.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a>

                <h3>Compétances</h3>
                <a href="competance.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a>

                <h3>Langue</h3>
                <a href="langue.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a>

                <h3>Loisirs</h3>
                <a href="loisir.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a>
                <h3>Techno</h3>
                <a href="techno.php"><button type="button" class="btn btn-outline-primary">Modifier</button></a>
            </form>
            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>



        </body>
        </html>



    </div>

    <div class="col-lg-6" style="background-color: #f3ca96">
        <h1>Acceuil</h1>

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
        <!doctype html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport"
                  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            <title>Mon site</title>
        </head>
        <body>
        <h1> Données formulaire</h1> <br>
        <table class="table table-bordered" style="background-color:#f3ca96">
            <thead>
            <tr style="background-color:#8e4b37">
                <th scope="col" style="color: white">Noms</th>
                <th scope="col" style="color: white">Prénoms</th>
                <th scope="col" style="color: white">Email</th>
                <th scope="col" style="color: white">Messages</th>
            </tr>
            </thead>
            <tbody>
            <tr style="color: white">
                <?php
                $stmt = $dbh->query('SELECT * FROM mon_schemas.contact');
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)):
                ?>
                <th scope="row" style="color: white"> <?= $row['nom']; ?> </th>
                <td style="color: white"><?= $row['prenom']; ?></td>
                <td style="color: white"> <?= $row['email']; ?> </td>
                <td style="color: white"> <?= $row['message']; ?> </td>
            </tr>

            <?php
            endwhile;
            ?>
            </tbody>
        </table>


        </body>
        </html>

    </div>
</div>


</div>
</body>
</html>