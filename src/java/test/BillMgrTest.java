/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.util.ArrayList;
import model.Bill;
import model.BillAddress;
import model.BillInfo;
import model.User;

/**
 *
 * @author Fu
 */
public class BillMgrTest {
    public static void main(String[] args) throws Exception{
        int kk = 10 , n = 2;
        String uu ="ok";
        //newBill test
        
        //addBill tes
        /*
        n = model.BillMgr.addBill(5, kk, uu);
        System.out.println(n);
        */
        
        //addBillItem test
        /*
        model.BillMgr.addBillItem(n, n, n, n);
        */
        
        //addBillAddress test
        /*
        model.BillMgr.addBillAddress(n, uu, uu, uu, uu, uu, uu, uu, uu, n, n);
        */
        
        //changeBillState test
        /*
        model.BillMgr.changeBillState(n, 2, 1);
        */
        
        //getBillList test
        /*
        ArrayList<Bill> bill = new ArrayList();
        bill = model.BillMgr.getBillList();
        System.out.println(bill.size());
        */
        
        //getBillInfo test
        /*
        ArrayList<BillInfo> billInfo = new ArrayList();
        billInfo = model.BillMgr.getBillInfo(1);
        System.out.println(billInfo.size());
        */       
                
        //getBillAddress test
        /*
        BillAddress billAddress= new BillAddress();
        billAddress = model.BillMgr.getBillAddress(1);
        System.out.println(billAddress.bill_country);
        */
        
        //getBillByUserId test
        /*
        ArrayList<Bill> billInfo = new ArrayList();
        User a=new User();
        a.id=5;
        billInfo = model.BillMgr.getBillByUser(a);
        System.out.println(billInfo.size());
        */
    }
}
