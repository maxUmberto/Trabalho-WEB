<%-- 
    Document   : Reservar
    Created on : Dec 10, 2017, 9:43:48 AM
    Author     : israel
--%>
<%@page import="Models.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario user = (Usuario)session.getAttribute("user");
    if(user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Reservar" method="POST">
            <input type="date" name="inicio" placeholder="Data inicial"><br>
            <input type="date" name="final" placeholder="Data final"><br>
            <select>
                <option value="1">Nível básico</option>
                <option value="2">Nível intermediário</option>
                <option value="3">Nível luxuoso</option>
            </select><br>
            <input type="submit" value="Confirmar">
        </form>
    </body>
</html>
