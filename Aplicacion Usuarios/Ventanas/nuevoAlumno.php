<?php
  include("contrasenias.php");
?>
<form action="Procesa\insertarAlumno.php" method="post">
  <div>
    <label>Numero de Control: </label>
    <input type="text" name="numCont">
  </div>

  <div>
    <label>Nombre: </label>
    <input type="text" name="nom">
  </div>

  <div>
    <label>Semestre: </label>
    <input type="text" name="sem">
  </div>

  <div>
    <input type="submit" id="btn">
  </div>
  <input type="hidden" name="usr" value="<?php echo $_SESSION['tpo'] ?>">
  <input type="hidden" name="pas" value="<?php echo $pasUsr; ?>">
</form>
