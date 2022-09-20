<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profesionales</title>

    <style>
        body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
        overflow: hidden;
        background-color: #333;
        }

        .topnav a {
        float: left;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
        }

        .topnav a:hover {
        background-color: #ddd;
        color: black;
        }

        .topnav a.active {
        background-color: #04AA6D;
        color: white;
        }
        </style>


</head>
<body>

    <!-- formulario de eventos -->
    <div class="topnav">
        <a class="active" href="#home">inicio</a>
        <a href="#pacientes">pacientes</a>
        <a href="profesionales.php">agendas</a>
    </div>

    <div class="modal fade" id="formularioProfesionales" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <!-- cabecera -->
                <div class="modal-header">

                </div>
            <!-- cuerpo -->
                <div class="modal-body">
                    <input type="hidden" id="id">
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="">seleccione profesional</label>
                            <select id="codigoProfesional" class="form-control">
                                <?php
                                    $mysqli = new mysqli('localhost', 'root', '', 'appointmentsManager');
                                    $query = $mysqli -> query ("SELECT id,nombre FROM profesionales");
                                    while ($valores = mysqli_fetch_array($query)) {
                                        echo '<option value="'.$valores["id"].'">'.$valores["nombre"].'</option>';
                                    }
                                ?>
                            </select>

                            <div class="modal-footer">
                                <button type="button" id="cargarAgenda" class="btn btn-warning" onclick="cargarAgenda()">cargar agenda</button>
                                <button type="button" id="listarTurnos" class="btn btn-warning" onclick="listarTurnos()">listar turnos</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>

        //en el click se dispara esta function
        //obtiene el idProfesional y arma la url con el parametro $_GET
        function cargarAgenda(){
            var e = document.getElementById("codigoProfesional");
            var value=e.options[e.selectedIndex].value;// get selected option value
            var text=e.options[e.selectedIndex].text;
            // alert("codigo: " + value + " / texto: " + text);
            const url = "index.php?p=" + encodeURIComponent(value);
            window.location.href = url;
        }

        function listarTurnos(){
            var e = document.getElementById("codigoProfesional");
            var value=e.options[e.selectedIndex].value;// get selected option value
            var text=e.options[e.selectedIndex].text;
            // alert("codigo: " + value + " / texto: " + text);
            const url = "profesionalesTurnos.php?p=" + encodeURIComponent(value);
            window.location.href = url;
        }

    </script>

</body>
</html>