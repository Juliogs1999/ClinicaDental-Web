<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
/*use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'PHPMailer/Exception.php';
require 'PHPMailer/PHPMailer.php';  
require 'PHPMailer/SMTP.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    //Server settings
                  //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'mail.smileyperu.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'webjuliogalindo@smileyperu.com';                     //SMTP username
    $mail->Password   = 'Pucallpa2023';                               //SMTP password
    $mail->SMTPSecure = 'ssl';            //Enable implicit TLS encryption
    $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('webjuliogalindo@smileyperu.com', 'Smiley Peru');
    $mail->addAddress('juliogs1999@gmail.com'); //Add a recipient
                //Name is optional
    //$mail->addReplyTo('info@example.com', 'Information');
    //$mail->addCC('cc@example.com');
    //$mail->addBCC('bcc@example.com');

    //Attachments
    //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
    //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = 'Confirmación de reserva en Smiley Peru';
    $mail->Body    = 'Estimado/a Julio ,<br><br>Tu reserva en Smiley Peru ha sido confirmada.<br><br>Gracias por confiar en nosotros.<br>Equipo Smiley Peru';
    

    $mail->send();
    echo 'El correo de confirmación ha sido enviado correctamente';
} catch (Exception $e) {
    echo "Hubo un error al enviar el correo de confirmación: $mail->ErrorInfo";
}*/