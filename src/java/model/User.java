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

        ResultSet rs = null;
        Statement st = null;

        st = (Statement) conn.createStatement();
        rs = st.executeQuery("SELECT * FROM `user_list` ");

        String email = "0"; //use to get user_email from database
        String password = "0"; //use to get password from data base
        //String ch = "User or password are incorect"; //use t check that user and password are right ot not

        while (rs.next()) {
            email = rs.getString("user_email");
            password = rs.getString("user_password");

            if (email.equals(user_email) && password.equals(user_password)) {
                conn.close();
                return true;
            }

        }
        conn.close();
        return false;

    }

    //register    
    public static void register(String user_email, String user_password, String user_fname, String user_lname) throws SQLException, Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
        pstmt = conn.prepareStatement("insert into user_list values(?,?,?,?,?)");
        ResultSet rs = null;
        Statement st = null;

        st = (Statement) conn.createStatement();
        rs = st.executeQuery("SELECT * FROM `user_list` ");
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

        if (ch.equals("ok")) {
            id++;
            pstmt.setInt(1, id);
            pstmt.setString(2, user_email);
            pstmt.setString(3, user_password);
            pstmt.setString(4, user_fname);
            pstmt.setString(5, user_lname);
            pstmt.executeUpdate();
            //register done
        } else {
            throw new Exception(ch);
            //register fail
        }
        conn.close();

    }

}
