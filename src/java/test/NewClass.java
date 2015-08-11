/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.PrintStream;
import java.util.ArrayList;
import model.Product;
import model.WishListMgr;
/**
 *
 * @author hy
 */
public class NewClass {
    public static void main(String[] args) throws Exception{
        PrintStream out = System.out;
        WishListMgr.add_item(1, 1);
        WishListMgr.delete_item(1, 1);
        ArrayList<Product> wishList=model.WishListMgr.getWishlist(1);
        
            out.print("\u005B");
            String s="";
            for (Product i:wishList){
                out.print(s);
                out.printf("\u005B%d,\"%s\",%d,\"%s\"\u005D",
                        i.id,i.name,i.price,i.profile_pic);
                s=",";
            }
            out.print("\u005D");
    }
}
