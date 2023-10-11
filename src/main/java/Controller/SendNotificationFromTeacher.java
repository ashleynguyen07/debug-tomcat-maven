/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.Dao;
import Model.Notification;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;

/**
 *
 * @author tramy
 */
@WebServlet(name="SendNotificationFromTeacher", urlPatterns={"/sendNotificationFromTeacher"})

public class SendNotificationFromTeacher extends HttpServlet {

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
            out.println("<title>Servlet SendNotificationFromTeacher</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SendNotificationFromTeacher at " + request.getContextPath() + "</h1>");
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
        try {
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            LocalDate currentDate = LocalDate.now();
            int category = 2;
            String classid = request.getParameter("classid");
            
            Dao noti = Dao.getInstance();
            noti.insertNotiTeacher(title, content, currentDate, category, classid);
            response.sendRedirect("teacherSendNotification.jsp");
            
//        // Nhận tệp tin từ form
////    Part filePart = request.getPart("attachmentFile"); // Retrieves <input type="file" name="attachmentFile">
//    String fileName = Paths.get(request.getPart("attachmentFile").getSubmittedFileName()).getFileName().toString(); // Lấy tên tệp tin
//
//    // Lưu tệp tin vào máy chủ
//    String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
//    File uploadDir = new File(uploadPath);
//    if (!uploadDir.exists()) uploadDir.mkdir(); // Tạo thư mục uploads nếu nó không tồn tại
//    request.getPart("attachmentFile").write(uploadPath + File.separator + fileName);
//
////    // Lưu đường dẫn tệp tin vào session
////    HttpSession session = request.getSession();
////    session.setAttribute("filePath", uploadPath + File.separator + fileName);
//
//    // Hoặc lưu đường dẫn tệp tin vào cookie
//    Cookie filePathCookie = new Cookie("filePath", uploadPath + File.separator + fileName);
//    response.addCookie(filePathCookie);
        } catch (SQLException ex) {
            Logger.getLogger(SendNotificationFromTeacher.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    /**
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
