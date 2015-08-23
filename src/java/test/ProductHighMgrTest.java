/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import database.ItemMgr;

import java.util.ArrayList;
import model.ProductBest;
import model.ProductDeal;
import model.ProductFeature;

/**
 *
 * @author Fu
 */
public class ProductHighMgrTest {
    public static void main(String[] args) throws Exception{
        ArrayList<ProductFeature> res =  new ArrayList();
        res = database.ProductHighlightMgr.getProductFeature();
        System.out.println(res.size());
    }
}
