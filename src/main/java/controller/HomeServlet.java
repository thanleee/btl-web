package controller;


import connect.ProductDao;
import model.Products;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns={"/index"})
public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Products products;
    private ProductDao productDao;
    
    public void init() {
        products = new Products();
    }
  
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
  
        List list = new ArrayList<>();
        // truy xuat csdl
        productDao = new ProductDao();
        try {
        	// lay ds cac sp trong csdl
            list = productDao.listProcucts();
            // luu tru ds cac sp trong doi tuong yeu cau
            request.setAttribute("List_product",list);

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        request.getRequestDispatcher("women.jsp").forward(request, response);
//         request.getRequestDispatcher("/women.jsp").forward(request, response);
    
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doGet(request, response);
    }
}
