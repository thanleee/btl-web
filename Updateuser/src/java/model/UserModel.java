
package model;


public class UserModel {
    private String phone  ; 
    private String email ; 
    private String password ; 
    private String cfpassword  ; 
    private String fname  ; 
    private String lname  ;
    private int mid  ; 
    public UserModel() {
        super() ; 
    }
    public UserModel(String phone, String email, String password, String cfpassword, String fname, String lname, int mid) {
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.cfpassword = cfpassword;
        this.fname = fname;
        this.lname = lname;
        this.mid = mid;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCfpassword() {
        return cfpassword;
    }

    public void setCfpassword(String cfpassword) {
        this.cfpassword = cfpassword;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    @Override
    public String toString() {
        return "UserModel{" + "phone=" + phone + ", email=" + email + ", password=" + password + ", cfpassword=" + cfpassword + ", fname=" + fname + ", lname=" + lname + ", mid=" + mid + '}';
    }
    
    
}
