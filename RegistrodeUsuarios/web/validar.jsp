<%-- 
    Document   : validar
    Created on : 28-sep-2018, 12:56:27
    Author     : rafa
--%>


<%@page import="Usuario.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<%
    boolean registrado = false;

    if (session.getAttribute("lista") != null) {
        ArrayList<User> al = (ArrayList) session.getAttribute("lista");
        User us = new User();
        for (User u : al) {
            if (u.getCorreo().equals(request.getParameter("usuario"))) {
                registrado = true;
            } else {
                us = new User(request.getParameter("usuario"), request.getParameter("pass"), request.getParameter("curso"), request.getParameter("Aduser"));
                registrado = false;
            }
        }
        al.add(us);
        session.setAttribute("lista", al);
    } else {
        ArrayList<User> al = new ArrayList();
        User u = new User(request.getParameter("usuario"), request.getParameter("pass"), request.getParameter("curso"), request.getParameter("Aduser"));
        al.add(u);
        session.setAttribute("lista", al);
        registrado = false;
    }
    if (registrado) {%>
<fieldset>
    <legend>Registro fallido</legend>
    <%out.print("El usuario que ha introducido ya existe");%><br>
    <a href="registro.jsp">  <input type="button" value="Volver" name="volver" /> </a>
</fieldset>
<% } else { %>
<fieldset>
    <legend>Usuario registrado con éxito</legend>
    <% out.print("El usuario " + request.getParameter("usuario") + " del curso " + request.getParameter("curso") + " se ha registrado con exito"); %><br>
    <a href="index.jsp">  <input type="button" value="Volver" name="volver" /> </a>
</fieldset>
<%}%>



