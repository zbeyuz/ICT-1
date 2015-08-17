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
import java.util.Calendar;

/**
 *
 * @author Evilill
 */
public class BillMgr {
    
    public static void newBill(int user_id, int bill_shipping_price, String bill_shipping_type, ArrayList<Product> items, UserInfo info) throws Exception {
        int billId=addBill(user_id,bill_shipping_price,bill_shipping_type);
        for(Product i:items){
            addBillItem(billId,i.id,1);
        }
        
        addBillAddress(billId,info.address,info.floor, info.unit, info.road, info.country, info.postcode, info.tel);
    }
    
    
    public static int addBill(int user_id, int bill_shipping_price, String bill_shipping_type) throws SQLException, Exception {
        int bill_id= 1;
        int bill_state = 1;
        long bill_done_date = Calendar.getInstance().getTime().getTime();
        
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        //get latest bill_id
        pstmt = conn.prepareStatement("SELECT * FROM `bill_list`");
        rs = pstmt.executeQuery(); 
        while (rs.next()) {
            bill_id = rs.getInt("bill_id");
        }
        
        //add new bill
        pstmt = conn.prepareStatement("insert into bill_list (`bill_id`, `user_id`, `bill_state`, `bill_done_date`, `bill_shipping_type`, `bill_shipping_price`) values(?,?,?,FROM_UNIXTIME(?),?,?)");
        bill_id++;
        pstmt.setInt(1, bill_id);
        pstmt.setInt(2, user_id);
        pstmt.setInt(3, bill_state);
        pstmt.setLong(4, bill_done_date);
        pstmt.setString(5, bill_shipping_type);
        pstmt.setInt(6, bill_shipping_price);
        
        pstmt.executeUpdate();
        
        return bill_id;
    }
    
    public static void addBillItem(int bill_id, int item_id, int bill_quantity) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        
        pstmt = conn.prepareStatement("insert into bill_info values(?,?,?)");
        pstmt.setInt(1, bill_id);
        pstmt.setInt(2, item_id);
        pstmt.setInt(3, bill_quantity);//item quantity
        pstmt.executeUpdate();
    }
    
    public static void addBillAddress(int bill_id, String bill_address, String bill_floor, String bill_unit, String bill_road, String bill_country, int bill_postcode, int bill_tel) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        
        pstmt = conn.prepareStatement("insert into bill_address values(?,?,?,?,?,?,?,?)");
        pstmt.setInt(1, bill_id);
        pstmt.setString(2, bill_address);
        pstmt.setString(3, bill_floor);
        pstmt.setString(4, bill_unit);
        pstmt.setString(5, bill_road);
        pstmt.setString(6, bill_country);
        pstmt.setInt(7, bill_postcode);
        pstmt.setInt(8, bill_tel);
        pstmt.executeUpdate();   
    }
    
    //state 1 mean not dinish yet
    public static void changeBillState(int bill_id, int bill_state, long bill_done_date) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        
        pstmt = conn.prepareStatement("UPDATE `bill_list` SET `bill_state`=?, `bill_done_date`=? WHERE `bill_id`=?");
        pstmt.setInt(1, bill_state);
        pstmt.setLong(2, bill_done_date); 
        pstmt.setInt(3, bill_id);
        pstmt.executeQuery();
        
        
    }
    
    //get all bill which in state 1
    public static ArrayList<Bill> getBillList() throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `bill_list` WHERE `bill_state`= 1");
        rs = pstmt.executeQuery();

        ArrayList<Bill> res = new ArrayList();

        while (rs.next()) {
            Bill i = new Bill();
            i.bill_id = rs.getInt("bill_id");
            i.user_id = rs.getInt("user_id");
            i.bill_state = rs.getInt("bill_state");
            i.bill_done_date= rs.getTimestamp("bill_done_date").getTime();
            i.bill_shipping_type= rs.getString("bill_shipping_type");
            i.bill_shipping_price= rs.getInt("bill_shipping_price");
            res.add(i);
        }
        conn.close();
        return res;    

    }
    
    public static ArrayList<BillInfo> getBillInfo(int bill_id) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `bill_info`, `item_list` WHERE `bill_info`.`bill_id`= ? and `bill_info`.`item_id` = `item_list`.`item_id`");
        pstmt.setInt(1, bill_id);
        rs = pstmt.executeQuery();

        ArrayList<BillInfo> res = new ArrayList();

        while (rs.next()) {
            BillInfo i = new BillInfo();
            i.bill_id = rs.getInt("bill_id");
            i.item_id = rs.getInt("item_id");
            i.item_name = rs.getString("item_name");
            i.item_price = rs.getInt("item_price");
            i.item_discount = rs.getInt("item_discount");
            i.bill_quantity = rs.getInt("bill_quantity");
            res.add(i);
        }
        conn.close();
        return res; 

    }
    
    public static ArrayList<BillAddress> getAddress(int bill_id) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        pstmt = conn.prepareStatement("SELECT * FROM `bill_address` WHERE `bill_id`= ?");
        pstmt.setInt(1, bill_id);
        rs = pstmt.executeQuery();

        ArrayList<BillAddress> res = new ArrayList();
        
        while (rs.next()) {
            BillAddress i = new BillAddress();
            i.bill_id = rs.getInt("bill_id");
            i.bill_address = rs.getString("bill_address");
            i.bill_floor = rs.getString("bill_floor");
            i.bill_unit = rs.getString("bill_unit");
            i.bill_road = rs.getString("bill_road");
            i.bill_country = rs.getString("bill_country");
            i.bill_postcode = rs.getInt("bill_postcode");
            i.bill_tel = rs.getInt("bill_tel");
            res.add(i);
        }
        conn.close();
        return res; 

    }
    
    public static ArrayList<Bill> getBillByUserId(int user_id) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        pstmt = conn.prepareStatement("SELECT * FROM `bill_list` WHERE `user_state`= ?");
        pstmt.setInt(1, user_id);
        rs = pstmt.executeQuery();

        ArrayList<Bill> res = new ArrayList();

        while (rs.next()) {
            Bill i = new Bill();
            i.bill_id = rs.getInt("bill_id");
            i.user_id = rs.getInt("user_id");
            i.bill_state = rs.getInt("bill_state");
            i.bill_done_date= rs.getTimestamp("bill_done_date").getTime();
            i.bill_shipping_type= rs.getString("bill_shipping_type");
            i.bill_shipping_price= rs.getInt("bill_shipping_price");
            res.add(i);
        }
        conn.close();
        return res;    

    }
}
