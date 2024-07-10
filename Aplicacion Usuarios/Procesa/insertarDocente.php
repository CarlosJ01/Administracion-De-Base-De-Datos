<?php
    $rcf = $_POST["rfc"];
    $nom = $_POST["nom"];

    $usr = $_POST["usr"];
    $pas = $_POST["pas"];

    include("../conector.php");
    $qry ='INSERT INTO docente VALUES ("'.$rcf.'", "'.$nom.'")';
    bd_consulta($qry,$usr,$pas);
    header('Location: ../index.php?op=60');
?>
