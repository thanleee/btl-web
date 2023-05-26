/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.UserModel;


@WebServlet(name="UpdateUser", urlPatterns={"/update"})
public class UpdateUser extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateUser</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateUser at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String phone =  request.getParameter("phone") ; 
        UserDAO dao = new UserDAO() ; 
        UserModel u = dao.getUserByPhone(phone) ; 
        request.setAttribute("um", u);
        request.getRequestDispatcher("Update.jsp").forward(request, response);
        
    } 

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String uphone  = request.getParameter("phone") ; 
        String uemail  = request.getParameter("email") ;
        String upassword  = request.getParameter("pasword") ;
        String ucfpassword  = request.getParameter("cfpassword") ;
        String ufname  = request.getParameter("fname") ;
        String ulname  = request.getParameter("lname") ;
        String umid  = request.getParameter("mid") ;
        UserDAO dao = new UserDAO() ; 
        dao.updateUser(uphone, uemail, upassword, ucfpassword, ulname, ufname, umid);
       response.sendRedirect("load");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
