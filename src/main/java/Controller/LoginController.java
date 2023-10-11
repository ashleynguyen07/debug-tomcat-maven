/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.Dao;
import Model.Account;
import Model.Student;
import Model.Teacher;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Admin
 */
@WebServlet(name="LoginController", urlPatterns={"/login"})
public class LoginController extends HttpServlet {
   
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
            out.println("<title>Servlet LoginController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath () + "</h1>");
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
       String email= request.getParameter("email");
       if(email.isEmpty()){
           response.sendRedirect("login.jsp");
       }
       if(email.startsWith("student")){
           Dao dao = Dao.getInstance();
           Student student = dao.getAStudentByEmail(email);
           //request.setAttribute("student", student);
           //request.getRequestDispatcher("studentHomePage.jsp").forward(request, response);
           response.sendRedirect("studentHomePage.jsp");
       }else{
           if(email.startsWith("teacher")){
               response.sendRedirect("teacherHomePage.jsp");
           }
       }
           
       
        
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
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Dao dao = Dao.getInstance();
        Account acc = dao.login(email, password);
          //  Phân QUyền sau 
        
        
        
        if(acc ==null){
           
           request.setAttribute("msg", "Tên đăng nhập hoặc mật khẩu sai");
           request.getRequestDispatcher("login.jsp").forward(request, response);
        }else{
            int role = acc.getRoleid();
            switch(role){
            
            case 1: 
            session.setAttribute("account", acc);
            Student st = dao.getAStudentByEmail(email);
            session.setAttribute("student", st);
            //request.getRequestDispatcher("studentHomePage.jsp").forward(request, response);
            response.sendRedirect("studentHomePage.jsp");
            break;
            
            case 2: 
            session.setAttribute("account", acc);
            Teacher tc = dao.getATeacherByEmail(email);
            session.setAttribute("teacher", tc);
            //request.getRequestDispatcher("teacherHomePage.jsp").forward(request, response);
            response.sendRedirect("teacherHomePage.jsp");
            break;
            
        }
            
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
