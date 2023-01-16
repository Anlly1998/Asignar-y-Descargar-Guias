<?php

require "./conexionBD.php";

//Hacemos la consulta
$consulta = "SELECT * FROM mensajeros";
//Ejectuamos la consulta
$ejecutarConsulta = mysqli_query($conexion, $consulta);

//Traemos todo el resultado y lo ponemos en un array llamado fila
$data = '<option value="0">Seleccionar un mensajero</option>';
while($row = mysqli_fetch_assoc($ejecutarConsulta)){
    $data = $data."<option value='".$row['id']."'>".$row['nombre']."</option>";
}
echo($data);

//liberamos los resultados
mysqli_free_result($ejecutarConsulta);

?>