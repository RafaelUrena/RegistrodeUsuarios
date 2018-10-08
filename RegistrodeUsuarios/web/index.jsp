<%-- 
    Document   : index
    Created on : 28-sep-2018, 12:25:11
    Author     : rafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Introduce su Usuario o Registrate</h3>
        
        <form name="formu" method="POST" action="inicio.jsp">
            <fieldset>
                <legend>Datos</legend>
            <p>Usuario: <input name="usuario" type="email" value=""></p>
            <p>Contraseña: <input name="pass" type="password" value=""></p><br>
            <input name="enviar" type="submit" value="Aceptar">
            <p><a href="">He olvidado la contraseña</a></p>
            </fieldset>
        </form>
        <br>
        <form name="for" method="POST" action="registro.jsp">
        <input name="registro" type="submit" value="Registrar">
        </form>
    </body>
</html>
