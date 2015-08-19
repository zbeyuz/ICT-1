/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import model.ProductMgr;

/**
 *
 * @author hy
 */
public class ItemTester {
    
    
    public static void main(String[] args) throws Exception{
        System.out.println(ProductMgr.getItemByItemId(1).product_id);
    }
}
