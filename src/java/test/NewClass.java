/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import database.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.BillSummery;
import model.User;

/**
 *
 * @author hy
 */
public class NewClass {
    public static void getBillByUser(User user) throws SQLException, Exception {
        Connection conn=DBConn.getConn();
        PreparedStatement pstmt = conn.prepareStatement("SELECT bill_info.`bill_id` as bill_id, SUM(product_list.product_price*bill_info.bill_quantity) AS total, CONCAT_WS(' ',bill_address.bill_fname,bill_address.bill_lname) as name, bill_list.bill_shipping_type AS shipping_type, bill_list.bill_done_date AS date FROM `bill_info`,product_list,bill_address,bill_list WHERE product_list.product_id=bill_info.product_id and bill_address.bill_id=bill_info.bill_id and bill_list.bill_id=bill_info.bill_id and bill_list.user_id=? GROUP BY bill_info.`bill_id`");
        pstmt.setInt(1, user.id);
        
        ResultSet rs = pstmt.executeQuery();
        
        while (rs.next()) {
            BillSummery i=new BillSummery();
            i.billId=rs.getInt("bill_id");
            i.total=rs.getInt("total");
            i.name=rs.getString("name");
            i.shipping_type=rs.getString("shipping_type");
            i.date=rs.getTimestamp("date").getTime();
        }
        conn.close();


    }
    
    public static void main(String[] args) throws Exception {
        User i = new User();
        i.id=5;
        getBillByUser(i);
    }
}
