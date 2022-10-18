// cada vez que carga la pagina, se ejecuta document.ready y ejecuta la opcion 4
// asignando a la tablaUsuarios el select de la tabla
$(document).ready(function() {
    var user_id, opcion;
    opcion = 4;
        
    tablaUsuarios = $('#tablaPersonas').DataTable({  
        "ajax":{            
            "url": "crud.php", 
            "method": 'POST', //usamos el metodo POST
            "data":{opcion:opcion}, //enviamos opcion 4 para que haga un SELECT
            "dataSrc":""
        },
        "columns":[
            {"data": "id"},
            {"data": "apellido"},
            {"data": "nombre"},
            {"data": "dni"},
            {"data": "direccion"},
            {"data": "cobertura"},
            {"data": "socio"},
            {"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-primary btn-sm btnEditar'><i class='material-icons'>edit</i></button><button class='btn btn-danger btn-sm btnBorrar'><i class='material-icons'>delete</i></button></div></div>"}
        ]
    });  

    var fila; //captura la fila, para editar o eliminar
    //submit para el Alta y Actualización
    $('#formPersona').submit(function(e){                         
        e.preventDefault(); //evita el comportambiento normal del submit, es decir, recarga total de la página
        apellido = $.trim($('#apellido').val());    
        nombre = $.trim($('#nombre').val());
        dni = $.trim($('#dni').val());
        direccion = $.trim($('#direccion').val());
            $.ajax({
              url: "crud.php",
              type: "POST",
              datatype:"json",    
              data:  {apellido:apellido, nombre:nombre, dni:dni, direccion:direccion, opcion:opcion},    
              success: function(data) {
                // tablaPersonas.ajax.reload(null, false);
               }
            });			        
        $('#modalCRUD').modal('hide');											     			
    });


//para limpiar los campos antes de dar de Alta una Persona
$("#btnNuevo").click(function(){
    opcion = 1; //alta           
    user_id=null;
    $("#formUsuarios").trigger("reset");
    $(".modal-header").css( "background-color", "#17a2b8");
    $(".modal-header").css( "color", "white" );
    $(".modal-title").text("alta de paciente");
    $('#modalCRUD').modal('show');	    
});

//Editar        
$(document).on("click", ".btnEditar", function(){		        
    opcion = 2;//editar
    fila = $(this).closest("tr");	        
    user_id = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		            
    username = fila.find('td:eq(1)').text();
    first_name = fila.find('td:eq(2)').text();
    last_name = fila.find('td:eq(3)').text();
    gender = fila.find('td:eq(4)').text();
    password = fila.find('td:eq(5)').text();
    status = fila.find('td:eq(6)').text();
    $("#username").val(username);
    $("#first_name").val(first_name);
    $("#last_name").val(last_name);
    $("#gender").val(gender);
    $("#password").val(password);
    $("#status").val(status);
    $(".modal-header").css("background-color", "#007bff");
    $(".modal-header").css("color", "white" );
    $(".modal-title").text("Editar Usuario");		
    $('#modalCRUD').modal('show');		   
});

//Borrar
$(document).on("click", ".btnBorrar", function(){
    fila = $(this);           
    user_id = parseInt($(this).closest('tr').find('td:eq(0)').text()) ;		
    opcion = 3; //eliminar        
    var respuesta = confirm("¿Está seguro de borrar el registro "+user_id+"?");                
    if (respuesta) {            
        $.ajax({
          url: "bd/crud.php",
          type: "POST",
          datatype:"json",    
          data:  {opcion:opcion, user_id:user_id},    
          success: function() {
              tablaUsuarios.row(fila.parents('tr')).remove().draw();                  
           }
        });	
    }
 });
     
});    