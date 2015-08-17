/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;

/**
 *
 * @author hy
 */

public class Cart {
    
    private HashMap<Integer,Item> items;
    private HashMap<Integer,Product> products;
    
    public Cart(){
        items=new HashMap();
        products=new HashMap();
    }
    
    public Cart(HashMap items,HashMap products){
        this.items=items;
        this.products=products;
    }
    
    public void add(Item item, Product product){
        items.put(item.item_id, item);
        products.put(item.item_id, product);
    }
    
    public void remove(int id){
        items.remove(id);
        items.remove(id);
    }
    
    public void remove(Item item){
        remove(item.item_id);
    }
}
