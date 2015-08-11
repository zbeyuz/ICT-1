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
 * @author Evilill
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
            
            pstmt = conn.prepareStatement("insert into wishlist values(?,?)");
            pstmt.setInt(1, user_id);
            pstmt.setInt(2, item_id);
            pstmt.executeQuery();
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
        pstmt.executeQuery();       
    }
    
    public static ArrayList<Product> getWishlist(int user_id) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM `wishlist` WHERE user_id=?");
        pstmt.setInt(1,user_id);
        ResultSet rs = pstmt.executeQuery();

        ArrayList<Product> res = new ArrayList();

        while (rs.next()) {
            Product i = new Product();
            i.id = rs.getInt("item_id");
            res.add(i);
        }
        conn.close();
        return null;
    }
}
