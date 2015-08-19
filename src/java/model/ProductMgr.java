
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
import java.util.Calendar;
import java.util.Date;


/**
 *
 * @author Evilill
 */
public class ProductMgr {
    
    //add new product
    public static void addProduct(int product_id, String product_name, int product_price, int product_discount, String product_gender, String product_category, String product_manufacture, String product_info, String product_description) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String product_profile_pic = "";
        
        pstmt = conn.prepareStatement("SELECT * FROM `product_list` where `product_id` = ?");
        pstmt.setInt(1, product_id);
        rs = pstmt.executeQuery();
        int cg = 0; //use to check did product_id already have or not
        while (rs.next()) {
            cg++;
        }
        
        pstmt = conn.prepareStatement("insert into product_list values(?,?,?,?,?,?,?,?,?,?)");
        if (cg == 0) {
            pstmt.setInt(1, product_id);
            pstmt.setString(2, product_name);
            pstmt.setInt(3, product_price);
            pstmt.setInt(4, product_discount);
            pstmt.setString(5, product_gender);
            pstmt.setString(6, product_category);
            pstmt.setString(7, product_manufacture);
            pstmt.setString(8, product_info);
            pstmt.setString(9, product_description);
            pstmt.setString(10, product_profile_pic);
            pstmt.executeUpdate();
            //add done
        } else {
            throw new Exception("Can not add same product id");
            //add fail,already add product_id
        }
        conn.close();
    }
    
    public static void addItem(int product_id, String item_material, String item_color, String item_size, String item_sample_pic, int item_quantity) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int item_id= 0;
        
        pstmt = conn.prepareStatement("SELECT * FROM `product_list` where `product_id` = ?");
        pstmt.setInt(1, product_id);
        rs = pstmt.executeQuery();
        int cg = 0; //use to check that have product_id or not
        while (rs.next()) {
            cg = 1;
        }
        
        if (cg == 0) {
            
            pstmt = conn.prepareStatement("SELECT * FROM `item_info` where `product_id` = ?");
            pstmt.setInt(1, product_id);
            rs = pstmt.executeQuery();
        
            while (rs.next()) { //to get item_id
                item_id = rs.getInt("item_id");
            }
            item_id++;
        
        pstmt = conn.prepareStatement("insert into item_info values(?,?,?,?,?,?,?)");
        
            pstmt.setInt(1, product_id);
            pstmt.setInt(2, item_id);
            pstmt.setString(3, item_material);
            pstmt.setString(4, item_color);
            pstmt.setString(5, item_size);
            pstmt.setString(6, item_sample_pic);
            pstmt.setInt(7, item_quantity);
            pstmt.executeUpdate();
            //add done
        } else {
            throw new Exception("Can not add same product id");
            //add fail,already add product_id
        }
        conn.close();
    }
    
    public static void updateItem(int product_id, int item_id, String item_material, String item_color, String item_size, String item_sample_pic, int item_quantity) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        

        int cg = 0; 

        
        if (cg == 0) {
        
            pstmt = conn.prepareStatement("UPDATE `item_info` SET `item_material`=? ,`item_color`=?,`item_size`=?,`item_sample_pic`=?,`item_quantity`=? WHERE `product_id`=? AND `item_id`=?");
            pstmt.setString(1, item_material);
            pstmt.setString(2, item_color);
            pstmt.setString(3, item_size);
            pstmt.setString(4, item_sample_pic);
            pstmt.setInt(5, item_quantity);
            pstmt.setInt(6, product_id);
            pstmt.setInt(7, item_id);
            pstmt.executeUpdate();
            //add done
        } else {
            throw new Exception("Can not add same product id");
            //add fail,already add product_id
        }
        conn.close();
    }
        
    public static void deleteItem(int product_id, int item_id) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        
        pstmt = conn.prepareStatement("DELETE FROM `item_info` where `product_id` = ? and `item_id` = ?");
        pstmt.setInt(1, product_id);
        pstmt.setInt(2, item_id);
        pstmt.executeUpdate();
        
    }
        
    public static void deleteProduct(int product_id) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        
        pstmt = conn.prepareStatement("DELETE FROM `product_list` where `product_id` = ?");
        pstmt.setInt(1, product_id);
        pstmt.executeUpdate();
        
        pstmt = conn.prepareStatement("DELETE FROM `item_info` where `product_id` = ?");
        pstmt.setInt(1, product_id);
        pstmt.executeUpdate();
       
    }
    
    public static void deleteProductPic( int product_id, int pic_num) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        
        pstmt = conn.prepareStatement("DELETE FROM `product_pic` where `product_id` = ? and `pic_num`= ?");
        pstmt.setInt(1, product_id);
        pstmt.setInt(2, pic_num);
        pstmt.executeUpdate();
       
    }
    
 
    //add picture
    public static void addProductPic(int product_id, String pic_location) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int pic_num = 0;
        
        pstmt = conn.prepareStatement("SELECT * FROM `product_list` where `product_id` = ?");
        pstmt.setInt(1, product_id);
        rs = pstmt.executeQuery();
        String ch = "can not found this product id"; //use to check that have product_id and location
        while (rs.next()) {
            ch = "ok";  //change to ok if find product in product_list
        }
        
        //get picture number
        pstmt = conn.prepareStatement("SELECT * FROM `product_pic` where `product_id` = ?");
        pstmt.setInt(1, product_id);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            pic_num = rs.getInt("pic_num");
        }
        //add picture to data base
        pstmt = conn.prepareStatement("insert into product_pic values(?,?,?)");
        if (ch .equals("ok")) {
            pic_num++;
            pstmt.setInt(1, product_id);
            pstmt.setInt(2, pic_num);
            pstmt.setString(3, pic_location);
            pstmt.executeUpdate();
            //add done
        } else {
            throw new Exception(ch);
            //add fail
        }
        conn.close();
    }
    
    public static void productUpdate(int product_id, String product_name , int product_price, int product_discount, String product_gender, String product_type, String product_manufacture, String product_info, String product_description, String product_profile_pic) throws SQLException, Exception{
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        
        pstmt = conn.prepareStatement("UPDATE `product_list` SET `product_name`=?, `product_price`=?, `product_discount`=?, `product_gender`=?, `product_type`=?, `product_manufacture`=?, `product_info`=?, `product_description`=?, `product_profile_pic`=? WHERE  `product_id`=? ");
        pstmt.setString(1, product_name);
        pstmt.setInt(2, product_price);
        pstmt.setInt(3, product_discount);
        pstmt.setString(4, product_gender);
        pstmt.setString(5, product_type);
        pstmt.setString(6, product_manufacture);
        pstmt.setString(7, product_info);
        pstmt.setString(8, product_description);
        pstmt.setString(9, product_profile_pic);
        pstmt.setInt(10, product_id);
        pstmt.executeUpdate();
        
        conn.close();
    }
    
    public static ArrayList<Product> getProduct() throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `product_list`");
        rs = pstmt.executeQuery();
            
        ArrayList<Product> res= new ArrayList<Product>();
      
        while (rs.next()) {
            Product i=new Product();
            i.id = rs.getInt("product_id");
            i.name = rs.getString("product_name");
            i.price = rs.getInt("product_price");
            i.discount = rs.getInt("product_discount");
            i.gender = rs.getString("product_gender");
            i.category = rs.getString("product_type");
            i.manufacture = rs.getString("product_manufacture");
            i.info = rs.getString("product_info");
            i.description = rs.getString("product_description");
            i.profile_pic = rs.getString("product_profile_pic");
            res.add(i);
        }
        conn.close();
        return res;
    }
    
    public static Product getProductByProductId(int product_id) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `product_list` WHERE product_id = ?");
        pstmt.setInt(1, product_id);
        rs = pstmt.executeQuery();
            
        Product i=new Product();

        while (rs.next()) {
            i.id = rs.getInt("product_id");
            i.name = rs.getString("product_name");
            i.price = rs.getInt("product_price");
            i.discount = rs.getInt("product_discount");
            i.gender = rs.getString("product_gender");
            i.category = rs.getString("product_type");
            i.manufacture = rs.getString("product_manufacture");
            i.info = rs.getString("product_info");
            i.description = rs.getString("product_description");
            i.profile_pic = rs.getString("product_profile_pic");
        }
        conn.close();
        return i;// get arreylist like get product but there are onty 1 product in list
    }
    
    public static ArrayList<Item> getItemByProductId(int product_id) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `item_info` where product_id = ?");
        pstmt.setInt(1, product_id);
        rs = pstmt.executeQuery();
            

        ArrayList<Item> res = new ArrayList();
        
        while (rs.next()) {
            Item i=new Item();
            i.product_id = rs.getInt("product_id");
            i.item_id = rs.getInt("item_id");
            i.item_material = rs.getString("item_material");
            i.item_color = rs.getString("item_color");
            i.item_size = rs.getString("item_size");
            i.item_sample_pic = rs.getString("item_sample_pic");
            i.item_quantity = rs.getInt("item_quantity");
            res.add(i);
        }
        conn.close();
        return res;// get arreylist like get product but there are onty 1 product in list
    }
    
    public static String[] getProductPic(int product_id) throws SQLException, Exception {
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        pstmt = conn.prepareStatement("SELECT * FROM `product_pic` where `product_id` = ?");
        pstmt.setInt(1, product_id);
        rs = pstmt.executeQuery();
        
        String[] pic = new String[300];//arrey that use to store picture location
        int n ;//use to locate picture in order
            
            
            
        while (rs.next()) {
            n = rs.getInt("pic_num"); //get picture number alway start from 1
            pic[n] = rs.getString("pic_location");
        }
        conn.close();
        return  pic ;       
    }
    
    
    public static boolean addReview(int product_id, int user_id, String review_title, long review_time, int review_value, int review_price, int review_quality, String review_text) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        String ch = "ok"; 
        PreparedStatement pstmt = conn.prepareStatement("INSERT INTO `product_review` (`product_id`, `user_id`, `review_title`, `review_date`, `review_value`, `review_price`, `review_quality`, `review_text`) VALUES (?,?,?,FROM_UNIXTIME(?),?,?,?,?)");
        if (ch.equals("ok")) {
            pstmt.setInt(1, product_id);
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
        } else {
            conn.close();
            return false;
        }
    }

    public static ArrayList<Review> getReview(int product_id) throws SQLException, Exception {

        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `product_review`,`user_list` WHERE `product_review`.`product_id`=? and `product_review`.`user_id`=`user_list`.`user_id`");
        pstmt.setInt(1,product_id);
        rs = pstmt.executeQuery();

        ArrayList<Review> res = new ArrayList();

        while (rs.next()) {
            Review i = new Review();
            i.product_id = rs.getInt("product_id");
            i.user.id = rs.getInt("user_id");
            i.user.email = rs.getString("user_email");
            i.user.fName= rs.getString("user_fname");
            i.user.lName = rs.getString("user_lname");
            i.review_time = rs.getTimestamp("review_date").getTime();
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

    public static Item getItemByItemId(int item_id) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;    
        pstmt = conn.prepareStatement("SELECT * FROM `item_info` where item_id = ?");
        pstmt.setInt(1, item_id);
        rs = pstmt.executeQuery();
            

        Item i=new Item();
        
        if (rs.next()) {
            i.product_id = rs.getInt("product_id");
            i.item_id = rs.getInt("item_id");
            i.item_material = rs.getString("item_material");
            i.item_color = rs.getString("item_color");
            i.item_size = rs.getString("item_size");
            i.item_sample_pic = rs.getString("item_sample_pic");
            i.item_quantity = rs.getInt("item_quantity");
        }
        conn.close();
        return i;
    }
        
        
}
