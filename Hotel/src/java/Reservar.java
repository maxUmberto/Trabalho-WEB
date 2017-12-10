/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Models.Reserva;
import Models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(urlPatterns = {"/Reservar"})
public class Reservar extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Calendar checkin = Calendar.getInstance();
        Calendar checkout = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("y-M-d", Locale.ENGLISH);
        
        String checkinParam = request.getParameter("checkin");
        String checkoutParam = request.getParameter("checkout");;
        try {
            checkin.setTime(sdf.parse(checkinParam));
            checkout.setTime(sdf.parse(checkoutParam));
        } catch (ParseException ex) {
            System.out.println("Erro na data");
            return;
        } 

        int tipo = Integer.parseInt(request.getParameter("tipo"));
        Usuario user = (Usuario)request.getSession().getAttribute("user");
        
        Reserva reserva = new Reserva(checkin, checkout, tipo, user.getId().intValue());
        Config config = Config.getInstance();
        Session session = config.getSession();
        Transaction tx = session.beginTransaction();
        session.save(reserva);
        tx.commit();
        response.sendRedirect("index.jsp");
    }
}
