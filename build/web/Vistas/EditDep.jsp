<%-- 
    Document   : EditDep
    Created on : 27 oct 2021, 10:39:19
    Author     : avata
--%>

<%@page import="Modelo.Departamentos"%>
<%@page import="ModeloDAO.DepartamentosDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div>
             <%
                    DepartamentosDAO dptoDAO= new DepartamentosDAO();
                    String id= (String)request.getAttribute("IdDepartamento");
                    Departamentos dpto=(Departamentos)dptoDAO.listarId(id);
             %>
            <h1>Modificar Departamento</h1>
            <form action="Controlador">
                IdDepartamento:<br>
                <input type="hidden" name="txtIdDep" value="<%= dpto.getIdDepartamento() %>"><br>
                Tarifa:<br>
                <input type="combobox" name="txtTarifa" value="<%= dpto.getIdTarifa() %>"><br>
                Comuna:<br>
                <input type="text" name="txtcomuna" value="<%= dpto.getIdComuna() %>"><br>
                Direccion:<br>
                <input type="text" name="txtDireccion" value="<%= dpto.getDireccion() %>"><br>
                Descripcion:<br>
                <input type="text" name="txtDescripcion" value="<%= dpto.getDescripcion() %>"><br>
                <input type="submit" name="accion" value="ActualizarDep"><br>
            </form>
        </div>
    </body>
</html>
