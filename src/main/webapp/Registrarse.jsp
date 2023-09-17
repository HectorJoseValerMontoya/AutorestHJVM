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
        <link href="css/botones.css" rel="stylesheet" type="text/css"/>
        <title>Registro de empleado</title>
    </head>
    <body class="centro-centro ">

        <%EmpleadoDAO empleado = new EmpleadoDAO();%>
        <h1>Hola nuevo empleado!!!</h1>
        <label>Codigo de empleado: <input type="text" name="codigo" value="<%=empleado.getNuevoCodigo()%>" readonly></label>
        <br>
        <input type="text" name="nombre" placeholder="Nombre">
        <br>
        <input type="text" name="Apellido" placeholder="Apellido">
        <br>
        <input type="text" name="cargo" placeholder="Cargo">
        <br>
        <input type="password" name="password" placeholder="Contraseña">
        <br>
        <div class="btn boton bg-blue"><label class="btn text-white">Agregar Empleado </label></div>


    </body>
</html>
