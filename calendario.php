<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

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
  <main>
    <?php include "profesionales.php"; ?>
    <?php include "evento.php"; ?>

    <!-- combo profesionales   -->
    <!-- <select id="profesional" onchange="cambioProfesional(this.value)">
      <option value="1" selected>profesional 1</option>
      <option value="2">profesional 2</option>
    </select> -->

    <button id="profesionales">seleccionar profesional</button>

    <!-- definicion del calendario -->
    <div class="container">
      <!-- <div class="col-md-11 offset-md-2"> -->
      <div class="col-md-12">
          <div id='calendar'></div>
      </div>
    </div>
  </main>   

  <script>

    //activamos el clockpicker
    $('.clockpicker').clockpicker();

    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
      var calendar = new FullCalendar.Calendar(calendarEl, {
        events: 'datosEventos.php?accion=listar&profesional=' + $('#profesional').val(),
        initialView: 'dayGridMonth',
        locale:"es",
        headerToolbar:{
          left:'prev,next today',
          center:'title',
          right:'dayGridMonth,timeGridWeek,timeGridDay'
        },
        dateClick: function(info){ //detecta click en la casilla del calendario
            // recuperamos la informacion del dia que seleccionamos
            limpiarFormulario();
            //detectar click en un evento o en cualquier parte del dia
            if (info.allDay) {
              $('#fechaInicio').val(info.dateStr);  //inserta la fecha que se selecciona en el click
              $('#fechaFin').val(info.dateStr);
            } else {
              let fechaHora = info.dateStr.split("T");
              $('#fechaInicio').val(fechaHora[0]);
              $('#fechaFin').val(fechaHora[0]);
              $('#horaInicio').val(fechaHora[1].substring(0,5));
              $('#horaFin').val(fechaHora[1].substring(0,5));
            }
            $('#formularioEventos').modal('show');
          },
          // se ejecuta cuando hacemos click en un evento existente
          eventClick: function(info){
            //seteamos botones a mostrar
            $('#botonAgregar').hide();
            $('#botonModificar').show();
            $('#botonBorrar').show();
            
            //recuperamos informacion
            $("#id").val(info.event.id);
            $("#titulo").val(info.event.titulo);
            //las fechas/horas las recuperamos directamente desde el calendario, no de la DB
            $("#fechaInicio").val(moment(info.event.start).format("YYYY-MM-DD"));
            //el formato para los minutos debe ser minuscula (mm)
            $("#horaInicio").val(moment(info.event.start).format("HH:mm"));
            //las fechas las recuperamos directamente desde el calendario, no de la DB
            $("#fechaFin").val(moment(info.event.end).format("YYYY-MM-DD"));
            //el formato para los minutos debe ser minuscula (mm)
            $("#horaFin").val(moment(info.event.end).format("HH:mm"));
            //extendedProps (porque tiene mas de 1 linea)
            $("#descripcion").val(info.event.extendedProps.description);  
            $("#colorFondo").val(info.event.backgroundColor);
            $("#colorTexto").val(info.event.textColor);
            //mostramos el formulario
            $('#formularioEventos').modal('show');
          }
      });
      calendar.render();

      // muestra el formulario modal de profesionales
      $("#profesionales").click(function(){
        $('#formularioProfesionales').modal('show');
      })

      // ejecuta el boton cargar agenda
      $('#cargarAgenda').click(function(){
        let registro = recuperarProfesional();
        recuperarAgenda(registro);
        $('#formularioProfesionales').modal('hide');
      });


      //eventos de botones de la aplicacion
      // control del evento click sobre el boton AGREGAR
      $('#botonAgregar').click(function(){
        let registro = recuperarDatosFormulario();
        agregarRegistro(registro);
        $('#formularioEventos').modal('hide');
      });

      $('#botonModificar').click(function(){
        //recuperamos los datos del formulario que previamente los levanto del calendario
        let registro = recuperarDatosFormulario();
        modificarRegistro(registro);
        $('#formularioEventos').modal('hide');
      })

      $("#botonBorrar").click(function(){
        //recuperamos los datos del formulario que previamente los levanto del calendario
        let registro = recuperarDatosFormulario();
        borrarRegistro(registro);
        $('#formularioEventos').modal('hide');
      })

      // recupera la agenda en base al profesional seleccionado
      function recuperarAgenda(registro){
        $.ajax({
          type: 'POST',
          url: 'datosEventos.php?accion=listar',
          data: registro,
          success: function(msg){
            calendar.refetchEvents(); //si se ejecuto el alta, recarga el calendario
          },
          error: function(error){
            alert('se produjo un error al recuperar la agenda del profesional seleccionado:' + error);
          }
        })        
      }

      //funcion ajax para dar de alta el registro
      function agregarRegistro(registro) {
        $.ajax({
          type: 'POST',
          url: 'datosEventos.php?accion=agregar',
          data: registro,
          success: function(msg){
            calendar.refetchEvents(); //si se ejecuto el alta, recarga el calendario
          },
          error: function(error){
            alert('se produjo un error al agregar el evento :' + error);
          }
        })
      }

      //funcion ajax para modificar el registro
      function modificarRegistro(registro){
        $.ajax({
          type: 'POST',
          url: 'datosEventos.php?accion=modificar',
          data: registro,
          success: function(msg){
            calendar.refetchEvents(); //si se ejecuto el alta, recarga el calendario
          },
          error: function(error){
            alert('se produjo un error al modificar el evento :' + error);
          }
        })
      }

      //funcion ajax para borrar el registro
      function borrarRegistro(registro){
        $.ajax({
          type: 'POST',
          url: 'datosEventos.php?accion=borrar',
          data: registro,
          success: function(msg){
            calendar.refetchEvents(); //si se ejecuto el alta, recarga el calendario
          },
          error: function(error){
            alert('se produjo un error al borrar el evento :' + error);
          }
        })         
      }

    });

    //funciones que interactuan con el formulario de eventos
    function limpiarFormulario(){
      $('#id').val('');
      $('#titulo').val('');
      $('#descripcion').val('');
      $('#fechaInicio').val('');
      $('#fechaFin').val('');
      $('#horaInicio').val('');
      $('#horaFin').val('');
      $('#colorFondo').val('#3788D8'); 
      $('#colorTexto').val('#FFFFFF'); 
      $('#botonAgregar').show();
      $('#botonModificar').hide();
      $('#botonBorrar').hide();
    }


    function recuperarDatosFormulario(){
      let registro = {
        id: $('#id').val(),
        profesional: $('#profesional').val(),
        dni: $('#titulo').val(), //devuelve el value del campo de seleccion, no el texto
        titulo: $('#titulo option:selected').text(), //devuelve el texto del campo de seleccion
        descripcion: $('#descripcion').val(),
        inicio: $('#fechaInicio').val() + ' ' + $('#horaInicio').val(),
        fin: $('#fechaFin').val() + ' ' + $('#horaFin').val(),
        colorFondo: $('#colorFondo').val(),
        colorTexto: $('#colorTexto').val()
      }
      return registro;
    }

    // obtiene el profesional seleccionado en el modal de profesionales
    function recuperarProfesional(){
      let registro = {
        profesional: $('#profesional').val()
      }
      return registro;
    }


  </script>

</body>
</html>