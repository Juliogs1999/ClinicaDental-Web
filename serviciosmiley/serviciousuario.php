<?php
// Conexión a la base de datos (modifica los valores según tu configuración)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "baseclinica";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Verificación de inicio de sesión
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $sql = "SELECT * FROM doctor WHERE DniDoctor = '$username' AND ContraseñaDoctor = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Inicio de sesión exitoso
        header("Location: http://127.0.0.1:5500/ClinicaDental-web/usuario.html");
        exit(); // Asegura que el script se detenga después de la redirección
    } else {
        // Credenciales incorrectas
        echo "Nombre de usuario o contraseña incorrectos";
    }
}

$conn->close();
?>


