<?php
header('Access-Control-Allow-Origin: *');
   
    //Esto es para que se pueda acceder a este servicio desde cualquier dominio
    $cn = mysqli_connect("localhost","root","","baseclinica");   
    $rs = mysqli_query($cn,"SELECT paciente.idpaciente, paciente.nompaciente, paciente.apepaciente, paciente.telfpaciente, paciente.correopaciente, 
    clinica.idclinica, clinica.sede, reserva.idreserva, reserva.horareserva, reserva.fechareserva, reserva.motivo FROM reserva INNER JOIN paciente on reserva.codigopaciente = paciente.idpaciente 
     INNER JOIN clinica on reserva.idclinica = clinica.idclinica order by idpaciente");  
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