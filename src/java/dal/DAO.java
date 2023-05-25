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
                        rs.getString("describe"),
                        rs.getString("color"),
                        rs.getString("size"),
                        rs.getString("image2"),
                        rs.getInt("cid"));                list.add(c);
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
                        rs.getString("describe"),
                        rs.getString("color"),
                        rs.getString("size"),
                        rs.getString("image2"),
                        rs.getInt("cid"));
                return c;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Product> getAllMen() {
        List<Product> list = new ArrayList<>();
        String sql = " select * from productmen";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("id"),
                       rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("describe"),
                        rs.getString("color"),
                        rs.getString("size"),
                        rs.getString("image2"),
                        rs.getInt("cid"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
public Product getProductByIdMen(int id) {
        String sql = " select * from productmen where id=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product c = new Product(rs.getInt("id"),
                       rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("describe"),
                        rs.getString("color"),
                        rs.getString("size"),
                        rs.getString("image2"),
                        rs.getInt("cid"));
                return c;
            }
        } catch (SQLException e) {

        }
        return null;
    }
    public List<Product> searchByName(String txtSearch){
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM product\n" +
            "where name like ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%"+ txtSearch+"%");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9)));
         
            }
        } catch (SQLException e) {
        }
        return list;
    }
            
    public static void main(String[] args) {
        DAO p = new DAO();
    List<Product> list = p.getAll();
    
    for (Product product : list) {
        System.out.println(product);
    }
}
}
