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
        <h1>Você foi desconectado. Redirecinando em <span id="span">3</span>...<br>
        Se você não for redirecionado, clique <a href="index.jsp">aqui</a></h1>
        
    </body>
    
    <script>
        var span = document.getElementById("span");
        var time = 3;
        setInterval(function() {
           span.innerHTML = ""+(--time);
           if(time <= 0) {
               window.location = "index.jsp";
           }
        }, 1000);
    </script>
</html>
