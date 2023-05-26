/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Product {

    private int id;
    private String name;
    private String image;
    private double price;
    private String describe;
    private String color;
    private String size;
    private String image2;
    private int cateid;
    private int sellid;

    public Product() {
    }

    public Product(int id, String name, String image, double price, String describe, String color, String size, String image2, int cateid, int sellid) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.describe = describe;
        this.color = color;
        this.size = size;
        this.image2 = image2;
        this.cateid = cateid;
        this.sellid = sellid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public int getCateid() {
        return cateid;
    }

    public void setCateid(int cateid) {
        this.cateid = cateid;
    }

    public int getSellid() {
        return sellid;
    }

    public void setSellid(int sellid) {
        this.sellid = sellid;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", describe=" + describe + ", color=" + color + ", size=" + size + ", image2=" + image2 + ", cateid=" + cateid + ", sellid=" + sellid + '}';
    }
 
  

    
}
