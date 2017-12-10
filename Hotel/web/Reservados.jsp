<%-- 
    Document   : Reservados
    Created on : Dec 10, 2017, 7:29:05 PM
    Author     : israel
--%>
<%@page import="Models.Quartos"%>
<%@page import="org.hibernate.transform.Transformers"%>
<%@page import="org.hibernate.SQLQuery"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Models.Reserva"%>
<%@page import="java.util.List"%>
<%@page import="Models.Usuario"%>
<%@page import="Util.Config" %>
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
        <% 
            Config mConfig = Config.getInstance();
            Session mSession = mConfig.getSession();
            mSession.beginTransaction();
            SQLQuery consulta = mSession.createSQLQuery("SELECT * FROM Reserva WHERE "
                    + "user="+user.getId());

            consulta.setResultTransformer(Transformers.aliasToBean(Reserva.class));           
            List<Reserva> reservas = consulta.list();
            if(reservas.size() <= 0) { %>
            <p>Não existem reservas disponíveis</p>
            <ul>
        <%  }
            for(Reserva r: reservas) { %>
            <li><p>Checkin: <%=r.getCheckin()%> - Checkout <%=r.getCheckout()%>
                Tipo - <%=Quartos.values()[r.getTipo()].getNome()%></p>
            
                <form action="CancelarReserva" method="POST">
                    <input type="hidden" name="id" value="<%=r.getId() %>">
                    <input type="submit" value="Cancelar">
                </form>
            </li>
        <%  } 
        %>
            </ul>
    </body>
</html>
