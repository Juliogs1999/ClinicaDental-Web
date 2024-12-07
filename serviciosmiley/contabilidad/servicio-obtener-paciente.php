<?php
header('Access-Control-Allow-Origin: *');

$cn = mysqli_connect("localhost","root","","baseclinica");

// Asegúrate de usar parámetros de entrada seguros
$historia = mysqli_real_escape_string($cn, $_GET['historia']);

$sql = "SELECT cliente.Codigo, cliente.Nombre, cliente.Apellido, cliente.Dni FROM cliente WHERE cliente.Codigo = '$historia'";
$rs = mysqli_query($cn, $sql);

$res = array();
while($row = mysqli_fetch_assoc($rs)){
    $res[] = $row;
}

echo json_encode($res);

mysqli_close($cn);
?>
