<?php
header('Access-Control-Allow-Origin: *');


$cn = mysqli_connect("localhost","root","","baseclinica");   

$codigoegre = $_POST["codigoegre"];
$fechaegre = $_POST["fechaegre"];
$descripcionegre = $_POST["descripcionegre"];
$tipoegre = $_POST["tipoegre"];
$precioegre = $_POST["precioegre"];




// Verificar si la sede ya existe en la tabla clinica


$rs = mysqli_query($cn, "INSERT INTO egreso (Codigoegre,Fechaegre,Descripcionegre,Tipoegre,Precioegre) VALUES('$codigoegre','$fechaegre','$descripcionegre','$tipoegre','$precioegre')");
if ($rs) {
    echo "Inserción exitosa!";
} else {
    echo "Error al insertar los datos: " . mysqli_error($cn);
}




// Cerrar conexión
mysqli_close($cn);
?>