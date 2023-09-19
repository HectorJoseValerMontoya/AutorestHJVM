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
        <link href="css/posicion.css" rel="stylesheet" type="text/css"/>
        <link href="css/botonBasico.css" rel="stylesheet" type="text/css"/>
        <link href="css/contenidos.css" rel="stylesheet" type="text/css"/>
        <link href="css/titulo.css" rel="stylesheet" type="text/css"/>
        <title>Registro de empleado</title>
    </head>
    <body class="">

        <%EmpleadoDAO empleado = new EmpleadoDAO();%>
    <center>
        <h1 class="titulo" >Hola nuevo empleado!!!</h1>
    </center>
    <div class="centro-centro">
        <center>
            <a href="Login.jsp">¿Ya esta registrado? VAYA A LOGIN!!!</a>
            <br>
            <br>
            <br>
            <form action="servlet">
                <input type="hidden" name="opc" value="1">

                <div class="placeHolderCenter">

                    <div class="enLinea">
                        <label class="labels">Codigo de empleado: </label>
                        <input type="text" name="codigo" value="<%=empleado.getNuevoCodigo()%>" readonly>
                    </div>

                    <br>
                    <input type="text" name="nombre" placeholder="Nombre">
                    <br>
                    <input type="text" name="apellido" placeholder="Apellido">
                    <br>
                    <select name="cargo">
                        <option selected value="mesero">Mesero</option>
                        <option value="cajero">Cajero</option>
                        <option value="cocinero">Cocinero</option>
                    </select>
                    <br>
                    <input type="password" name="password" placeholder="Contraseña">
                    <br>
                    <input type="submit" class="boton1" value="Agregar Empleado">
                    <br>
                </div>        
            </form>

        </center>
    </div>


</body>
</html>
