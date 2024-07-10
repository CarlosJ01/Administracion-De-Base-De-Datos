<?php
  include("contrasenias.php");
?>
<form action="Procesa/actualizarCalificacion.php" method="post">
  <div>
    <label>Grupo</label>
    <select name="gpo">
      <?php
        $qry = "SELECT * FROM kardex GROUP BY idGrupo";
        $rsl = bd_consulta($qry,$_SESSION['tpo'],$pasUsr);
        while ($row=mysqli_fetch_assoc($rsl)) {
      ?>
        <option value="<?php echo $row["idGrupo"]; ?>"><?php echo $row["idGrupo"]; ?></option>
      <?php
        }
      ?>
    </select>
  </div>

  <div>
    <label>Numero de control</label>
    <select name="numCont">
      <?php
        $qry = "SELECT * FROM kardex GROUP BY numControl";
        $rsl = bd_consulta($qry,$_SESSION['tpo'],$pasUsr);
        while ($row=mysqli_fetch_assoc($rsl)) {
      ?>
        <option value="<?php echo $row["numControl"]; ?>"><?php echo $row["numControl"]; ?></option>
      <?php
        }
      ?>
    </select>
  </div>

  <div>
    <label>Nueva Calificacion</label>
    <input type="text" name="nvaCalif" required>
  </div>

  <div>
    <input type="submit" value="Modificar" id="btn">
  </div>

  <input type="hidden" name="usr" value="<?php echo $_SESSION['tpo'] ?>">
  <input type="hidden" name="pas" value="<?php echo $pasUsr; ?>">
</form>
