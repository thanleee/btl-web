/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Product;

/**
 *
 * @author DELL
 */
public class CategoryDAO extends DBContext {

    //doc tat ca cac ban ghi tu category
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
                        rs.getString("size"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

//insert a category
    public void insert(Category c) {
        String sql = "INSERT INTO `trading2022`.`categories`\n"
                + "(`ID`,\n"
                + "`name`,\n"
                + "`describe`)\n"
                + "VALUES(?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, c.getId());
            st.setString(2, c.getName());
            st.setString(3, c.getDescribe());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //tim 1 category khi co id
    public Product getCategoryByID(int id) {
        String sql = " select * from categories where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product c = new Product(rs.getInt("id"),
                       rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("title"),
                        rs.getString("describe"),
                        rs.getDouble("pricesale"),
                        rs.getString("color"),
                        rs.getString("size"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    //delete

    public void delete(int id) {
        String sql = "DELETE FROM `trading2022`.`categories`\n"
                + "WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
//update

    public void update(Category c) {
        String sql = "UPDATE `trading2022`.`categories`\n"
                + "SET\n"
                + "`name` = ?,\n"
                + "`describe` = ?\n"
                + "WHERE `ID` = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getDescribe());
            st.setInt(3, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        List<Product> list = c.getAll();
        System.out.println(list.get(0).getName());
    }

}
