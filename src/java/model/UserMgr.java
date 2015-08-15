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
public class UserMgr {

    //login functon
    public static User login(String user_email, String user_password) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
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

        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        PreparedStatement pstmt2 = null;

        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `user_list`");
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
        pstmt2 = conn.prepareStatement("insert into user_info values(?,?,?,?,?,?,?,?,?)");
        if (ch.equals("ok")) {
            id++;
            pstmt.setInt(1, id);
            pstmt.setString(2, user_email);
            pstmt.setString(3, user_password);
            pstmt.setString(4, user_fname);
            pstmt.setString(5, user_lname);
            pstmt.executeUpdate();
            
            pstmt2.setInt(1, id);
            pstmt2.setString(2, "null");
            pstmt2.setString(3, "null");
            pstmt2.setString(4, "null");
            pstmt2.setString(5, "null");
            pstmt2.setString(6, "null");
            pstmt2.setInt(7, 0);
            pstmt2.setInt(8, 0);
            pstmt2.setString(9, "null");
            pstmt2.executeUpdate();
            
            conn.close();
            return true;
            //register done
        } else {
            conn.close();
            return false;
            //register fail
        }
    }
    
     public static void userUpdateMain(int user_id,String user_var ,String user_update) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        pstmt = conn.prepareStatement("UPDATE `user_list` SET ?=? WHERE = `user_id`=?");
        pstmt.setString(1, user_var);
        pstmt.setString(2, user_update);
        pstmt.setInt(3, user_id);
        rs = pstmt.executeQuery();
        
        conn.close();
    }
     
    public static void userUpdateInfo(int user_id,String user_address ,String user_floor ,String user_unit ,String user_road ,String user_country ,int user_postcode ,int user_tel ,String user_pic) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        pstmt = conn.prepareStatement("UPDATE `user_info` SET `user_address`=?,`user_road`=?,`user_floor`=?,`user_unit`=?,`user_country`=?,`user_postcode`=?,`user_tel`=?,`user_pic`=? WHERE `user_id`=?");
        pstmt.setString(1, user_address);
        pstmt.setString(2, user_road);
        pstmt.setString(3, user_floor);
        pstmt.setString(4, user_unit);
        pstmt.setString(5, user_country);
        pstmt.setInt(6, user_postcode);
        pstmt.setInt(7, user_tel);
        pstmt.setString(8, user_pic);
        pstmt.setInt(9, user_id);
        rs = pstmt.executeQuery();
        
        conn.close();
    }
    
    public static ArrayList<UserInfo> getUserInfo(int user_id) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `user_info` WHERE ``user_id`=?");
        pstmt.setInt(1,user_id);
        rs = pstmt.executeQuery();

        ArrayList<UserInfo> res = new ArrayList();

        while (rs.next()) {
            UserInfo i = new UserInfo();
            i.id = rs.getInt("user_id");
            i.address = rs.getString("user_address");
            i.floor = rs.getString("user_floor");
            i.unit= rs.getString("user_unit");
            i.road= rs.getString("user_road");
            i.country= rs.getString("user_country");
            i.postcode= rs.getInt("user_postcode");
            i.tel = rs.getInt("user_tel");
            i.pic= rs.getString("user_pic");
            res.add(i);
        }
        conn.close();
        return res;
    }
}
