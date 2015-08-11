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
import model.Review;

/**
 *
 * @author hy
 */
public class ReviewHandler extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ArrayList<Review> items;
            try {
                items = model.ProductMgr.getReview(Integer.parseInt(request.getParameter("item")));
            out.print("\u005B");
            String s="";
            for (Review i:items){
                out.print(s);
                out.printf("\u005B%d,%d,\"%s\",\"%s\",%d,%d,%d,\"%s\"\u005D",
                        i.item_id,i.user_id,i.review_title,i.review_date.toString(),
                        i.review_price,i.review_value,i.review_quality,
                        i.review_text);
                s=",";
            }
            out.print("\u005D");
            } catch (Exception ex) {
                out.println(ex);
            }
        }
    }
/*
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
*/
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
