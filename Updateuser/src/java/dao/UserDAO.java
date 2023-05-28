package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.UserModel;
import util.DBConnection;

public class UserDAO {
	public static ArrayList<UserModel> getUsers() {
		
		Connection conn = DBConnection.getJDBCConnection();
		ArrayList<UserModel> users = new ArrayList<>(); 
		
		
		try {
			ResultSet rs = conn.prepareStatement("select * from btlweb.sign_up").executeQuery();
			while(rs.next()) {
				UserModel user = new UserModel();
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setCfpassword(rs.getString("cfpassword"));
                                user.setFname(rs.getString("fname"));
                                user.setLname(rs.getString("lname"))  ; 
                                user.setMid(rs.getInt("mid")) ; 
				users.add(user);
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
		return users;
	}
	

	
	public static UserModel getUserByPhone(String phone) {
		
		Connection conn = DBConnection.getJDBCConnection();

		try {
			String sql = "SELECT * FROM btlweb.sign_up where phone = ?" ;
                        PreparedStatement ps = conn.prepareStatement(sql) ;
                        ps.setString(1, phone);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				return new UserModel(rs.getString(1),
                                        rs.getString(2),
                                        rs.getString(3),
                                        rs.getString(4),
                                        rs.getString(5),
                                        rs.getString(6),
                                        rs.getInt(7)) ;
	
			}
			
		}catch(Exception e) {	
		}
                return null;
	}
	
	public static void updateUser(String phone, String email , String password , String cfpassword , String lname , String fname , String mid){ 
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update btlweb.sign_up\n" +
                                         "set email = ? , \n" +
                                        	"password = ? ,\n" +
                                            "cfpassword = ? ,\n" +
                                            "fname = ? , \n" +
                                            "lname = ? ,\n" +
                                            "mid = ? \n" +
                                         "where phone = ? " ;
                try {
			
			PreparedStatement ps = conn.prepareStatement(sql) ;
                        ps.setString(1, email);
			ps.setString(2, password);
                        ps.setString(3, cfpassword);
                        ps.setString(4, fname);
                        ps.setString(5, lname);
                        ps.setString(6, mid);
                        ps.setString(7, phone);
                        ps.executeUpdate() ; 
		}catch (Exception e) {	
		}
	}
	
	public static void deleteUser(String phone) {
		Connection conn = DBConnection.getJDBCConnection();
		try {
			String sql = "DELETE FROM btlweb.sign_up WHERE  phone = ?" ;
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, phone);
                        ps.executeUpdate();
			
		}catch (Exception e) {
			
			
		}
	}
//		public UserModel layThongTinTaiKhoan(String email) {
//                    Connection conn = DBConnection.getJDBCConnection();
//		try {
//			String sql = "select * from demo.user where email='"+email+"'" ;
//                        PreparedStatement ps = conn.prepareStatement(sql) ;
//                      
//			ResultSet rs = ps.executeQuery();
//			while(rs.next()) {
//				int phone = rs.getInt(1) ;
//				String email1 = rs.getString(2) ; 
//				String password = rs.getString(3) ; 
//				String cfpassword = rs.getString(4) ; 
//				String fname = rs.getString(5) ; 
//				String lname = rs.getString(6) ; 
//                                int mid = rs.getInt(7) ; 
//			
//				return new UserModel(phone,email1,password,cfpassword,fname,lname,mid) ; 
//				
//			}
//		} catch (Exception e) {
//		}
//		
//		return null ; 
//	}
//       
	public boolean kiemTraDangNhap(String email , String password) {
		Connection conn = DBConnection.getJDBCConnection();
		try {
			
			String sql = "select * from btlweb.sign_up where email='"+email+"'" ;
                        PreparedStatement ps = conn.prepareStatement(sql) ;
                      
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				if(rs.getString(2).equals(email) && rs.getString(3).equals(password)) {
					return true  ; 
				}
			}
		
		} catch (Exception e) {
	
		}
		return false;
	}
	public static void main(String[] args) {

	}
}
