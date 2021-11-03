<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Items"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ItemsDAO"%>
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
                <h1>Items</h1>
                <br>
                <br>
                <a class="btn btn-success" href="ControladorItems?accion=addItem" target="ContenedorPrincipal">Agregar nuevo</a>
                <br>
                <br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id Item</th>
                            <th class="text-center">Id Familia Item</th>
                            <th class="text-center">Descripcion</th>
                            <th class="text-center">Valor</th>
                            <th class="text-center">Accion</th>

                        </tr>
                    </thead>
                    <%
                       ItemsDAO dao=new ItemsDAO();
                       List<Items>list=dao.listarItems();
                       Iterator<Items>iter=list.iterator();
                       Items it=null;
                       while(iter.hasNext()){
                         it=iter.next();


                    %>    
                    <tbody>
                        <tr>
                            <td class="text-center"><%= it.getIdItem()%></td>
                            <td class="text-center"><%= it.getIdFamiliaItem() %></td>
                            <td class="text-center"><%= it.getDescripcion()%></td>
                            <td class="text-center"><%= it.getValorItem()%></td>
                            <td class="text-center">
                                <a class="btn btn-warning" href="ControladorItems?accion=editarItem&IdItem=<%=it.getIdItem()%>" target="ContenedorPrincipal">Editar</a>
                                <a class="btn btn-danger" href="ControladorItems?accion=eliminarItem&IdItem=<%=it.getIdItem()%>" onclick="return confirm('¿Seguro que quieres eliminar?')" >Eliminar</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>   
    </body>
</html>