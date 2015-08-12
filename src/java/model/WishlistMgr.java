/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author hy
 */
public class WishlistMgr {

    public static boolean add_item(int user_id, int item_id) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM `wishlist` where `user_id` = ?");
        pstmt.setInt(1, user_id);
        ResultSet rs = pstmt.executeQuery();
        
        String ch = "ok"; 
        while (rs.next()) {
            if( rs.getInt("item_id") == item_id){
                ch = "already add this item";
            }
        }
        
        if(ch.equals("ok")){
            
            pstmt = conn.prepareStatement("insert into wishlist (`user_id`, `item_id`) values(?,?)");
            pstmt.setInt(1, user_id);
            pstmt.setInt(2, item_id);
            pstmt.executeUpdate();
            conn.close();
            return true;
            
        }else{
            conn.close();
            return false;
        }
        
    }
    
    public static void delete_item(int user_id, int item_id) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        
        PreparedStatement  pstmt = conn.prepareStatement("DELETE FROM `wishlist` where `user_id` = ? and `item_id` = ?");
        pstmt.setInt(1, user_id);
        pstmt.setInt(2, item_id);
        pstmt.executeUpdate();       
    }
    
    public static ArrayList<Product> getWishlist(int user_id) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM `item_list` WHERE `item_id` IN (SELECT `item_id` FROM `wishlist` WHERE `user_id` = ?)");
        pstmt.setInt(1,user_id);
        ResultSet rs = pstmt.executeQuery();

        ArrayList<Product> res = new ArrayList();

        while (rs.next()) {
            Product i = new Product();
            i.id = rs.getInt("item_id");
            i.name = rs.getString("item_name");
            i.price = rs.getInt("item_price");
            i.discount = rs.getInt("item_discount");
            i.gender = rs.getString("item_gender");
            i.category = rs.getString("item_type");
            i.manufacture = rs.getString("item_manufacture");
            i.info = rs.getString("item_info");
            i.description = rs.getString("item_description");
            i.profile_pic = rs.getString("item_profile_pic");
            res.add(i);
        }
        conn.close();
        return res;
    }
}
