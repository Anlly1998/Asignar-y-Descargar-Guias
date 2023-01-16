<?php

require "./conexionBD.php";

//Recibimos los datos
$numeroguia = $_POST["guia"];
$idMensajero = $_POST["idMensajero"];

//Hacemos la consulta
$insertar = "INSERT INTO guiasasignadas(idguia,idmensajero) VALUES ('$numeroguia','$idMensajero')";

$resultado = mysqli_query($conexion, $insertar);


if($resultado){
    echo "Se agrego la guia con exitoso";
} else{
    echo "No se pudo registrar";
}
?>