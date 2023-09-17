<%-- 
    Document   : Login
    Created on : 16 set. 2023, 18:12:30
    Author     : HJVM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/posiciones.css" rel="stylesheet" type="text/css"/>
        <link href="css/boton.css" rel="stylesheet" type="text/css"/>
        <link href="css/contenido.css" rel="stylesheet" type="text/css"/>
        <link href="css/titulos.css" rel="stylesheet" type="text/css"/>
        <title>Login for restaurant</title>
    </head>
    <body class="">
    <center >
        <form action="servlet">
            <input type="hidden" name="opc" value="2">
            <div class="placeHolderCenter">
                <h1 class="titulo">Bienvenido</h1>
                <input type="number" name="user" placeholder="Usuario">
                <br>
                <input type="password" name="contrasenia" placeholder="Contraseña">
            </div>
            <input class="boton2" type="submit" value="Ingresar">
            <br>
            <br>
            <br>
            <a href="Registrarse.jsp">¿No se ha registrado? VAYA A REGISTRARSE!!!</a>
        </form>
    </center>
</body>
</html>
