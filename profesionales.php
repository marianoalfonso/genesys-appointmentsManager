<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profesionales</title>
</head>
<body>
    
    <form>
        <select id="profesional" onchange="cambioProfesional(this.value)">
            <option value="1" selected>profesional 1</option>
            <option value="2">profesional 2</option>
        </select>
    </form>

    <script>
        function cambioProfesional(){
            alert("se mostrara la agenda para el profesional seleccionado");
        }
    </script>


</body>
</html>