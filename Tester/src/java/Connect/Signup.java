/*
 * To change this license header, choose License Headers in Project Properties
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connect;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.json.simple.JSONObject;
import pojodriver.StudentDetail;


/**
 *
 * @author Narender Singh Negi
 */
public class Signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
         response.setContentType("application/json");
         PrintWriter out = response.getWriter();
    JSONObject json=new JSONObject();
    ServletContext sc = request.getServletContext();
    String email = (String)request.getSession().getAttribute("id");
    String age = request.getParameter("age");
    String college = request.getParameter("college");
    String qualification = request.getParameter("qualification");
    String language = request.getParameter("language");
    String technical = request.getParameter("technical");
    StudentDetail sd = new StudentDetail(email,age,college,qualification,language,technical);
    SessionFactory sf = (SessionFactory)sc.getAttribute("hibsf");
    Session s = sf.openSession();
    Transaction tn = s.beginTransaction();
    s.save(sd);
    tn.commit();
    //s.close();
    json.put("mail_id", email);
    json.put("umar", age);
    json.put("college", college);
    json.put("qual",qualification);
    json.put("lang", language);
    json.put("tech", technical);
    out.println(json);
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
