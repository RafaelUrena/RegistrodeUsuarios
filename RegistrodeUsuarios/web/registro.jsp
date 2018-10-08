<%-- 
    Document   : registro
    Created on : 28-sep-2018, 12:36:38
    Author     : rafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet">
        <script src="js/funciones.js"></script>
    </head>
    <body>
        <h1>Registro de Usuario</h1>
        
            <form name="regisformu" method="POST" action="validar.jsp">
                <fieldset>
                    <div id="registro">
                    <fieldset>
                        <legend>Datos</legend>
                        <p>Usuario: <input name="usuario" type="email" value=""></p>
                        <p>Contraseña: <input name="pass" type="password" value="" required=""></p>
                        <p>Repetir contraseña: <input name="repass" type="password" value="" required=""></p><br>
                    </fieldset>
                    </div>
                    <div id="radio">
                        <fieldset>
                            <legend>Curso</legend>
                            <p><input name="curso" type="radio" value="DAM" checked="checked" >DAM</p>
                            <p><input type="radio" name="curso" value="DAW" >DAW</p>
                        </fieldset>
                        <fieldset>
                            <legend>Administrador/Usuario</legend>
                            <p><input type="radio" name="Aduser" value="1"  />Administrador</p>
                            <p><input type="radio" name="Aduser" value="0" checked="checked" />Usuario</p>
                        </fieldset>
                    </div>
                    <br>
                    <input type="submit" value="Aceptar" name="aceptar" onclick=" " />
                </fieldset>
            </form>
    </body>
</html>
