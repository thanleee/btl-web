package database;


import model.User; 

public interface ObjectDAO {
	public boolean themTaiKhoan(Object obj) ;

	public boolean  kiemTraDangNhap(String email, String pass) ;

}
