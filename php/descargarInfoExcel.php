<?php
require './conexionBD.php';
require '../vendor/autoload.php';

//Para poder utilizar Spreadsheet
use PhpOffice\PhpSpreadsheet\{Spreadsheet,IOFactory};

//Creamos la consulta
$sql = "SELECT m.nombre, m.cedula, g.idguia FROM guiasasignadas g INNER JOIN mensajeros m ON g.idmensajero = m.id";
$resultado = mysqli_query($conexion, $sql);

$excel = new Spreadsheet();
//Indicamos que trabajamos con una hoja activa
$hojaActiva = $excel->getActiveSheet();
//Le damos un nombre al archivo
$hojaActiva->setTitle("Guias_Asignadas");

//Incluimos la informacion por columnas
$hojaActiva->setCellValue('A1', 'GUIA');
$hojaActiva->setCellValue('B1', 'CEDULA');
$hojaActiva->setCellValue('C1', 'MENSAJERO');

//Contenido empieza desde la fila 2
$fila = 2;

//while para alimentar el archivo
while($rows = $resultado->fetch_assoc()){
    $hojaActiva->setCellValue('A'.$fila, $rows['idguia']);
    $hojaActiva->setCellValue('B'.$fila, $rows['cedula']);
    $hojaActiva->setCellValue('C'.$fila, $rows['nombre']);
    $fila++;
}

header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="ASIGNACION'.gmdate('YmdHi').'.xlsx"');
header('Cache-Control: max-age=0');
//Guardamos el arcivo
$writer = IOFactory::createWriter($excel, 'Xlsx');
$writer->save('php://output');
exit;

?>