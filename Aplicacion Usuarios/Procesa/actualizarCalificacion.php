<?php
  $gpo = $_POST["gpo"];
  $numCont = $_POST["numCont"];
  $calif = $_POST["nvaCalif"];

  $usr = $_POST["usr"];
  $pas = $_POST["pas"];

  include("../conector.php");
  $qry =' UPDATE kardex
          SET calificacion = "'.$calif.'"
          WHERE idGrupo = "'.$gpo.'" AND numControl = "'.$numCont.'";';
  bd_consulta($qry,$usr,$pas);
  header('Location: ../index.php?op=30');
?>
