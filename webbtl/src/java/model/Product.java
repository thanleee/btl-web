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
    private String title;
    private String describe;
    private double pricesale;
    private String color;
    private String size;
    private String size2;
    private String size3;
    private String size4;
    private String image2;

    public Product() {
    }

    public Product(int id, String name, String image, double price, String title, String describe, double pricesale, String color, String size, String size2, String size3, String size4, String image2) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.describe = describe;
        this.pricesale = pricesale;
        this.color = color;
        this.size = size;
        this.size2 = size2;
        this.size3 = size3;
        this.size4 = size4;
        this.image2 = image2;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public double getPricesale() {
        return pricesale;
    }

    public void setPricesale(double pricesale) {
        this.pricesale = pricesale;
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

    public String getSize2() {
        return size2;
    }

    public void setSize2(String size2) {
        this.size2 = size2;
    }

    public String getSize3() {
        return size3;
    }

    public void setSize3(String size3) {
        this.size3 = size3;
    }

    public String getSize4() {
        return size4;
    }

    public void setSize4(String size4) {
        this.size4 = size4;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", title=" + title + ", describe=" + describe + ", pricesale=" + pricesale + ", color=" + color + ", size=" + size + ", size2=" + size2 + ", size3=" + size3 + ", size4=" + size4 + ", image2=" + image2 + '}';
    }


    
}
