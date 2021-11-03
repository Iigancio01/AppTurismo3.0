<%@page import="Modelo.Cliente"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Departamentos"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.DepartamentosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Turismo Real</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="Css/styles/styles.css" rel="stylesheet" type="text/css"/>
    <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">    
                <h1>Clientes</h1>
                <br>
                <br>
                <a class="btn btn-success" href="ControladorCliente?accion=addCliente" target="ContenedorPrincipal">Agregar nuevo</a>
                <br>
                <br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Rut Cliente</th>
                            <th class="text-center">Id Usuario</th>
                            <th class="text-center">Id Comuna</th>
                            <th class="text-center">Nombre</th>
                            <th class="text-center">Apellido Paterno</th>
                            <th class="text-center">Apellido Materno</th>
                            <th class="text-center">Accion</th>
                        </tr>
                    </thead>
                    <%
                       ClienteDAO dao=new ClienteDAO();
                       List<Cliente>list=dao.listarCliente();
                       Iterator<Cliente>iter=list.iterator();
                       Cliente cli=null;
                       while(iter.hasNext()){
                         cli=iter.next();
                    %>    
                    <tbody>
                        <tr>
                            <td class="text-center"><%= cli.getRutCliente()%></td>
                            <td class="text-center"><%= cli.getIdUsuario()%></td>
                            <td class="text-center"><%= cli.getIdComuna()%></td>
                            <td class="text-center"><%= cli.getNombreCli()%></td>
                            <td class="text-center"><%= cli.getAppellidoPC()%></td>
                            <td class="text-center"><%= cli.getApellidoMC()%></td>
                            <td class="text-center">
                                <a class="btn btn-warning" href="ControladorCliente?accion=editarCliente&RutCliente=<%=cli.getRutCliente()%>" target="ContenedorPrincipal">Editar</a>
                                <a class="btn btn-danger" href="ControladorCliente?accion=eliminarCliente&RutCliente=<%=cli.getRutCliente()%>" onclick="return confirm('¿Seguro que quieres eliminar?')" >Eliminar</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>   
    </body>
</html>
