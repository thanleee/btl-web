/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author DELL
 */
public class DAO extends DBContext {

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = " select * from product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("title"),
                        rs.getString("describe"),
                        rs.getDouble("pricesale"),
                        rs.getString("color"),
                        rs.getString("size"),
                        rs.getString("size2"),
                        rs.getString("size3"),
                        rs.getString("size4"),
                        rs.getString("image2"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(int id) {
        String sql = " select * from product where id=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product c = new Product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("title"),
                        rs.getString("describe"),
                        rs.getDouble("pricesale"),
                        rs.getString("color"),
                        rs.getString("size"),
                        rs.getString("size2"),
                        rs.getString("size3"),
                        rs.getString("size4"),
                        rs.getString("image2"));
                return c;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public static void main(String[] args) {
        DAO p = new DAO();

        Product c = p.getProductById(3);
        System.out.println(c);
    }

}
