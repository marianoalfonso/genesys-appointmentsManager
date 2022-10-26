<?php

    if(isset($_POST['submit'])){
        $id = $_POST['id'];
        $replicarHasta = "'".$_POST['endDate']."'";
    }

//     try{
//         require_once("../db/dbConnection.php");
//         $mySql = new Connection();
//         $conn = $mySql->getConnection();
//         // replicar turnos
//         $consulta = "call mpa_ReplicarFecha ($id,$replicarHasta)";
//         $result = $conn->query($consulta);
//     } catch (PDOException $e) {
//         die("Error occurred:" . $e->getMessage());
// }

include "../db/connDB.php";
$conn = regresarConexion();
$consulta = "call mpa_replicarFecha($id, $replicarHasta)";
$result = mysqli_query($conn, $consulta);
if($result){
    header("Location: ../profesionalesTurnos.php");
} else {
    echo "error replicando los turnos: ".mysqli_error($conn);
}


?>