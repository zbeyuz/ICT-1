/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author hy
 */
public class CartTester {
    public static void main(String[] args) {
        Cart a=new Cart();
        Product b = new Product();
        Item c = new Item();
        c.product_id=1;
        c.item_id=1;
        b.id=1;
        System.out.println(a.add(c, b, 1));
        System.out.println(a.itemId());
        System.out.println(a.price(1));
        System.out.println(a.total());
    }
}