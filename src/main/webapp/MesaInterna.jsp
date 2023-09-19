<%-- 
    Document   : MesaInterna
    Created on : 17 set. 2023, 18:36:49
    Author     : HJVM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.MesaDAO, modelo.Mesa" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/titulo.css" rel="stylesheet" type="text/css"/>
        <link href="css/posicion.css" rel="stylesheet" type="text/css"/>
        <link href="css/contenidos.css" rel="stylesheet" type="text/css"/>
        <title>Administración de Mesa</title>
    </head>
    <body>
        <%
            String numeroMesa = (String) request.getParameter("codMesa");
        %>
        <h1 class="titulo">Bienvenido a la mesa # <%=numeroMesa%></h1>
        <br>
        <br>
        <br>
        <div class="enLinea">
            <div class="espaciadoDerecho">
                <a class="link" href="AgregarPedido.jsp">
                    <img src="imagenes/AgregarAlPedido.png" width="200px" height="200px" alt="alt"/>
                </a>
            </div>
            <pre>           </pre>
            <a class="link" href="AgregarPedido.jsp">
                <img src="imagenes/QuitarDelPedido.png" width="200px" height="200px" alt="alt"/>
            </a>
            <pre>           </pre>

        </div>
    </body>
</html>
