/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Dell
 */
@Entity(name = "allStock")
@Table(name = "allStock")
public class AllStock {
    @Id
    private int id;
    
    @Column(name = "productCode")
    private int productCode;

     @Column(name = "date")
    private String date;
    
    @Column(name = "name")
    private String name;

   

    @Column(name = "quantity")
    private int quantity;
    
     @Column(name = "stockAction")
    private String stockAction;

    @Column(name = "buyPrice")
    private int buyPrice;

    @Column(name = "sellPrice")
    private int sellPrice;
    
//    @Column(name = "total")
//    private Integer total;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getProductCode() {
        return productCode;
    }

    public void setProductCode(int productCode) {
        this.productCode = productCode;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    

    public String getStockAction() {
        return stockAction;
    }

    public void setStockAction(String stockAction) {
        this.stockAction = stockAction;
    }

    public int getBuyPrice() {
        return buyPrice;
    }

    public void setBuyPrice(int buyPrice) {
        this.buyPrice = buyPrice;
    }

    public int getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(int sellPrice) {
        this.sellPrice = sellPrice;
    }

//    public Integer getTotal() {
//        return total;
//    }
//
//    public void setTotal(Integer total) {
//        this.total = total;
//    }

    
}
