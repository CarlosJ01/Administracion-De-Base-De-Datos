<?php
  include("../conector.php");
  $usr = $_POST["usr"];
  $pas = $_POST["pass"];

  $qry ='SELECT * FROM usuarios WHERE usuario = "'.$usr.'" AND PASSWORD = "'.$pas.'"';
  $rsl = bd_consulta($qry,"acceso","DEF");
  if ($row=mysqli_fetch_assoc($rsl)) {
    SESSION_START();
    $_SESSION['login']=true;
    $_SESSION['usr']=$row["usuario"];
    $_SESSION['pas']=$row["password"];
    $_SESSION['tpo']=$row["tipo"];
    header('Location: ../index.php?op=10');
  }
  echo "Usuario o Contraseña incorrectos reintente";
?>
