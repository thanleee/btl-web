package controller;

import java.io.IOException;

import database.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;


@WebServlet(urlPatterns={"/register"})
public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public signupServlet() {
        super(); 
    }

	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		
//		
//		
//	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String phone = request.getParameter("phone") ; 
		String email = request.getParameter("email") ; 
		String password = request.getParameter("password") ; 
		String cfpassword = request.getParameter("cfpassword") ; 
		String fname = request.getParameter("fname") ; 
		String lname = request.getParameter("lname") ; 
		
		
		User u = new User(phone, email, password, cfpassword, fname, lname) ; 
		if(new UserDao().themTaiKhoan(u)) {

			response.sendRedirect("women.jsp");
		} else {
			System.out.println("Loi dang ki");
		}
	}
    @Override
    protected void doPost(HttpServletRequest request,
                        HttpServletResponse response)
           throws ServletException, IOException {
//       request.getRequestDispatcher("view/dangki.jsp").forward(request, response);
       doGet(request, response);
    }

}
