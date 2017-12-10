<!DOCTYPE html>
<html lang="pt-br">
<%
    if(session.getAttribute("user") != null) { %>
        <jsp:include page = "Logado.jsp">
            <jsp:param name="security" value="true"></jsp:param>
        </jsp:include>
<%
    } else { %>
        <jsp:include page="Deslogado.jsp">
            <jsp:param name="security" value="true"></jsp:param>
        </jsp:include>
<%  }
%>
