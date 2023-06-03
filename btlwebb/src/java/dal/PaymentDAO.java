/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import model.Payment;

/**
 *
 * @author Admin
 */
public class PaymentDAO extends DBContext {

    public List<Payment> getAll() {
        List<Payment> pay = new ArrayList<>();
        String sql = " select * from payment";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                 String productsString = rs.getString("products");
            List<String> productsList = Arrays.asList(productsString.split(","));
            
            Payment c = new Payment(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("email"),
                    rs.getString("phone"),
                    rs.getString("address"),
                    productsList,
                    rs.getString("total"),
                    rs.getString("status"));
            pay.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return pay;
    }

    public void insert(Payment c) {
    String sql = "INSERT INTO `btlweb`.`payment`\n"
            + "(`name`,\n"
            + "`email`,\n"
            + "`phone`,\n"
            + "`address`,\n"
            + "`products`,\n"
            + "`total`,\n"
            + "`status`)\n"
            + "VALUES (?,?,?,?,?,?, 'Chờ xác nhận');";
    try {
        PreparedStatement st = connection.prepareStatement(sql);

        st.setString(1, c.getName());
        st.setString(2, c.getEmail());
        st.setString(3, c.getPhone());
        st.setString(4, c.getAddress());
        st.setString(5, String.join(",", c.getProducts()));
        st.setString(6, c.getTotal());

        st.executeUpdate();
    } catch (SQLException e) {
        System.out.println(e);
    }
}


    public Payment getPaymentById(String name) {
        String sql = "select * from payment where name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                 String productsString = rs.getString("products");
            List<String> productsList = Arrays.asList(productsString.split(","));
            
            Payment c = new Payment(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("email"),
                    rs.getString("phone"),
                    rs.getString("address"),
                    productsList,
                    rs.getString("total"),
            rs.getString("status"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
       public void confirmOrder(int id) {
    String sql = "UPDATE `btlweb`.`payment`\n" +
                 "SET `status` = 'Xác nhận thành công'\n" +
                 "WHERE `id` = ? AND `status` = 'Chờ xác nhận'";
    try {
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
    } catch (SQLException ex) {
        System.out.println(ex);
    }
}

   public static void main(String[] args) {
    PaymentDAO p = new PaymentDAO();
  
    int id = 14; // ID của thanh toán cần cập nhật
        p.confirmOrder(id);
        
        // In thông báo thành công sau khi cập nhật
        System.out.println("Cập nhật trạng thái thanh toán thành công!");
}

}
