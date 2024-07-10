<?php
  include("contrasenias.php");
  $qry = "SELECT nombre AS materia, grupo, periodo
          FROM grupos INNER JOIN materia ON grupos.idMateria = materia.idMateria
          ORDER BY periodo DESC,materia ASC,grupo ASC";
  $rsl = bd_consulta($qry,$_SESSION['tpo'],$pasUsr);
?>
  <h3>Grupos</h3>
  <table>
    <thead>
      <tr>
        <th>Materia</th>
        <th>Grupo</th>
        <th>Periodo</th>
      </tr>
    </thead>
    <tbody>
      <?php
        while ($row=mysqli_fetch_assoc($rsl)) {
        ?>
          <tr>
            <th><?php echo $row["materia"]; ?></th>
            <th><?php echo $row["grupo"]; ?></th>
            <th><?php echo $row["periodo"]; ?></th>
          </tr>
        <?php
        }
      ?>
    </tbody>
  </table>
