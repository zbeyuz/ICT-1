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
public class UserMgr {

    //login functon
    public static User login(String user_email, String user_password) throws SQLException, Exception {

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `user_list` WHERE `user_email`=? AND `user_password`=?");
        pstmt.setString(1, user_email);
        pstmt.setString(2, user_password);
        rs = pstmt.executeQuery();
        User user=new User();
        if(rs.next()){
            user.email=user_email;
            user.id=rs.getInt("user_id");
            user.fName=rs.getString("user_fname");
            user.lName=rs.getString("user_lname");
        }
        conn.close();
        return user;
    }

    //register    
    public static boolean register(String user_email, String user_password, String user_fname, String user_lname) throws SQLException, Exception {

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `item_list`");
        rs = pstmt.executeQuery();

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
}
