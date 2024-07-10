<?php
    $numCont = $_POST["numCont"];
    $nom = $_POST["nom"];
    $sem = $_POST["sem"];

    $usr = $_POST["usr"];
    $pas = $_POST["pas"];

    include("../conector.php");
    $qry ='INSERT INTO alumno VALUES ("'.$numCont.'", "'.$nom.'", "'.$sem.'")';
    bd_consulta($qry,$usr,$pas);
    header('Location: ../index.php?op=50');
?>
