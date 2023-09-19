<%-- 
    Document   : FormularioMesero
    Created on : 17 set. 2023, 16:35:23
    Author     : HJVM
--%>

<%@page import="modelo.Empleado,dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/titulo.css.css" rel="stylesheet" type="text/css"/>
        <link href="css/contenidos.css" rel="stylesheet" type="text/css"/>
        <title>Area de Meseros</title>
    </head>
    <body>
        <%
            Empleado emp = (Empleado) request.getAttribute("empleadoActual");
            EmpleadoDAO empdao = new EmpleadoDAO();
        %>
        <h1 class="titulo">Bienvenido Mesero <%=emp.getNombre()%>  <%=emp.getApellido()%> </h1>

        
        
        <form action="servlet">
            <% for (int i = 1; i < 6; i++) {
            %>
            <div class="imgMesa">
                <div class="">
                    <a class="link" href="MesaInterna.jsp?codMesa=<%=i%>">
                        <img src="imagenes/mesa.png" alt="MESA<%=i%>"></img> 
                        <label>MESA <%=i%></label>
                    </a>
                </div>
            </div>
            <%
                }
            %>
        </form>

    </body>
</html>
