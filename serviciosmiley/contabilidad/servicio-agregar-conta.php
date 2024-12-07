<?php
header('Access-Control-Allow-Origin: *');


$cn = mysqli_connect("localhost","root","","baseclinica");   

$codigocont = $_POST["codigocont"];
$historiacont = $_POST["historiacont"];
$fechacont = $_POST["fechacont"];
$clientecont = $_POST["clientecont"];
$dnicont = $_POST["dnicont"];
$tratamientocont = $_POST["tratamientocont"];
$metodocont = $_POST["metodocont"];
$pagocont = $_POST["pagocont"];
$tecnico = $_POST["tecnico"];
$doctorcont = $_POST["doctorcont"];
$sedecont = $_POST["sedecont"];
$cantidadcont = $_POST["cantidadcont"]; 



// Verificar si la sede ya existe en la tabla clinica


$rs = mysqli_query($cn, "INSERT INTO contabilidad (Codigocont,Historia,Sedecont,Fechacont,Clientecont,Dnicont,Cantidadcont,Tratamientocont,Metodocont,Pagocont,Tecnico,Doctorcont) VALUES('$codigocont','$historiacont','$sedecont','$fechacont',UPPER('$clientecont'),'$dnicont','$cantidadcont','$tratamientocont','$metodocont','$pagocont','$tecnico','$doctorcont')");

if ($rs) {
    echo "Inserción exitosa!";
} else {
    echo "Error al insertar los datos: " . mysqli_error($cn);
}




// Cerrar conexión
mysqli_close($cn);
?>