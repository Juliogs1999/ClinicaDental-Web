<?php
header('Access-Control-Allow-Origin: *');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
//use Twilio\Rest\Client;
//require __DIR__ . '/vendor/autoload.php'; // Ruta de la librería Twilio
//require __DIR__ . '/twilio-php-main/src/Twilio/autoload.php';

//use Twilio\Rest\Client;


require 'PHPMailer/Exception.php';
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';


$cn = mysqli_connect("localhost","root","","baseclinica");  

$dni = $_POST["dni"];
$nom = $_POST["nom"];
$ape = $_POST["ape"];
$telf = $_POST["telf"];
if (substr($telf, 0, 3) !== '+51') {
    // Agregas el código de país '+51' al número de teléfono
    $telf = '+51' . preg_replace('/[^0-9]/', '', $telf);
} else {
    // Si ya tiene '+51', limpias solo los caracteres no numéricos
    $telf = '+' . preg_replace('/[^0-9]/', '', $telf);
}
$correo = $_POST["correo"];
$sede = $_POST["sede"];
$fecha = $_POST["fecha"];
$hora = $_POST["hora"];
$motivo = $_POST["motivo"];

// Verificar si la sede ya existe en la tabla clinica
$rs = mysqli_query($cn, "SELECT IdClinica FROM clinica WHERE Sede = '$sede'");
if (mysqli_num_rows($rs) > 0) {
    $row = mysqli_fetch_assoc($rs);
    $IdClinica = $row['IdClinica'];
} else {
    // Si la sede no existe, insertarla y obtener el ID
    $rs = mysqli_query($cn, "INSERT INTO clinica (Sede) VALUES('$sede')");
    $IdClinica = mysqli_insert_id($cn);
}

$rs = mysqli_query($cn, "INSERT INTO paciente (DniPaciente,NomPaciente,ApePaciente,TelfPaciente,CorreoPaciente) VALUES('$dni', UPPER('$nom'),UPPER('$ape'),'$telf','$correo')");

$rs = mysqli_query($cn, "INSERT INTO reserva (Fecha,Hora,Motivo,DniPaciente,IdClinica) VALUES('$fecha','$hora','$motivo','$dni','$IdClinica')");
echo $cn->insert_id;
$mail = new PHPMailer(true);

try {
    // Configuración del servidor SMTP y envío de correo
    $mail->isSMTP();
    $mail->Host       = 'mail.smileyperu.com';
    $mail->SMTPAuth   = true;
    $mail->Username   = 'webjuliogalindo@smileyperu.com';
    $mail->Password   = 'Pucallpa2023';
    $mail->SMTPSecure = 'ssl';
    $mail->Port       = 465;

    $mail->setFrom('webjuliogalindo@smileyperu.com', 'Smiley Peru');    
    $mail->addAddress($correo, $nom);
    $mail->isHTML(true);
    $mensaje = "Estimado/a $nom $ape,<br><br>Tu reserva en Smiley Peru ha sido confirmada en la sede $sede para el día $fecha a las $hora.<br><br>Gracias por confiar en nosotros.<br>Equipo Smiley Peru";
    $mail->Subject = 'Confirmacion de reserva en Smiley Peru';
    $mail->Body    = $mensaje;

    $mail->send();
    echo 'El correo de confirmacion ha sido enviado correctamente';
} catch (Exception $e) {
    echo "Hubo un error al enviar el correo de confirmación: $mail->ErrorInfo";
}


// ... (tu código existente)

// Código para enviar un mensaje de texto


/*$account_sid = getenv('AC4d596591f55dfd1912f2b1d6b2f484ba');
$auth_token = getenv('4885973f5fa26fe8042cbe0b20c6f71b');// Reemplaza con tu auth token
$twilio_number = "+15017122661";

$mensajeSMS = "Estimado/a $nom $ape,<br><br>Tu reserva en Smiley Peru ha sido confirmada en la sede $sede para el día $fecha a las $hora.<br><br>Gracias por confiar en nosotros.<br>Equipo Smiley Peru"

try {
    $mensaje = $twilio->messages->create(
        // Número desde el que se enviará el mensaje (tu número verificado)
        , $telf 
        array(
            // Número al que se enviará el mensaje (proporcionado por el usuario)
            'from' =>$twilio_number,
            'body' => $mensajeSMS
        )
    );

    // Éxito al enviar el mensaje
    echo 'Mensaje de texto enviado correctamente';
} catch (Exception $e) {
    // Error al enviar el mensaje
    echo "Hubo un error al enviar el mensaje de texto: {$e->getMessage()}";
}
*/



// Cerrar conexión
mysqli_close($cn);
?>