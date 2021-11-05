<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cliente</title>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
            <h1>Agregar Cliente</h1>
            <form action="ControladorCliente">
                Rut Cliente:<br>
                <input class="form-control" type="text" name="txtRutCliente"><br>
                Id Usuario:<br>
                <input class="form-control" type="text" name="txtIdUsuario"><br>
                Id Comuna:<br>
                <input class="form-control" type="text" name="txtIdComuna"><br>
                Nombre:<br>
                <input class="form-control" type="text" name="txtNombreCli"><br>
                Apellido Paterno:<br>
                <input class="form-control" type="text" name="txtApellidoPC"><br>
                Apellido Materno:<br>
                <input class="form-control" type="text" name="txtApellidoMC"><br>
                <button  class="btn btn-primary" type="submit" name="accion" value="AgregarCliente" >Agregar Cliente</button><br>
            </form>
            </div>
        </div>
    </body>
</html>