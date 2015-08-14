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

/**
 *
 * @author Evilill
 */
public class BillMgr {
    
    
    public static int AddBill(int item_id, String item_name, int item_price, int item_discount, String item_gender, String item_category, String item_manufacture, String item_info, String item_description) throws SQLException, Exception {
        int bill_id= -1;
        return bill_id;
    }
    
    public static void AddBillItem(int bill_id, int item_id, int bill_quantity) throws SQLException, Exception {
        
    }
    
    public static void AddBillAddress(int bill_id, int item_id, int bill_quantity) throws SQLException, Exception {
        
    }
    
    public static void changeBillState(int bill_id,int bill_state) throws SQLException, Exception {
        

    }
    
    public static void getBill(int bill_id) throws SQLException, Exception {
        

    }
    
    public static void getInfo(int bill_id) throws SQLException, Exception {
        

    }
    
    public static void getAddress(int bill_id) throws SQLException, Exception {
        

    }
    
    public static void getBillByUserId(int bill_id, int user_id) throws SQLException, Exception {
        

    }
}
