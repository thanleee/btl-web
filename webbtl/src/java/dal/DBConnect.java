package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DBConnect {

		public static Connection connect() throws Exception {
			Connection cons = null ; 
			try {
				Class.forName("com.mysql.cj.jdbc.Driver") ; 
				cons = DriverManager.getConnection("jdbc:mysql://localhost:3306/btlweb","root","123456789") ; 
				return cons;
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return null; 
		}
		public void thucThiSQL(String sql) throws Exception {
			Connection con = connect() ; 
			Statement stmt = con.createStatement() ; 
			stmt.executeUpdate(sql) ; 
		}
		
		public ResultSet ChonDuLieu(String sql) throws Exception{
			Connection connection = connect() ;
			Statement stmtStatement = connection.createStatement() ; 
			ResultSet rSet = stmtStatement.executeQuery(sql) ; 
			return rSet ; 
		}
		public PreparedStatement dunStatement(String sql) throws SQLException, Exception{
			return connect().prepareStatement(sql) ; 
			
			
		}
		public static void main(String[] args) throws Exception{
			System.out.println(new DBConnect().connect());
		}
	}
