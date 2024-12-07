<?php
header('Access-Control-Allow-Origin: *');

$cn = mysqli_connect("localhost","root","","baseclinica");

if (!$cn) {
    die("La conexión a la base de datos ha fallado: " . mysqli_connect_error());
}

$codigoarchivo = $_POST["codigoarchivo"];
$nombrearchivonuevo = $_POST["nombrearchivonuevo"]; // Nuevo nombre que se desea asignar

// Primero, obtén el nombre antiguo del archivo
$query = "SELECT NomArchivo FROM archivo WHERE CodigoArchivo=$codigoarchivo";
$result = mysqli_query($cn, $query);

if ($result && mysqli_num_rows($result) > 0) {
    $fila = mysqli_fetch_assoc($result);
    $nombreAntiguo = $fila['NomArchivo'];
    $rutaAntigua = "imagen/" . $nombreAntiguo; // Ruta del archivo antiguo
    $rutaNueva = "imagen/" . $nombrearchivonuevo; // Nueva ruta con el nuevo nombre

    // Cambia el nombre del archivo en el sistema de archivos
    if (rename($rutaAntigua, $rutaNueva)) {
        // Si se renombra correctamente, actualiza el nombre en la base de datos
        $updateQuery = "UPDATE archivo SET NomArchivo='$nombrearchivonuevo' WHERE CodigoArchivo=$codigoarchivo";
        $rs = mysqli_query($cn, $updateQuery);

        if ($rs) {
            echo json_encode(["success" => true, "message" => "Actualización exitosa"]);
        } else {
            echo json_encode(["success" => false, "message" => "Error al actualizar los datos: " . mysqli_error($cn)]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Error al renombrar el archivo en el servidor."]);
    }
} else {
    echo json_encode(["success" => false, "message" => "Archivo no encontrado."]);
}

mysqli_close($cn);

?>