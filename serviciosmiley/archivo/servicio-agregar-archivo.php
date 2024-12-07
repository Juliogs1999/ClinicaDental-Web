<?php
header('Access-Control-Allow-Origin: *');

$cn = mysqli_connect("localhost","root","","baseclinica");

if (!$cn) {
    die("La conexión a la base de datos ha fallado: " . mysqli_connect_error());
}

$codigoarchivo = $_POST["codigoarchivo"];
$codigo_paciente = $_GET["paciente"]; // Obtener el código del paciente de la URL

if ($_FILES["txtArchivo"]["error"] == UPLOAD_ERR_OK) {
    $nombreArchivo = $_FILES["txtArchivo"]["name"];
    $rutaTemporal = $_FILES["txtArchivo"]["tmp_name"];
    $rutaArchivo = "imagen/" . $nombreArchivo; // Cambia esto por la ruta donde desees guardar las imágenes
    move_uploaded_file($rutaTemporal, $rutaArchivo);
} else {
    $rutaArchivo = "";
    $nombreArchivo = ""; // Si no se cargó ninguna imagen, guarda una cadena vacía en la base de datos
}

echo json_encode(["NomArchivo" => $rutaArchivo, "NombreArchivo" => $nombreArchivo]);

$rs = mysqli_query($cn, "INSERT INTO archivo (CodigoArchivo,NomArchivo,CodigoPaciente) VALUES ('$codigoarchivo','$nombreArchivo','$codigo_paciente')");

if ($rs) {
    echo json_encode(["success" => true, "message" => "Inserción exitosa"]);
} else {
    echo json_encode(["success" => false, "message" => "Error al insertar los datos: " . mysqli_error($cn)]);
}

mysqli_close($cn);
?>

