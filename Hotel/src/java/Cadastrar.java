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
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author israel
 */
@WebServlet(urlPatterns = {"/Cadastrar"})
public class Cadastrar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");
        String confirmSenha = request.getParameter("confirm");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        
        if(checkParams(nome, senha, confirmSenha, email, cpf) != null) {
            return;
        }
        
        Usuario user = new Usuario(nome, email, cpf, senha);
        
        Config config = Config.getInstance();
        Session session = config.getSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        //session.close();
        //response.sendRedirect("http://google.com");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Cadastrar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Olá, "+nome+"</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    private String checkParams(String nome, String senha, String confirmSenha, 
            String email, String cpf) {
        if(nome == null || senha == null || email == null || cpf == null) {
            return "Por favor, preencha todos os campos";
        }
        if(senha.length() < 5) {
            return "A senha deve ter pelo menos 5 caracteres";
        }
        if(!senha.equals(confirmSenha)) {
            return "As senhas devem coincidir";
        }
        
        return null;
    }
}
