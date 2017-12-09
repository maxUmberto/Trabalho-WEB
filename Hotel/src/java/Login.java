/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;

@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("password");
        Config config = Config.getInstance();
        Session session = config.getSession();
        Transaction tx = session.beginTransaction();
        SQLQuery query = session.createSQLQuery("SELECT * FROM Usuario "
                + "WHERE email='"+email+"' AND senha='"+senha+"'");
        query.setResultTransformer(Transformers.aliasToBean(Usuario.class));
        Usuario user = (Usuario) query.uniqueResult();
        tx.commit();
        
        if(user != null) {
            request.getSession().setAttribute("user", user);
        }
        response.sendRedirect("index.jsp");
    }
}
