<?php
require "./conexionBD.php";

//Mostrar cantidad de registros de la tabla
$cantidadRegistros = "SELECT COUNT(*) total FROM guiasasignadas";

$consultaCantidadRegistros = mysqli_query($conexion, $cantidadRegistros);
$fila = mysqli_fetch_assoc($consultaCantidadRegistros);
$dataCantidadRegistros = $fila['total'];
echo("Total:".$dataCantidadRegistros);

?>