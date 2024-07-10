<?php
  switch ($_SESSION['tpo']) {
    case 'director':
        $pasUsr = "123";
      break;
    case 'docente':
        $pasUsr = "456";
      break;
    case 'alumno':
        $pasUsr = "789";
      break;
    case 'secretaria':
        $pasUsr = "ABC";
      break;
  }
?>
