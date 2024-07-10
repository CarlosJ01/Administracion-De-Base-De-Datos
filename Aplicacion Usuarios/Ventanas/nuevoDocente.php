<?php
  include("contrasenias.php");
?>
<form action="Procesa\insertarDocente.php" method="post">
  <div>
    <label>RFC: </label>
    <input type="text" name="rfc">
  </div>

  <div>
    <label>Nombre: </label>
    <input type="text" name="nom">
  </div>

  <div>
    <input type="submit" id="btn">
  </div>
  <input type="hidden" name="usr" value="<?php echo $_SESSION['tpo'] ?>">
  <input type="hidden" name="pas" value="<?php echo $pasUsr; ?>">
</form>
