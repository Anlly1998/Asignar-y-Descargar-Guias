<?php

//Conexion al servidor
$conexion = mysqli_connect("127.0.0.1", "root", "", "proyectomodulo1");
mysqli_set_charset($conexion, "utf8");

if(!$conexion){
    echo "Error en la conexion con el servidor";
}

?>