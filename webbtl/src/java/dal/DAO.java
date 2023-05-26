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

//    public List<Product> getAll() {
//        List<Product> list = new ArrayList<>();
//        String sql = " select * from product";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                Product c = new Product(rs.getInt("id"),
//                        rs.getString("name"),
//                        rs.getString("image"),
//                        rs.getDouble("price"),
//                        rs.getString("describe"),
//                        rs.getString("color"),
//                        rs.getString("size"),
//                        rs.getString("image2"),
//                        rs.getInt("cateid"),
//                        rs.getInt("sellid"));
//                list.add(c);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return list;
//    }
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
                        rs.getInt("cateid"),
                        rs.getInt("sellid"));
                return c;
            }
        } catch (SQLException e) {

        }
        return null;
    }
// lấy sản phẩm từ trang men

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
                        rs.getInt("cateid"),
                        rs.getInt("sellid"));
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
                        rs.getInt("cateid"),
                        rs.getInt("sellid"));
                return c;
            }
        } catch (SQLException e) {

        }
        return null;
    }
// Tìm kiếm

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM product\n"
                + "where name like ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10)));

            }
        } catch (SQLException e) {
        }
        return list;
    }

    // lấy sản phẩm từ category
    public List<Product> getProductByCid(String cid) {
        List<Product> list = new ArrayList<>();
        String sql = " SELECT * FROM btlweb.product\n"
                + "where cateid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
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
                        rs.getInt("cateid"),
                        rs.getInt("sellid"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductmenByCid(String cid) {
        List<Product> list = new ArrayList<>();
        String sql = " SELECT * FROM btlweb.productmen\n"
                + "where cateid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
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
                        rs.getInt("cateid"),
                        rs.getInt("sellid"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getTop4() {
        List<Product> list = new ArrayList<>();
        String sql = " SELECT * FROM btlweb.product LIMIT 4";
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
                        rs.getInt("cateid"),
                        rs.getInt("sellid"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //lấy 4 sản phẩm tiếp theo
    public List<Product> getNext4Product(int amount) {
        List<Product> list = new ArrayList<>();
        String sql = " SELECT * FROM btlweb.product\n"
                + "ORDER BY id LIMIT 4 OFFSET ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, amount);
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
                        rs.getInt("cateid"),
                        rs.getInt("sellid"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public int countAllProdunt() {
    int count = 0;
    String sql = "SELECT COUNT(*) FROM btlweb.product";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            count = rs.getInt(1);
        }
    } catch (SQLException e) {
        System.out.println(e);
    }
    return count;
}

    public static void main(String[] args) {
        DAO p = new DAO();
//        List<Product> list = p.getTop4();
          int count= p.countAllProdunt();
//        for (Product product : list) {
            System.out.println(count);
//        }
    }
}
