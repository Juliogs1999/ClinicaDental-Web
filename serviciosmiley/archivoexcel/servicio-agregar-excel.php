<?php
header('Access-Control-Allow-Origin: *');

$cn = mysqli_connect("localhost","root","","baseclinica");

if (!$cn) {
    die("La conexión a la base de datos ha fallado: " . mysqli_connect_error());
}

$codigoexcel = $_POST["codigoexcel"];


if ($_FILES["txtExcel"]["error"] == UPLOAD_ERR_OK) {
    $nombreExcel = $_FILES["txtExcel"]["name"];
    $rutaTemporal = $_FILES["txtExcel"]["tmp_name"];
    $rutaExcel = "excelimg/" . $nombreExcel; // Cambia esto por la ruta donde desees guardar las imágenes
    move_uploaded_file($rutaTemporal, $rutaExcel);
} else {
    $rutaExcel = "";
    $nombreExcel = ""; // Si no se cargó ninguna imagen, guarda una cadena vacía en la base de datos
}

echo json_encode(["NomExcel" => $rutaExcel, "NombreExcel" => $nombreExcel]);

$rs = mysqli_query($cn, "INSERT INTO excel (CodigoExcel,NomExcel) VALUES ('$codigoexcel','$nombreExcel')");

if ($rs) {
    echo json_encode(["success" => true, "message" => "Inserción exitosa"]);
} else {
    echo json_encode(["success" => false, "message" => "Error al insertar los datos: " . mysqli_error($cn)]);
}

mysqli_close($cn);
?>

