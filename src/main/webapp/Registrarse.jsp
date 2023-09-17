<%-- 
    Document   : Registrarse
    Created on : 16 set. 2023, 18:44:06
    Author     : HJVM
--%>

<%@page import="dao.EmpleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/posiciones.css" rel="stylesheet" type="text/css"/>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <title>Registro de empleado</title>
    </head>
    <body onload="initial())" class="centro-centro">

        <%EmpleadoDAO empleado = new EmpleadoDAO();%>
        <h1>Hola nuevo empleado!!!</h1>
        <input type="type" name="codigo" readonly>
        <br>
        <input type="text" name="nombre" placeholder="Nombre">
        <br>
        <input type="text" name="Apellido" placeholder="Apellido">
        <br>
        <input type="text" name="cargo" placeholder="Cargo">
        <br>
        <input type="password" name="password" placeholder="Contraseña">



        <script>
            function initial() {
                document.getElementById("codigo").value = <%=empleado.getNuevoCodigo()%>;
            }
        </script>
    </body>
</html>
