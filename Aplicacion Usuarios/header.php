<?php
  SESSION_START();
  if(!isset($_SESSION['login']))
    $_SESSION['login']=false;
  if(!isset($_GET['op']))
    $op=0;
  else
    $op=$_GET['op'];
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="CSS/estilo.css">
    <title>ABD</title>
  </head>

  <header>
    <h1>Manejo de la Base de Datos Escuela</h1>
  </header>

  <body>
    <section>
