<?php
  include("contrasenias.php");
  $qry = "SELECT * FROM docente";
  $rsl = bd_consulta($qry,$_SESSION['tpo'],$pasUsr);
?>
  <h3>Maestros Registrados</h3>
  <table>
    <thead>
      <tr>
        <th>RFC</th>
        <th>Nombre</th>
      </tr>
    </thead>
    <tbody>
      <?php
        while ($row=mysqli_fetch_assoc($rsl)) {
        ?>
          <tr>
            <th><?php echo $row["rfc"]; ?></th>
            <th><?php echo $row["nombre"]; ?></th>
          </tr>
        <?php
        }
      ?>
    </tbody>
  </table>
