<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- Bootstrap CSS v5.2.0-beta1 -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" >
    <link rel="stylesheet" href="../css/datatables.min.css" >
    <link rel="stylesheet" href="../css/bootstrap-clockpicker.css" >
    <link rel="stylesheet" href="../fullcalendar/main.css" >

</head>
<body>
    <nav class="navbar navbar-light justify-content-center fs-3 mb-5" style="background-color: #00FF5573";>
        gestión de turnos
    </nav>

    <?php
        $id = $_GET['replicar'];
        require_once("../db/dbConnection.php");
        $mySql = new Connection();
        $conn = $mySql->getConnection();
        $consulta = "select profesional,dni,title,description,start,end,textColor,backgroundColor
        from eventos where id = $id limit 1";
        $result = $conn->query($consulta);
        $row = mysqli_fetch_assoc($result);
    ?>

    <form action="../cruds/crudReplicarTurnos.php" method="POST" enctype="multipart/form-data">


        <div>
            dni
            <input type="number" name="dni" value="<?php echo $row['dni']?>" readonly>
        </div> 
        <div>
            <button type="submit" name="datos">guardar</button>
        </div>

    </form>
    




</body>
</html>