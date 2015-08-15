/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author hy
 */
public class NewClass {
    public static void main(String[] args){
        Map<Integer, Product> map = new HashMap();
        Product a=new Product(),b=new Product();
        map.put(1, a);
        map.put(3, b);
        
        System.out.println(map.get(1));
        System.out.println(map.get(3));
    }
}
