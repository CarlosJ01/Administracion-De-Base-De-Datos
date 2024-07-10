<?php
  include("conector.php");
  include("header.php");
  if ($_SESSION['login'] == false) {
    include("login.php");
  }else{
    include("menu.php");
    switch ($op) {
      case '10':
          include("Ventanas/verAlumno.php");
        break;
      case '20':
          include("Ventanas/verMaestro.php");
        break;
      case '30':
          include("Ventanas/verKardex.php");
        break;
      case '40':
          include("Ventanas/verGrupo.php");
        break;
      case '50':
          include("Ventanas/nuevoAlumno.php");
        break;
      case '60':
          include("Ventanas/nuevoDocente.php");
        break;
      case '70':
          include("Ventanas/modificarCalificacion.php");
        break;
      case '80':
          include("salir.php");
        break;
    }
  }
  include("pie.php");
?>
