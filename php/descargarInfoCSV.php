<?php
require './conexionBD.php';
require '../vendor/autoload.php';

//funcion
$fp = fopen('php://output', 'w');

//nombre de columnas
$query = "SHOW COLUMNS FROM mensajeros";
$result = mysqli_query($conexion, $query);
while ($row = mysqli_fetch_row($result)) {
$header[] = $row[0];
}

//tipo de archivo - nombre que le queremos dar
header('Content-type: application/csv');
header('Content-Disposition: attachment; filename="ASIGNACION'.gmdate('YmdHi').'.csv"');
fputcsv($fp, $header);

//informacion que queremos descargar 
$query = "SELECT g.idguia,m.nombre, m.cedula FROM guiasasignadas g INNER JOIN mensajeros m ON g.idmensajero = m.id";
$result = mysqli_query($conexion, $query);
while($row = mysqli_fetch_row($result)) {
fputcsv($fp, $row);
}
exit;


?>