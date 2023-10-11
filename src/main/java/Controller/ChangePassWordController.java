/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.Dao;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name="ChangePassWordController", urlPatterns={"/changepassword"})
public class ChangePassWordController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChangePassWordController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePassWordController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
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
        String pass = request.getParameter("pass");
        String newpass = request.getParameter("newpass");
        String verify = request.getParameter("verify");

        Dao dao = Dao.getInstance();
        Account acc = dao.login(email, pass);
        if (acc == null) {
            request.setAttribute("msg", "Mật khẩu hiện tại sai!!!");
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
        } else if (pass.equals(newpass)) {
            request.setAttribute("msg", "Mật khẩu mới không được trùng mật khẩu cũ");
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
        } else if (newpass.length() < 6 || newpass.length() > 32 || !containsLetterAndNumber(newpass)) {
            request.setAttribute("msg", "Mật khẩu mới phải có từ 6-32 ký tự và phải chứa cả chữ và số.");
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
        } else if (!newpass.equals(verify)) {
            request.setAttribute("msg", "Xác nhận mật khẩu mới không trùng khớp");
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
        } else {
            // Passwords match and meet validation criteria
            dao.changePassword(email, newpass);
            session.setAttribute("account", acc);
            request.setAttribute("msg", "Đổi mật khẩu thành công");
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
        }
//With this modification, the password change operation (dao.changePassword) will only execute when all the conditions are met, including password verification. This ensures that the password is only changed if the new password and the verification match, and all other conditions are satisfied.

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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
