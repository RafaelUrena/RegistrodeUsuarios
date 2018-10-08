<%-- 
    Document   : gestion
    Created on : 07-oct-2018, 19:24:49
    Author     : rafa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Usuario.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String curso = request.getParameter("curso");
                String pass = request.getParameter("pass");
                String user = request.getParameter("user");
                    
                    if(request.getParameter("guardar").equals("Guardar")){
                    ArrayList<User> al = (ArrayList) session.getAttribute("lista");%>
        <fieldset>
            <legend>¿Desea modificar los cambios?</legend>
            <form name="formact" action="listado.jsp" method="POST">

                <input type="text" name="mcurso" value="<%= curso%>" />
                <input type="text" name="mpass" value="<%= pass%>" required="" />
                <input type="reset" value="Eliminar" name="delete" />
                <input type="submit" value="Aceptar" name="mod" />
            </form>
        </fieldset>
        <% for (User u : al) {
            //modifica la contraseña y el curso
                        if (u.getCorreo().equals(user)) {
                            u.setCurso(curso);
                             u.setPassword(pass);
                        }
                       
                    }
            }%>

    </body>
</html>
