<?php

//invocamos el modelo
require_once "models/pacientesModel.php";

class pacientesController {

    public function index() {
        $persona = new Persona();
        $personas = $persona->getAll();
        
    }
    

}



?>