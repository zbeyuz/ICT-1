/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import model.DBConn;

/**
 *
 * @author hy
 */
public class NewClass {
    public static void main(String[] args) throws Exception{
        //System.out.println(new java.sql.Timestamp(Calendar.getInstance().getTime().getTime()));
        int item_id = 1;
            int user_id = 1;
            String review_title = "title";
            long review_time = Calendar.getInstance().getTime().getTime();
            int review_value = 1;
            int review_price = 2;
            int review_quality = 3;
            String review_text = "content";
            System.out.println();
        addReview(item_id, user_id, review_title, review_time, review_value, review_price, review_quality, review_text);
    }
    
    public static boolean addReview(int item_id, int user_id, String review_title, long review_time, int review_value, int review_price, int review_quality, String review_text) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String ch = "ok"; //user for check state of process        
        /*
        pstmt = conn.prepareStatement("SELECT * FROM `item_review` where `item_id` = ? ");
        pstmt.setInt(1, user_id);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            ch = "user already review this item"; //change state if user already review
        }
                */
        pstmt = conn.prepareStatement("INSERT INTO `item_review` (`item_id`, `user_id`, `review_title`, `review_date`, `review_value`, `review_price`, `review_quality`, `review_text`) VALUES (?,?,?,FROM_UNIXTIME(?),?,?,?,?)");
        if (ch.equals("ok")) {
            pstmt.setInt(1, item_id);
            pstmt.setInt(2, user_id);
            pstmt.setString(3, review_title);
            pstmt.setLong(4, review_time); 
            pstmt.setInt(5, review_value);
            pstmt.setInt(6, review_price);
            pstmt.setInt(7, review_quality);
            pstmt.setString(8, review_text);
            pstmt.executeUpdate();
            conn.close();
            return true;
            //register done
        } else {
            conn.close();
            return false;
            //register fail
        }
    }
}