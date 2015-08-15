/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

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
        HashMap<Integer,Product> cart = (HashMap) request.getSession().getAttribute("cart");
        if (cart != null) {
            out.print("\u005B");
            String s = "";
            for (Product i : cart.values()) {
                out.print(s);
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
        HashMap<Integer,Product> cart = (HashMap) request.getSession().getAttribute("cart");
        if (cart != null) {
            String act = request.getParameter("act");
            if (act != null && act.equals("rm")) {

            } else {
                try {
                    int itemId = Integer.parseInt(request.getParameter("item"));
                    Product item = model.ProductMgr.getProductById(itemId);
                    cart.put(itemId,item);
                } catch (Exception ex) {
                    Logger.getLogger(CartHandler.class.getName()).log(Level.SEVERE, null, ex);
                    out.println("invparam");
                }
            }
        } else {
            out.println("invuser");
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
