<?php
header('Access-Control-Allow-Origin: *');


$cn = mysqli_connect("localhost","root","","baseclinica");  

$cantidad = $_POST["cantidad"];
$descripcion = $_POST["descripcion"];
$preciou = $_POST["preciou"];
$preciot = $cantidad * $preciou;




// Verificar si la sede ya existe en la tabla clinica


$rs = mysqli_query($cn, "INSERT INTO tratamiento (Cantidad,Descripcion,PrecioUni,PrecioTotal) VALUES('$cantidad',UPPER('$descripcion'),'$preciou','$preciot')");
if ($rs) {
    echo "Insercion exitosa!";
} else {
    echo "Error al insertar los datos: " . mysqli_error($cn);
}




// Cerrar conexión
mysqli_close($cn);
?>