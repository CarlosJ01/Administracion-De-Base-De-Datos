<?php
  function bd_consulta($query,$user,$password){
    $hostname="localhost";
    $bd="escuela";
    $connection = mysqli_connect($hostname , $user , $password);

    if (!$connection->set_charset("utf8")) {
      printf("Error cargando el conjunto de caracteres utf8: %s\n",
      $mysqli->error);
      exit();
    }

    if($connection == false)
      $mensaje_form="Ha habido un error".mysqli_connect_error();

    mysqli_select_db ($connection, $bd);
    $result = mysqli_query($connection, $query);
    mysqli_close($connection);
    return $result;
  }
?>
