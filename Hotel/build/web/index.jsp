<%-- 
    Document   : index.jsp
    Created on : Nov 19, 2017, 11:22:01 AM
    Author     : israel
--%>

<%@page import="Models.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%
           Usuario user = (Usuario) session.getAttribute("user");
           if(user == null) { %>
               Você não pode acessar essa página.
        <% } else { %>
        Bem vindo, <%= user.getNome() %>. <a href="Sair.jsp">Sair</a>
        <% }
        %></h1>
    </body>
</html>
