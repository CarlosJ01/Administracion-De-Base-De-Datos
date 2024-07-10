<?php
  include("contrasenias.php");
  $qry = "SELECT * FROM alumno";
  $rsl = bd_consulta($qry,$_SESSION['tpo'],$pasUsr);
?>
  <h3>Alumnos Registrados</h3>
  <table>
    <thead>
      <tr>
        <th>Numero de Control</th>
        <th>Nombre</th>
        <th>Semestre</th>
      </tr>
    </thead>
    <tbody>
      <?php
        while ($row=mysqli_fetch_assoc($rsl)) {
        ?>
          <tr>
            <th><?php echo $row["numControl"]; ?></th>
            <th><?php echo $row["nombre"]; ?></th>
            <th><?php echo $row["semestre"]; ?></th>
          </tr>
        <?php
        }
      ?>
    </tbody>
  </table>
