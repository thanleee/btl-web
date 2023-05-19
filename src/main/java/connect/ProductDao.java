package connect;

import model.Products;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class ProductDao {
    public List listProcucts() throws ClassNotFoundException {
        List<Products> products = new ArrayList<Products>();
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/demo", "root", "30052002");

             
             PreparedStatement preparedStatement = connection
                     .prepareStatement("select * from demo.test")) {
       
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Products product = new Products();
         
                product.setId(resultSet.getString("id"));
                product.setTensp(resultSet.getString("tensp"));
                product.setGia(resultSet.getInt("gia"));
                product.setMota(resultSet.getString("mota"));
                product.setSoluong(resultSet.getInt("soluong"));
                product.setHinhanh(resultSet.getString("hinhanh"));

                products.add(product);
                
            }
            System.out.println("Kết nối thành công!");
            return products;

        } catch (SQLException e) {
    
            printSQLException(e);
       
            return null;
        }
    }
	 public Products findById(String id) throws ClassNotFoundException {

	        Class.forName("com.mysql.cj.jdbc.Driver");

	        try (Connection connection = DriverManager
	                .getConnection("jdbc:mysql://localhost:3306/demo", "root", "30052002");
	        		
	    
	             PreparedStatement preparedStatement = connection
	                     .prepareStatement("SELECT * FROM demo.test WHERE id = ?")) {
	            preparedStatement.setString(1, id);
	          
	            ResultSet resultSet = preparedStatement.executeQuery();
	            Products product = new Products();
	            while (resultSet.next()) {
	    
	                product.setId(resultSet.getString("id"));
	                product.setTensp(resultSet.getString("tensp"));
	                product.setGia(resultSet.getInt("gia"));
	                product.setMota(resultSet.getString("mota"));
	                product.setSoluong(resultSet.getInt("soluong"));
	                product.setHinhanh(resultSet.getString("hinhanh"));
	        
	                System.out.println(product);
	            }
	           
	            return product;

	        } catch (SQLException e) {
	        	
	            printSQLException(e);
	        }
	        return null;
	    }

	private void printSQLException(SQLException e) {
		System.out.println("loi");
		
	}
}
