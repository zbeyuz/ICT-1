/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
import model.User;
import model.WishlistMgr;


/**
 *
 * @author hy
 */
public class WishlistHandler extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        User user=(User) request.getSession().getAttribute("user");
        if (user==null){
            out.println("invuser");
            return;
        }
        try {
            
            ArrayList<Product> wishList=WishlistMgr.getWishlist(user.id);
            out.print("\u005B");
            String s="";
            for (Product i:wishList){
                out.print(s);
                if (i.profile_pic.replace(" ", "").equals("")) {
                        i.profile_pic = "images/product_img_27.jpg";
                    }
                out.printf("\u005B%d,\"%s\",%d,\"%s\"\u005D",
                        i.id,i.name,i.price,i.profile_pic);
                s=",";
            }
            out.print("\u005D");
        } catch (Exception e) {
            out.println(e);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        User user=(User) request.getSession().getAttribute("user");
        if (user==null){
            out.println("invuser");
            return;
        }
        try{
            int item_id=Integer.parseInt(request.getParameter("item"));
            if(!WishlistMgr.add_item(user.id, item_id)){
                WishlistMgr.delete_item(user.id, item_id);
            }
        }catch(Exception e){
            out.print("err");
            out.println(e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
