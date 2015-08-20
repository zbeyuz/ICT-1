/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class GetProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            ArrayList<Product> items;
            String category = request.getParameter("category");
            if (category == null) {
                try {
                    items = database.ProductMgr.getProduct();
                    printProductJSON(items,out);
                } catch (Exception e) {
                    Logger.getLogger(AddPic.class.getName()).log(Level.SEVERE, null, e);
                    out.println("\u005B\u005D");
                }
            } else {
                try {
                    items = database.ProductMgr.getProductByCategory(category);
                    printProductJSON(items,out);
                } catch (Exception e) {
                    Logger.getLogger(AddPic.class.getName()).log(Level.SEVERE, null, e);
                    out.println("\u005B\u005D");
                }
            }
        }
    }

    static void printProductJSON(ArrayList<Product> items, PrintWriter out) {
        out.print("\u005B");
        String s = "";
        for (Product i : items) {
            out.print(s);
            if (i.profile_pic.replace(" ", "").equals("")) {
                i.profile_pic = "images/product_img_27.jpg";
            }
            out.printf("\u005B%d,\"%s\",%d,\"%s\"\u005D",
                    i.id, i.name, i.price, i.profile_pic);
            s = ",";
        }
        out.print("\u005D");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
