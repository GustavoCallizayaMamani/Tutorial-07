<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.persona"%>
<%
   if(session.getAttribute("listaper")== null){
   ArrayList <persona> la =new ArrayList <persona>();
   session.setAttribute("listaper",la);
   } 
   ArrayList <persona> lista =(ArrayList <persona>)session.getAttribute ("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Listado de personas</h1>
          <a href="MainServlet?op=nuevo">Nuevo Registro</a> 
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if (lista !=null) {
                   for(persona item:lista){
                   
            %>
            <tr>
                <td><%= item.getId () %></td>
                <td><%= item.getNombres ()%></td>
                <td><%= item.getApellidos ()%></td>
                <td><%= item.getEdad ()%></td>
                <td><a href="MainServlet?op=editar&id=<%= item.getId ()%>">editar</td>
                <td><a href="MainServlet?op=eliminar&id=<%= item.getId ()%>" onclick="
                    return('Esta seguro de eliminar??')">eliminar</td>
            </tr>
            <%
            }
                }
            %>
        </table>
    </body>
</html>
