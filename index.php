<!doctype html>
<html lang="en">

<head>
    <title>agenda</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.0-beta1 -->
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/datatables.min.css" >
    <link rel="stylesheet" href="css/bootstrap-clockpicker.css" >
    <link rel="stylesheet" href="fullcalendar/main.css" >

    <!-- full calendar -->   
    <script src="js/jquery-3.6.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/datatables.min.js"></script>
    <script src="js/bootstrap-clockpicker.js"></script>
    <script src="js/moment-with-locales.min.js"></script>
    <script src="fullCalendar/main.js"></script>
    <script src="fullCalendar/locales-all.min.js"></script>

</head>

<body>
    <header>
        <!-- place navbar here -->
    </header>
    <main>

      <!-- definicion del calendario -->
        <div class="container">
            <div class="col-md-11 offset-md-2">
                <div id='calendar'></div>
            </div>
        </div>
      
      <!-- formulario de eventos -->
        <div class="modal fade" id="formularioEventos" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <!-- cabecera -->
              <div class="modal-header">

                <button type="button" class="close" data-bs-dismiss="modal" aria-label="close">
                  <span aria-hidden="true">x</span>
                </button>

              </div>
              <!-- cuerpo -->
              <div class="modal-body">
                <input type="hidden" id="id">
                <div class="form-row">
                  <div class="form-group col-md-12">
                    <label for="">titulo del evento</label>
                    <input type="text" id="titulo" class="form-control" placeholder="">
                  </div>
                </div>
                <div class="form-row">
                  <!-- fecha inicio -->
                  <div class="form-group col-md-6">
                    <label for="">fecha de inicio:</label>
                    <div class="input-group" data-autoclose="true">
                      <input type="date" id="fechaInicio" class="form-control" value="">
                    </div>
                  </div>
                  <!-- hora inicio -->
                  <div class="form-group col-md-6" id="tituloHoraInicio">
                    <label for="">hora de inicio</label>
                    <div class="input-group clockpicker" data-autoclose="true">
                      <input type="text" id="horaInicio" class="form-control" autocomplete="off">
                    </div>
                  </div>
                </div>

                <div class="form-row">
                  <!-- fecha fin -->
                  <div class="form-group col-md-6">
                    <label for="">fecha de fin:</label>
                    <div class="input-group" data-autoclose="true">
                      <input type="date" id="fechaFin" class="form-control" value="">
                    </div>
                  </div>
                  <!-- hora fin -->
                  <div class="form-group col-md-6" id="tituloHoraFin">
                    <label for="">hora de fin</label>
                    <div class="input-group clockpicker" data-autoclose="true">
                      <input type="text" id="horaFin" class="form-control" autocomplete="off">
                    </div>
                  </div>
                </div>
                <!-- descripcion -->
                <div class="form-row">
                  <label for="">descripcion</label>
                  <textarea id="descripcion" class="form-control" rows="3"></textarea>
                </div>
                <!-- color de fondo -->
                <div class="form-row">
                  <label for="">color fondo</label>
                  <input type="color" value="#3788D8" id="colorFondo" class="form-control" style="height:36px;">
                </div>
                <!-- color de texto -->
                <div class="form-row">
                  <label for="">color texto</label>
                  <input type="color" value="#FFFFFF" id="colorTexto" class="form-control" style="height:36px;">
                </div>

              </div>

              <div class="modal-footer">
                <button type="button" id="botonAgregar" class="btn btn-success">agregar</button>
                <button type="button" id="botonModificar" class="btn btn-success">modificar</button>
                <button type="button" id="botonBorrar" class="btn btn-success">borrar</button>
                <button type="button" class="btn btn-success" data-bs-dismiss="modal">cancelar</button>
              </div>

            </div>
          </div>
        </div>




    </main>
    <footer>
        <!-- place footer here -->
    </footer>
    <!-- Bootstrap JavaScript Libraries -->


    <script>
      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {

          events: 'datosEventos.php?accion=listar',
          dateClick: function(info){ //detecta click en la casilla del calendario
            // recuperamos la informacion del dia que seleccionamos
            // alert(info.dateStr);
            $('#formularioEventos').modal('show');

          },

          initialView: 'dayGridMonth',
          locale:"es",
          headerToolbar:{
            left:'prev,next today',
            center:'title',
            right:'dayGridMonth,timeGridWeek,timeGridDay'
          }
        });
        calendar.render();
      });
    </script>




</body>

</html>