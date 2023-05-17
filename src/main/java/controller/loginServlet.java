package controller;

import java.io.IOException;

import database.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;


@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public loginServlet() {
      super(); 
    }

    private void redirectToPage(HttpServletRequest request, HttpServletResponse response, String page) throws ServletException, IOException {
        response.sendRedirect(page);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email") ; 
		String password = request.getParameter("password") ; 
		User u = new UserDao().layThongTinTaiKhoan(email) ; 
		
		
		if(new UserDao().kiemTraDangNhap(email,password)) {
			 
			HttpSession session = request.getSession() ; 
			session.setAttribute("fname", u);
//			response.sendRedirect("women.jsp");
			 if (u.getFname().equals("tien")) {
		            redirectToPage(request, response, "women.jsp");
		        } else {
		            redirectToPage(request, response, "men.jsp");
		        }
			
		}
		else {
////			 if (!password.equals(password)) {
//				   request.setAttribute("error", "Sai mật khẩu. Vui lòng nhập lại.");
//				   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//				   rd.forward(request, response);
////				}
			   String errorMessage = "Sai mật khẩu. Vui lòng nhập lại.";
			   String script = "<script>document.getElementById('error-message').innerText = '" + errorMessage + "'; document.getElementById('error-message').style.display = 'block';</script>";
//			  out.println(script);
			System.out.println("loi dang nhap");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
