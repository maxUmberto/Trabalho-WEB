<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("user");
            session.invalidate();
        %>
        <h1>Usuário deslogado com sucesso. <a href="index.html">Voltar ao inicio</a></h1>
    </body>
</html>
