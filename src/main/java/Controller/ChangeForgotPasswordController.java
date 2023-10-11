/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.Dao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author htk09
 */
@WebServlet(name="ChangeForgotPasswordController", urlPatterns={"/change-password"})
public class ChangeForgotPasswordController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
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
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rePass = request.getParameter("re-password");
        
        Dao dao = Dao.getInstance();
        
        if(!password.equals(rePass)){
            request.setAttribute("msg", "Xác nhận mật khẩu mới không trùng khớp");
            request.setAttribute("email",email );
            request.getRequestDispatcher("changePassword_forgot.jsp?email="+email).forward(request, response);
        }else if (password.length() < 6 || password.length() > 32 || !containsLetterAndNumber(password)) {
            request.setAttribute("msg", "Mật khẩu mới phải có từ 6-32 ký tự và phải chứa cả chữ và số.");
            request.setAttribute("email",email );
            request.getRequestDispatcher("changePassword_forgot.jsp?email="+email).forward(request, response);
        }else{
            dao.changePassword_forgot(email,password);
            request.getRequestDispatcher("changePassword_success.jsp").forward(request, response);
        }
    }
    
    private boolean containsLetterAndNumber(String str) {
        boolean hasLetter = false;
        boolean hasNumber = false;
        for (char c : str.toCharArray()) {
            if (Character.isLetter(c)) {
                hasLetter = true;
            } else if (Character.isDigit(c)) {
                hasNumber = true;
            }
            if (hasLetter && hasNumber) {
                return true;
            }
        }
        return false;
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
