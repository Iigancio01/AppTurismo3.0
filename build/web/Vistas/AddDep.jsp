
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar departamento</h1>
            <form action="Controlador">
                IdDepartamento:<br>
                <input type="text" name="txtIdDep"><br>
                Tarifa:<br>
                <input type="combobox" name="txtTarifa"><br>
                Comuna:<br>
                <input type="text" name="txtcomuna"><br>
                Direccion:<br>
                <input type="text" name="txtDireccion"><br>
                Descripcion:<br>
                <input type="text" name="txtDescripcion"><br>
                <input type="submit" name="accion" value="AgregarDep"><br>
            </form>
        </div>
    </body>
</html>
