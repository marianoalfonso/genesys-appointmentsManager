<?php
include_once 'conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();

$apellido = (isset($_POST['apellido'])) ? $_POST['apellido'] : '';
$nombre = (isset($_POST['nombre'])) ? $_POST['nombre'] : '';

$opcion = (isset($_POST['opcion'])) ? $_POST['opcion'] : '';
$id = (isset($_POST['id'])) ? $_POST['id'] : '';


switch($opcion){
    case 1:
        $consulta = "INSERT INTO usuarios (apellido, nombre) VALUES('$apellido', '$nombre')";			
        $resultado = $conexion->prepare($consulta);
        $resultado->execute(); 
        
        // $consulta = "SELECT * FROM usuarios ORDER BY user_id DESC LIMIT 1";
        $consulta = "select personas.id,apellido,personas.nombre,dni,direccion,coberturas.nombre as cobertura,c1numero 
                        from personas inner join coberturas ON
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
        $consulta = "SELECT * FROM usuarios";
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();        
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;
}

print json_encode($data, JSON_UNESCAPED_UNICODE);//envio el array final el formato json a AJAX
$conexion=null;