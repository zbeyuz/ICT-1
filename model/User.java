/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author Evilill
 */
public class User {

    //login functon
    public static boolean login(String user_email, String user_password) throws SQLException, Exception {

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
<<<<<<< HEAD
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `user_list`");
=======
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `user_list` WHERE `user_email`=? AND `user_password`=?");
        pstmt.setString(1, user_email);
        pstmt.setString(2, user_password);
>>>>>>> zbeyuz/master
        rs = pstmt.executeQuery();
        boolean res = rs.next();
        conn.close();
        return res;

    }

    //register    
    public static boolean register(String user_email, String user_password, String user_fname, String user_lname) throws SQLException, Exception {

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
<<<<<<< HEAD
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `user_list`");
        rs = pstmt.executeQuery(); 
        
=======
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `item_list`");
        rs = pstmt.executeQuery();

>>>>>>> zbeyuz/master
        String email = "0"; //use to store email from database
        String ch = "ok"; //user for check that email already been use or not
        int id = 0; //use to store lastest user id

        while (rs.next()) {
            email = rs.getString("user_email");
            id = rs.getInt("user_id");  //
            if (email.equals(user_email)) {
                ch = "This email already been used"; //change state if email already been used
            }
        }

        pstmt = conn.prepareStatement("insert into user_list values(?,?,?,?,?)");
        if (ch.equals("ok")) {
            id++;
            pstmt.setInt(1, id);
            pstmt.setString(2, user_email);
            pstmt.setString(3, user_password);
            pstmt.setString(4, user_fname);
            pstmt.setString(5, user_lname);
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
<<<<<<< HEAD
    
    
    public static boolean add_review(int item_id, int user_id, String review_title, Date review_date, int review_value, int review_price, int review_quality, String review_text) throws SQLException, Exception {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db","root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String ch = "ok"; //user for check state of process        
        
        
        
        pstmt = conn.prepareStatement("SELECT * FROM `item_review` where `user_id` = ? ");
        pstmt.setInt(1, user_id);
        rs = pstmt.executeQuery(); 
        while (rs.next()) {
            ch = "user already review this item"; //change state if user already review
        }
        
        pstmt = conn.prepareStatement("insert into item_review values(?,?,?,?,?,?,?,?)");
        if (ch.equals("ok")) {
            pstmt.setInt(1, item_id);
            pstmt.setInt(2, user_id);
            pstmt.setString(3, review_title);
            pstmt.setDate(4, (java.sql.Date) review_date);
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
    
        public static ArrayList<Review> get_review() throws SQLException, Exception {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db","root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `item_review`");
        rs = pstmt.executeQuery();
            
        ArrayList<Review> res= new ArrayList<Review>();

        while (rs.next()) {
            Review i=new Review();
            i.item_id = rs.getInt("item_id");
            i.user_id = rs.getInt("item_name");
            i.review_date = rs.getDate("review_date");
            i.review_title= rs.getString("review_title");
            i.review_value = rs.getInt("review_value");
            i.review_price = rs.getInt("review_price");
            i.review_quality = rs.getInt("review_quality");
            i.review_text = rs.getString("review_text");
            res.add(i);
        }
        conn.close();
        return res;
    }

=======
>>>>>>> zbeyuz/master
}
