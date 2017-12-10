/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Models.Reserva;
import Util.Config;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author israel
 */
@WebServlet(urlPatterns = {"/CancelarReserva"})
public class CancelarReserva extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Config config = Config.getInstance();
        Reserva r;        
        Session session = config.getSession();
        Transaction tx = session.beginTransaction();
        r = (Reserva) session.load(Reserva.class, new BigInteger(request.getParameter("id")));

        session.delete(r);
        tx.commit();
        response.sendRedirect("index.jsp");
    }
}
