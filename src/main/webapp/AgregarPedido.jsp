<%-- 
    Document   : AgregarPedido
    Created on : 17 set. 2023, 19:48:09
    Author     : HJVM
--%>

<%@page import="modelo.Plato"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.PlatoDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/titulo.css" rel="stylesheet" type="text/css"/>
        <link href="css/contenidos.css" rel="stylesheet" type="text/css"/>
        <title>Agregar al Pedido</title>
    </head>
    <body>
        <% PlatoDAO platodao = new PlatoDAO();
            List<Plato> platos = platodao.listarPlatos();
        %>
        <h1 class="titulo">Agregar al Pedido</h1>

        <input type="text" name="name" onkeydown="">
        
        
        <!--
        <form action="servlet">
            <table border="1">
                <thead>
                    <tr>
                        <th>CodigoPlato</th>
                        <th>Foto</th>
                        <th>Nombre</th>
                        <th>Cantidad a pedir</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        for (Plato plato : platos) {

                    %>

                    <tr><td><%=plato.getCodigoPlato()%>
                        <td><img src="<%=plato.getFoto()%>" width="100xp" alt="Plato=<%=plato.getNombre()%>"/>
                        <td><%=plato.getNombre()%>
                        <td><input type="number" name="cantidadPlato<%=plato.getCodigoPlato()%>">
                        <td><a href="proceso.jsp?cod=<%=plato.getCodigoPlato()%>&cant="></a>
                    </td></tr>

                    <%
                        }
                    %>
                </tbody>
            </table>
            <input type="submit">

        </form>
        -->
        
        
        <script>
            function buscar(){
                
            }
        </script>

    </body>
</html>
