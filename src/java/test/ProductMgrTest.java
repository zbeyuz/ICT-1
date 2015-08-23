/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import database.DBConn;
import database.ProductMgr;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Item;
import model.Product;
import model.Review;

/**
 *
 * @author Fu
 */
public class ProductMgrTest {
    public static void main(String[] args) throws Exception{
    int pdid = 122, usid = 5;
    String tt = "kk", gg = "ii";
    ArrayList<Product> a=ProductMgr.getProductByKeyword("s");
    for (Product i:a){
        System.out.println(i.name);
    }
//product  
    //getProductByCategory
    //database.ProductMgr.getProductByCategory("abc");
    
    //get categorys
    //System.out.println(database.ProductMgr.getCategory());
    //addProduct test
    /*
    model.ProductMgr.addProduct(pdid, "yasd", 23, 2, tt, tt, tt, tt, tt);
    */
    
    //deleteproduct
    /*
    model.ProductMgr.deleteProduct(pdid);
    */

    //productUpdate test
    /*
    model.ProductMgr.productUpdate(pdid, tt, 22, 11, gg, tt, tt, tt, tt, tt);
    */
    
    //getProduct test
    /*
    ArrayList<Product> product = new ArrayList();
    product = model.ProductMgr.getProduct();
    System.out.println(product.size());
    */
    
    //getProductByProductId test
    /*
    Product i = new Product();
    i = model.ProductMgr.getProductByProductId(pdid);
    System.out.println(i.name); 
    */
        
        
//pic
     //addProductPic test
    /*
     model.ProductMgr.addProductPic(121,"iadjvg");
    */
    
     //getProductPic test
    /*
     String[] i = new String[200];
     i = model.ProductMgr.getProductPic(121);
     System.out.println(i[2]);
    */
    
     //deleteProductPic test
    /*
    model.ProductMgr.deleteProductPic(121, 2);
    */
        
//item
    //addItem test
    /*
    model.ProductMgr.addItem(pdid, tt, tt, tt, tt, 3);
    */
    
    //updateItem test
    /*
    model.ProductMgr.updateItem(pdid, 2, gg, gg, gg, gg, 4);
    */
    
    //deleteItem test
    /*
     model.ProductMgr.deleteItem(pdid, 2);
    */
   
    //getItemByProductId test
    /*
    ArrayList<Item> item = new ArrayList();
    item = database.ProductMgr.getItemByProductId(222);
    System.out.println(item.size()); 
    */
     
//review
    //addReview test
     /*
    boolean k ;
    k = model.ProductMgr.addReview(pdid, 6, tt, 55 , 3, 3, 3, tt);
    System.out.println(k);
    */
    
    //getReview tes
    /*
    ArrayList<Review> review = new ArrayList();
    review = model.ProductMgr.getReview(pdid);
    System.out.println(review.size());
    */   
    }
}
