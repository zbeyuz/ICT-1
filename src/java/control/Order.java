/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UserInfo;

/**
 *
 * @author hy
 */
public class Order extends HttpServlet {

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
        //order history
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
        HashMap cart=(HashMap)request.getSession().getAttribute("cart");
        if(cart!=null){
            UserInfo ui= new UserInfo();
            ui.address=String.format("%s block%s", request.getParameter("street"),request.getParameter("blk"));
            ui.country=request.getParameter("country");
            String email=request.getParameter("email");
            String fName=request.getParameter("fName");
            ui.floor=request.getParameter("floor");
            String lName=request.getParameter("lName");
            ui.tel=Integer.parseInt(request.getParameter("phone"));
            String shipping=request.getParameter("shipping");
            ui.unit=request.getParameter("unit");
            ui.postcode=Integer.parseInt(request.getParameter("zip"));
        }else{
            out.println("empty");
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
