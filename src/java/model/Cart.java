/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author hy
 */

public class Cart {
    
    private HashMap<Integer,Item> items;
    private HashMap<Integer,Integer> qty;
    
    public Cart(){
        items=new HashMap();
        qty=new HashMap();
    }
    
    public Cart(HashMap items,HashMap products){
        this.items=items;
        this.qty=products;
    }
    
    public void add(Item item, int qty){
        items.put(item.item_id, item);
        this.qty.put(item.item_id, qty);
    }
    
    public void remove(int id){
        items.remove(id);
        items.remove(id);
    }
    
    public void remove(Item item){
        remove(item.item_id);
    }

    public ArrayList<Item> items() {
        return new ArrayList(items.values());
    }
    
    
}
