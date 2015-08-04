/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.mail.FetchProfile.Item;

/**
 *
 * @author Evilill
 */
public class ItemFac {
    
    //add new item
    public static void add_newitem(int item_id, String item_name, int item_price, int item_discount, String item_gender, String item_category, String item_manufacture, String item_info) throws SQLException, Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String item_profile_pic = null;
        
        pstmt = conn.prepareStatement("SELECT * FROM `item_list` where `item_id` = ?");
        pstmt.setInt(1, item_id);
        rs = pstmt.executeQuery();
        int cg = 0; //use to check did item_id already have or not
        while (rs.next()) {
            cg++;
        }
        
        pstmt = conn.prepareStatement("insert into item_list values(?,?,?,?,?,?,?,?,?)");
        if (cg == 0) {
            pstmt.setInt(1, item_id);
            pstmt.setString(2, item_name);
            pstmt.setInt(3, item_price);
            pstmt.setInt(4, item_discount);
            pstmt.setString(5, item_gender);
            pstmt.setString(6, item_category);
            pstmt.setString(7, item_manufacture);
            pstmt.setString(8, item_info);
            pstmt.setString(9, item_profile_pic);
            pstmt.executeUpdate();
            //add done
        } else {
            throw new Exception("Can not add same item id");
            //add fail,already add item_id
        }
        conn.close();
    }
    
    
        
    
    
    
    //add picture
    public static void add_newpic(int item_id, String pic_location) throws SQLException, Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        
        pstmt = conn.prepareStatement("SELECT * FROM `item_list` where `item_id` = ?");
        pstmt.setInt(1, item_id);
        rs = pstmt.executeQuery();
        String ch = "can not found this item id"; //use to check that have item_id and location
        while (rs.next()) {
            ch = "ok";  //change to ok if find item in item_list
        }
        
        pstmt = conn.prepareStatement("SELECT * FROM `item_pic` where `item_id` = ?");
        pstmt.setInt(1, item_id);
        rs = pstmt.executeQuery();
        int cg = 0; //use to check how many picture that item_id have
        String location = "0";
        while (rs.next()) {
            cg++;     
            location =  rs.getString("pic_location");
            if( pic_location.equals(location)){
                ch = "Can not add picture in same location";    //chang to state if location already been use
            }   
        }
        
        
        pstmt = conn.prepareStatement("insert into item_pic values(?,?,?)");
        if (ch .equals("ok")) {
            cg++;
            pstmt.setInt(1, item_id);
            pstmt.setInt(2, cg);
            pstmt.setString(3, pic_location);
            pstmt.executeUpdate();
            //add done
        } else {
            throw new Exception(ch);
            //add fail
        }
        conn.close();
    }
    
    public static ArrayList<Product> getitem() throws SQLException, Exception {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db","root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `item_list`");
        rs = pstmt.executeQuery();
            
        ArrayList<Product> res= new ArrayList<Product>();

        while (rs.next()) {
            Product i=new Product();
            i.id = rs.getInt("item_id");
            i.name = rs.getString("item_name");
            i.price = rs.getInt("item_price");
            i.discount = rs.getInt("item_discount");
            i.gender = rs.getString("item_gender");
            i.category = rs.getString("item_type");
            i.manufacture = rs.getString("item_manufacture");
            i.info = rs.getString("item_info");
            i.profile_pic = rs.getString("item_profile_pic");
            res.add(i);
        }
        conn.close();
        return res;
    }
    
    
    
    public static String[] getpic(int item_id) throws SQLException, Exception {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        pstmt = conn.prepareStatement("SELECT * FROM `item_pic` where `item_id` = ?");
        pstmt.setInt(1, item_id);
        rs = pstmt.executeQuery();
        
        String[] pic = new String[15];//arrey that use to store picture location
        int n ;//use to locate picture in order
            
            
            
        while (rs.next()) {
            n = rs.getInt("pic_num"); //get picture number alway start from 1
            pic[n] = rs.getString("pic_location");
        }
        conn.close();
        return  pic ;       
    }
        
        
}
