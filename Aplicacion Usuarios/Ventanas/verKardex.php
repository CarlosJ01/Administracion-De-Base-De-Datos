<?php
  include("contrasenias.php");
  $qry = "SELECT * FROM kardex";
  $rsl = bd_consulta($qry,$_SESSION['tpo'],$pasUsr);
?>
  <h3>Kardex Alumnos</h3>
  <table>
    <thead>
      <tr>
        <th>Id Grupo</th>
        <th>Numero de Control</th>
        <th>calificacion</th>
      </tr>
    </thead>
    <tbody>
      <?php
        while ($row=mysqli_fetch_assoc($rsl)) {
        ?>
          <tr>
            <th><?php echo $row["idGrupo"]; ?></th>
            <th><?php echo $row["numControl"]; ?></th>
            <th><?php echo $row["calificacion"]; ?></th>
          </tr>
        <?php
        }
      ?>
    </tbody>
  </table>
