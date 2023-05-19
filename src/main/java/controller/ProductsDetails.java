package controller;

import java.io.IOException;
import model.*;
import connect.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/product")
public class ProductsDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDao productDao ; 
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 	   String id = request.getParameter("id");
       System.out.println(id);
       productDao = new ProductDao();
       try {
           Products product = productDao.findById(id);
           request.setAttribute("product", product);
       } catch (ClassNotFoundException e) {
           throw new RuntimeException(e);
       }
       request.getRequestDispatcher("cart.jsp").forward(request, response);
   }
	


	

}
