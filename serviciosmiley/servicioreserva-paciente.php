<?php
header('Access-Control-Allow-Origin: *');
   
    //Esto es para que se pueda acceder a este servicio desde cualquier dominio
    $cn = mysqli_connect("localhost","root","","baseclinica");   
    $rs = mysqli_query($cn,"SELECT paciente.NomPaciente, paciente.DniPaciente, paciente.ApePaciente, paciente.TelfPaciente, paciente.CorreoPaciente, 
    clinica.IdClinica, clinica.Sede, reserva.IdReserva, reserva.Hora, reserva.Fecha, reserva.Motivo FROM reserva INNER JOIN paciente on reserva.DniPaciente = paciente.DniPaciente  
     INNER JOIN clinica on reserva.IdClinica = clinica.IdClinica ");        
     while($row = mysqli_fetch_assoc($rs)){
        //Con la estructura de repetición while, se examina
        //cada una de las filas de la consulta
        //donde en cada repetición $row representa
        //a cada fila

        $res[] = array_map("utf8_encode",$row);
        //Asi los datos de cada fila se agregan
        //a un arreglo ($res[])
    };
    echo json_encode($res);
    //Con json_encode se convierte el arreglo ($res)
    //a formato JSON
    //con echo se imprime
    mysqli_close($cn)
    
?>