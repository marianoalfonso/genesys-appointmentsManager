<?php
include_once 'conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();

$apellido = (isset($_POST['apellido'])) ? $_POST['apellido'] : '';
$nombre = (isset($_POST['nombre'])) ? $_POST['nombre'] : '';
$dni = (isset($_POST['dni'])) ? $_POST['dni'] : '';
$direccion = (isset($_POST['direccion'])) ? $_POST['direccion'] : '';

$opcion = (isset($_POST['opcion'])) ? $_POST['opcion'] : '';
$id = (isset($_POST['id'])) ? $_POST['id'] : '';


switch($opcion){
    case 1:
        // echo '<script language="javascript">alert("opcion 1"); return false;</script>';
        // $consulta = "INSERT INTO personas (apellido, dni) VALUES ('$apellido', '$dni')";			
        // $consultaLOG = "INSERT INTO log (msg) VALUES ('$consulta')";			
        // $resultadoLOG = $conexion->prepare($consultaLOG);
        // $resultadoLOG->execute(); 


        $consulta = "INSERT INTO personas (apellido, nombre, dni, direccion) VALUES ('$apellido', '$nombre', '$dni', '$direccion')";			
        $resultado = $conexion->prepare($consulta);
        $resultado->execute(); 
        
        $consulta = "select personas.id,apellido,personas.nombre,dni,direccion,coberturas.nombre as cobertura,c1numero 
                        from personas left join coberturas ON
                        personas.cobertura1 = coberturas.id
                        order by apellido,personas.nombre";
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);       
        break;    
    case 2:        
        $consulta = "UPDATE usuarios SET username='$username', first_name='$first_name', last_name='$last_name', gender='$gender', password='$password', status='$status' WHERE user_id='$user_id' ";		
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();        
        
        $consulta = "SELECT * FROM usuarios WHERE user_id='$user_id' ";       
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;
    case 3:        
        $consulta = "DELETE FROM usuarios WHERE user_id='$user_id' ";		
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();                           
        break;
    case 4:    
        $consulta = "select personas.id as id,apellido,personas.nombre,dni,direccion,coberturas.nombre as cobertura,c1numero as socio
                        from personas inner join coberturas ON
                        personas.cobertura1 = coberturas.id
                        order by apellido,personas.nombre";
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();        
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;
}

print json_encode($data, JSON_UNESCAPED_UNICODE);//envio el array final el formato json a AJAX
$conexion=null;