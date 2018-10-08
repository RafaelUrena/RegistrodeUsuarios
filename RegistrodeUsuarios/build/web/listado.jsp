<%-- 
    Document   : admin
    Created on : 05-oct-2018, 12:48:36
    Author     : rafa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Usuario.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Administrador</title>
    </head>
    <body>
        <h1>Lista de alumnos</h1>
        <%if (session.getAttribute("lista") != null) {
                String userlog = (String) (session.getAttribute("uslog"));
                ArrayList<User> al = (ArrayList) (session.getAttribute("lista"));

                for (User u : al) {
                    if (u.getCorreo().equals(userlog)) {%>
        
        <%}else{%>
        <form name="formadmin" action="listado.jsp" method="POST">

            <input type="text" name="usuario" value=" <%= u.getCorreo()%>" readonly="readonly" />
            <input type="text" name="curso" value="<%= u.getCurso()%>" readonly="readonly" />
            <input type="text" name="pass" value="<%= u.getPassword()%>" hidden="" />
            <input type="submit" value="Modificar" name="boton" />
            <input type="submit" value="Eliminar" name="boton" />
        </form>
            
            <input type="submit" value="<% if (u.getAdministrador().equals("1")) { out.print("U"); } else { out.print("A"); } %>" name="boton" /><br><br> 
        
                        <%}
                    }%>
                    
        <form name="logout" action="index.jsp" method="POST">
                    <input type="submit" value="Logout" name="cs" />
        </form>
                    <%}
                    if(request.getParameter("boton")!=null){
     if(request.getParameter("boton").equals("Eliminar")){
        ArrayList<User> al = (ArrayList) session.getAttribute("lista");
        String correo =  request.getParameter("usuario").trim();
        for (User us : al) {
                if(correo.equals(us.getCorreo())){
                    al.remove(us);
                    response.sendRedirect("listado.jsp");
                }
            }
    }   if(request.getParameter("boton").equals("Modificar")){
            ArrayList<User> al = (ArrayList) session.getAttribute("lista");
            String correo =  request.getParameter("usuario").trim();
                        for (User u : al) {
                                if(correo.equals(u.getCorreo())){%>
            <form name="formuguar" action="gestion.jsp" method="POST" >
                <input type="text" name="user" value="<%= u.getCorreo()%>"  hidden=""/>
                <input type="text" name="curso" value="<%= u.getCurso()%>" />
                <input type="text" name="pass" value="<%= u.getPassword()%>" />
                <input type="submit" value="Guardar" name="guardar" />
            </form>
                
                                <%}%>
                            <%}%>
                    
                   
            

                            <%} if(request.getParameter("cs").equals("Logout")){
                                session.removeAttribute("uslog");
}%>

<%}%>

    </body>
</html>