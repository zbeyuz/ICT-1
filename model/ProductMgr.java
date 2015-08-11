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
import java.util.ArrayList;
import java.util.Date;


/**
 *
 * @author Evilill
 */
public class ProductMgr {
    
    //add new item
    public static void addProduct(int item_id, String item_name, int item_price, int item_discount, String item_gender, String item_category, String item_manufacture, String item_info) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
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
    public static void addPic(int item_id, String pic_location) throws SQLException, Exception {
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
    
    public static ArrayList<Product> getProduct() throws SQLException, Exception {
        
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
    
    public static Product getProductById(int item_id) throws SQLException, Exception {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db","root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `item_list` where item_id = ?");
        pstmt.setInt(1, item_id);
        rs = pstmt.executeQuery();
            
        Product i=new Product();

        
        while (rs.next()) {
            i.id = rs.getInt("item_id");
            i.name = rs.getString("item_name");
            i.price = rs.getInt("item_price");
            i.discount = rs.getInt("item_discount");
            i.gender = rs.getString("item_gender");
            i.category = rs.getString("item_type");
            i.manufacture = rs.getString("item_manufacture");
            i.info = rs.getString("item_info");
            i.profile_pic = rs.getString("item_profile_pic");
            if(i.profile_pic.replace(" ","").equals("")){
                i.profile_pic="images/product_img_27.jpg";
            }
        }
        conn.close();
        return i;// get arreylist like get item but there are onty 1 item in list
    }
    
    
    public static String[] getPic(int item_id) throws SQLException, Exception {
        
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
    
    
    public static boolean addReview(int item_id, int user_id, String review_title, Date review_date, int review_value, int review_price, int review_quality, String review_text) throws SQLException, Exception {

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost/shop_db", "root", "");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String ch = "ok"; //user for check state of process        

        pstmt = conn.prepareStatement("SELECT * FROM `item_review` where `item_id` = ? ");
        pstmt.setInt(1, user_id);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            ch = "user already review this item"; //change state if user already review
        }

        pstmt = conn.prepareStatement("INSERT INTO `item_review` (`item_id`, `user_id`, `review_title`, `review_date`, `review_value`, `review_price`, `review_quality`, `review_text`) VALUES (?,?,?,?,?,?,?,?)");
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

    public static ArrayList<Review> getReview(int item_id) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `item_review`,`user_list`"+
                " WHERE `item_review`.`item_id`=? and `item_review`.`user_id`=`user_list`.`user_id`");
        pstmt.setInt(1,item_id);
        rs = pstmt.executeQuery();

        ArrayList<Review> res = new ArrayList();

        while (rs.next()) {
            Review i = new Review();
            i.item_id = rs.getInt("item_id");
            i.user_id = rs.getInt("user_id");
            i.user_mail = rs.getString("user_email");
            i.review_date = rs.getDate("review_date");
            i.review_title = rs.getString("review_title");
            i.review_value = rs.getInt("review_value");
            i.review_price = rs.getInt("review_price");
            i.review_quality = rs.getInt("review_quality");
            i.review_text = rs.getString("review_text");
            res.add(i);
        }
        conn.close();
        return res;
    }
        
        
}
