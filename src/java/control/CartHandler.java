/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
import model.Item;
import model.Product;
import database.ProductMgr;

/**
 *
 * @author hy
 */
public class CartHandler extends HttpServlet {

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
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart != null) {
            out.print("\u005B");
            String s = "";
            for (Item a : cart.items()) {
                out.print(s);
                Product i;
                try {
                    i = ProductMgr.getProductByProductId(a.product_id);
                } catch (Exception ex) {
                    Logger.getLogger(CartHandler.class.getName()).log(Level.SEVERE, null, ex);
                    break;
                }
                if (i.profile_pic.replace(" ", "").equals("")) {
                    i.profile_pic = "images/product_img_27.jpg";
                }
                out.printf("\u005B%d,\"%s\",%d,\"%s\"\u005D",
                        i.id, i.name, i.price, i.profile_pic);
                s = ",";
            }
            out.print("\u005D");
        } else {
            out.println("\u005B\u005D");
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
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            request.getSession().setAttribute("cart", cart);
        }
        
        String act = request.getParameter("act");
        if (act != null && act.equals("rm")) {
            try {
                int itemId = Integer.parseInt(request.getParameter("item"));
                cart.remove(itemId);
            } catch (Exception ex) {
                Logger.getLogger(CartHandler.class.getName()).log(Level.SEVERE, null, ex);
                out.println("invparam");
            }
        } else {
            try {
                int itemId = Integer.parseInt(request.getParameter("item"));
                int qty = Integer.parseInt(request.getParameter("qty"));
                Item item = database.ProductMgr.getItemByItemId(itemId);
                Product product = database.ProductMgr.getProductByProductId(item.product_id);
                if(!cart.add(item, product, qty)){
                    out.println("invalid product");
                }
                //Logger.getLogger(CartHandler.class.getName()).info(String.format("param: %d %d", itemId, qty));
                //Logger.getLogger(CartHandler.class.getName()).info(String.format("size: %d", cart.size()));
                //Logger.getLogger(CartHandler.class.getName()).info(String.format("cart: %b", cart.product(itemId).equals(product)));
            } catch (Exception ex) {
                Logger.getLogger(CartHandler.class.getName()).log(Level.SEVERE, null, ex);
                out.println("invparam");
            }
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
