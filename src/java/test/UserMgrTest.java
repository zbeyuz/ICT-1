/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.util.ArrayList;
import model.User;
import model.UserInfo;

/**
 *
 * @author Fu
 */
public class UserMgrTest {
    public static void main(String[] args) throws Exception{
        String em = "pl@pp", pw = "122";
        String fn = "jkas", ln = "qwe";
        int id = 6, ad = 1234;
        String add= "ok";
        boolean c;
        
        //login test
        /*
        User user = new User();
        user = model.UserMgr.login(em, pw);
        System.out.println(user.email);
        */
        
        //register test
        /*
        c = model.UserMgr.register(em, pw, fn, ln);
        System.out.println(c);
        */
        
        //userUpdateMain test
        /*
        model.UserMgr.userUpdateMain(id, em, fn, ln);
        */
        
        //userUpdateMain test
        /*
        model.UserMgr.userUpdatePassword(id, pw);
        */
        
        //userUpdateInfo test
        /*
        model.UserMgr.userUpdateInfo(id, add, add, add, add, add, ad, ad, add);
        */
        
        //getUserInfo test
        /*
        UserInfo i = new UserInfo();
        i = model.UserMgr.getUserInfoByUserId(id);
        System.out.println(i.address);
        */
        
    }
}
