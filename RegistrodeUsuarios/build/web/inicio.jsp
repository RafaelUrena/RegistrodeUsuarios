<%-- 
    Document   : inicio
    Created on : 02-oct-2018, 20:39:05
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
        <link href="css/style.css" rel="stylesheet">
    </head>

    <% if (session.getAttribute("lista") != null) {
            User us = new User();
            ArrayList<User> al = (ArrayList) session.getAttribute("lista");
            String user = request.getParameter("usuario");
            String pass = request.getParameter("pass");
            us.setCorreo(user);
            us.setPassword(pass);
            boolean registrado = true;
            boolean esAdmin = false;

            for (User u : al) {
                if (user.equals(u.getCorreo()) && pass.equals(u.getPassword())) {
                    registrado = true;
                    if (u.getAdministrador().equals("1")) {
                        session.setAttribute("uslog", u.getCorreo());
                        esAdmin = true;
                    } else {
                        session.setAttribute("uslog", u.getCorreo());
                        esAdmin = false;
                    }

                } else {
                    registrado = false;
                }
            }

            if (registrado) {
                if (esAdmin) {%>
    <form name="formlog" action="listado.jsp" method="POST">

        <fieldset>
            <legend>Usuario <% out.print(user); %>  </legend>
            <% out.print("El usuario " + user + " ha iniciado sesión"); %>
        </fieldset>

        <fieldset>
            <legend>Opciones</legend>
            <input type="submit" value="Listado" name="listado" />
        </fieldset>
    </form>

    <form action="index.jsp" name="forout" method="POST">
        <input type="submit" value="Logout" name="cs" />

        <%} else {%>
        <fieldset>
            <legend>Usuario <% out.print(user); %>  </legend>
            <% out.print("El usuario " + user + " ha iniciado sesión"); %>
        </fieldset>

        <fieldset>
            <legend>Opciones</legend>
            <input type="submit" value="Logout" name="cs" />
        </fieldset>
    </form>

    <%}
        } else {%> 
    <fieldset>
        <legend>Usuario <% out.print(user); %>  </legend>
        <% out.print("El usuario " + user + " no existe o la contraseña no es válida.");%>
    </fieldset>
    <a href="index.jsp"><input type="button" value="Volver" name="volver" /></a>

    <%}%>

    <%} else {
            response.sendRedirect("registro.jsp");
        }
    %>


</html>
