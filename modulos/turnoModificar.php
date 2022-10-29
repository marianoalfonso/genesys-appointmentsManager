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
        session_start();
        $_SESSION['accion'] = "modificar turno";
        $id = $_GET['id'];
        require_once("../db/dbConnection.php");
        $mySql = new Connection();
        $conn = $mySql->getConnection();
        $consulta = "select profesional,dni,title,description,start,end,textColor,backgroundColor
        from eventos where id = $id limit 1";
        $result = $conn->query($consulta);
        $row = mysqli_fetch_assoc($result);
    ?>

    <div class="container d-flex justify-content-center">
        <form action="../cruds/crudTurnos.php" method="post" style="width: 50vw; min-width: 300px;">
            <div class="row">
                <div class="form-group mb-3">

                    <!-- id -->
                    <div class="col">
                        <label class="form-label">id</label>
                        <input type="number" class="form-control" name="id" value="<?php echo $id; ?>" readonly>
                    </div>

                    <!-- apellido y nombre -->
                    <div class="col">
                        <label class="form-label">apellido</label>
                        <input type="text" class="form-control" name="title" value="<?php echo $row['title']?>" readonly>
                    </div>

                    <!-- apellido y nombre -->
                    <div class="col">
                        <label class="form-label">descripcion</label>
                        <input type="text" class="form-control" name="description" value="<?php echo $row['description']?>">
                    </div>

                    <!-- turno desde-->
                    <div class="col">
                        <label class="form-label">fecha/hora desde</label>
                        <input type="text" class="form-control" name="turnoDesde" value="<?php echo $row['start']?>" >
                    </div>

                    <!-- turno desde-->
                    <div class="col">
                        <label class="form-label">fecha/hora hasta</label>
                        <input type="text" class="form-control" name="turnoHasta" value="<?php echo $row['end']?>" >
                    </div>

                </div>

                <div>
                    <input type="submit" class="btn btn-warning" name="submit">modificar turno</button>
                    <a href="turnos.php" class="btn btn-danger">cancelar</a>
                </div>

            </div>
        </form>
    </div>


</body>
</html>