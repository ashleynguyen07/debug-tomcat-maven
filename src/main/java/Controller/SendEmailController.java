/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.Dao;
import Model.Student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import java.util.UUID;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.annotation.WebServlet;


/**
 *
 * @author htk09
 */
@WebServlet(name="SendEmailController", urlPatterns={"/send-email"})
public class SendEmailController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SendEmailController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SendEmailController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       request.getRequestDispatcher("sendEmail.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        final String to = request.getParameter("email");
        Dao dao = Dao.getInstance();
        
        Student st = dao.getAStudentByEmail(to);
        
        if(st == null){
            request.setAttribute("msg", "Sai Email vui lòng nhập lại");
            request.getRequestDispatcher("sendEmail.jsp").forward(request, response);
        }else{
            String token = this.generateResetToken();
            
            dao.updateToken(token, to);

            String link = "Hello " + to + ",<br><br>" +
                            "<a href='http://localhost:8080/mavenproject1/verify-email?email=" + to + "&token="+token+ "'>Click Here</a> to reset your password:<br><br>" +
                            "If you didn't request a password reset, please ignore this email.<br><br>" +
                            "This is an automatically generated email from the system, do not reply!<br><br>" +
                            "SSMS Account Management";
            Boolean isSend = this.sendEmail(to,link);
            System.out.println(isSend);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            
        }
    }
    
    
    public String generateResetToken(){
        return UUID.randomUUID().toString();
    }
    
    
    private Boolean sendEmail(String to, String link){
        
        final String from ="htk09032003@gmail.com";
        final String password ="edyrpmmklyniuvyh";
    
        Properties props = new Properties();
        
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");
        
        
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password); 
            } 
        };
        
        Session session = Session.getInstance(props, auth);
        
        MimeMessage msg = new MimeMessage(session);
        try {
            msg.addHeader("Content-Type", "text/HTML; charset=UTF-8");
            msg.setFrom(new InternetAddress(from));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to,false));
            msg.setSubject("Reset password service -- do not reply this email");
            msg.setContent(link, "text/html");
            Transport.send(msg);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
