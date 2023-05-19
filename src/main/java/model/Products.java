package model;

import java.io.Serializable;

public class Products implements Serializable {
	private String id  ; 
	private String tensp ; 
	private int gia ; 
	private String mota ;
	private int soluong ; 
	private String hinhanh ; 
	
	public Products() {}
	
	public Products(String id, String tensp, int gia, String mota, int soluong, String hinhanh) {

		this.id = id;
		this.tensp = tensp;
		this.gia = gia;
		this.mota = mota;
		this.soluong = soluong;
		this.hinhanh = hinhanh;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	} ; 
	
}
