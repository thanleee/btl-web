package database;


import java.sql.ResultSet;

import connect.DBConnect;
import model.User;

public class UserDao implements ObjectDAO {

	@Override
	public boolean themTaiKhoan(Object obj) {
		User u = (User) obj ; 
		try {
			new DBConnect().thucThiSQL("insert into test(phone,email,password,cfpassword,fname,lname) values('"+u.getPhone()+"','"+u.getEmail()+"','"+u.getPassword()+"','"+u.getCfpassword()+"','"+u.getFname()+"','"+u.getLname()+"')");
		
			return true ; 
			
		} catch (Exception e) {
	
			e.printStackTrace();
		}
		return false;
	}

	public User layThongTinTaiKhoan(String email) {
		try {
			ResultSet rs= new DBConnect().ChonDuLieu("select * from sign_up.test where email='"+email+"'");
			while(rs.next()) {
				String phone = rs.getString(1) ;
				String email1 = rs.getString(2) ; 
				String password = rs.getString(3) ; 
				String cfpassword = rs.getString(4) ; 
				String fname = rs.getString(5) ; 
				String lname = rs.getString(6) ; 
			
				return new User(phone,email1,password,cfpassword,fname,lname) ; 
				
			}
		} catch (Exception e) {
			e.printStackTrace(); 
			System.out.println(e.getMessage()) ; 
		}
		
		return null ; 
	}
	
	@Override
	public boolean kiemTraDangNhap(String email , String password) {
		
		try {
			
			ResultSet rs= new DBConnect().ChonDuLieu("select * from sign_up.test where email='"+email+"'");
			while(rs.next()) {
				if(rs.getString(2).equals(email) && rs.getString(3).equals(password)) {
					return true  ; 
				}
			}
		
		} catch (Exception e) {
	
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}

	public static void main(String[] args) {
		User users = new User("14", "tie.com", "13", "123", "tien", "dona") ; 
//		System.out.println(new UserDao().themTaiKhoan(users)) ; 
//		System.out.println(new UserDao().kiemTraDangNhap("tie.com")) ; 
	}

}