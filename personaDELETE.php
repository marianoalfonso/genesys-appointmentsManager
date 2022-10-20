<?php
    include "connDB.php";
    $conn = regresarConexion();
    $id = $_GET['id'];
    $consulta = "delete from personas where id = $id";
    $resultado = mysqli_query($conn,$consulta);
    if($resultado){
        header("Location: personas.php");
    }

?>