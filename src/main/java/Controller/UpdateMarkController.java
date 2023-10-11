/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.Dao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Admin
 */
@WebServlet(name="UpdateMarkController", urlPatterns={"/updatemark"})

public class UpdateMarkController extends HttpServlet {

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
            out.println("<title>Servlet UpdateMarkController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateMarkController at " + request.getContextPath() + "</h1>");
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
        String totalstudent_raw = request.getParameter("total student");
        String teacherid = request.getParameter("teacherid");
        Dao dao = Dao.getInstance();

//        for (int i = 0; i < 15; i++) {
//            String progressMarkParam = "progress_mark_" + i;
//            String middleMarkParam = "middle_mark_" + i;
//            String finalMarkParam = "final_mark_" + i;
//            String totalMarkParam = "total_mark_" + i;
//            String studentidParam = "studentid_"+i;
//
//            String progressMark = request.getParameter(progressMarkParam);
//            String middleMark = request.getParameter(middleMarkParam);
//            String finalMark = request.getParameter(finalMarkParam);
//            
//
//            //String totalMark = request.getParameter(totalMarkParam);
//            //double t = Double.parseDouble(totalMark);
//
//            String studentid = request.getParameter(studentidParam);
//            
//            dao.updateMark((progressMark==null? null:BigDecimal.valueOf(Double.parseDouble(progressMark)))
//                    , (middleMark==null? null : BigDecimal.valueOf(Double.parseDouble(middleMark)))
//                    , (finalMark==null? null : BigDecimal.valueOf(Double.parseDouble(finalMark)))
//                    , null, studentid, teacherid);
//        }
        for (int i = 0; i < 15; i++) {
            String progressMarkParam = "progress_mark_" + i;
            String middleMarkParam = "middle_mark_" + i;
            String finalMarkParam = "final_mark_" + i;
            String studentidParam = "studentid_" + i;

            String progressMark = request.getParameter(progressMarkParam);
            String middleMark = request.getParameter(middleMarkParam);
            String finalMark = request.getParameter(finalMarkParam);
            String studentid = request.getParameter(studentidParam);

            // Convert empty strings to null values
            progressMark = (progressMark.isEmpty()) ? null : progressMark;
            middleMark = (middleMark.isEmpty()) ? null : middleMark;
            finalMark = (finalMark.isEmpty()) ? null : finalMark;

            // Parse as BigDecimal or leave as null
            BigDecimal progressMarkBigDecimal = (progressMark == null) ? null : new BigDecimal(progressMark);
            BigDecimal middleMarkBigDecimal = (middleMark == null) ? null : new BigDecimal(middleMark);
            BigDecimal finalMarkBigDecimal = (finalMark == null) ? null : new BigDecimal(finalMark);
//            BigDecimal totalMarkBigDecimal = (progressMark ==null || middleMark==null || finalMark==null)
//             ? null: new BigDecimal();
            BigDecimal totalMarkBigDecimal = null;
            if(progressMark !=null && middleMark!=null && finalMark!=null){
               double a = Double.parseDouble(progressMark);
               double b = Double.parseDouble(middleMark);
               double c = Double.parseDouble(finalMark);
               totalMarkBigDecimal = new BigDecimal((a+b*2+c*3)/6);
            
            }
            
            // Use the BigDecimal values (or null) in your dao.updateMark method.
            dao.updateMark(progressMarkBigDecimal, middleMarkBigDecimal, finalMarkBigDecimal,totalMarkBigDecimal , studentid, teacherid);
        
        }
        response.sendRedirect("crudmark?teacherid="+teacherid);

    
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
