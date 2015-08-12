/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Review;
import model.User;

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
                String s = "";
                for (Review i : items) {
                    out.print(s);
                    out.printf("\u005B%d,%d,\"%s\",\"%d\",%d,%d,%d,\"%s\"\u005D",
                            i.item_id, i.user_id, i.review_title, i.review_time,
                            i.review_price, i.review_value, i.review_quality,
                            i.review_text);
                    s = ",";
                }
                out.print("\u005D");
            } catch (Exception ex) {
                out.println(ex);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /*
        
             User user = (User) request.getSession().getAttribute("user");
             out.println(user.id+request.getParameter("item")+request.getParameter("title")+request.getParameter("value_rate")+request.getParameter("price_rate")+request.getParameter("quality_rate")+request.getParameter("content"));
             }
             */
            User user = (User) request.getSession().getAttribute("user");
            if (user == null) {
                out.print("invuser");
                return;
            }
            int item_id = Integer.parseInt(request.getParameter("item"));
            int user_id = user.id;
            String review_title = request.getParameter("title");
            long review_time = Calendar.getInstance().getTime().getTime();
            int review_value = Integer.parseInt(request.getParameter("value_rate"));
            int review_price = Integer.parseInt(request.getParameter("price_rate"));
            int review_quality = Integer.parseInt(request.getParameter("quality_rate"));
            String review_text = request.getParameter("content");
            model.ProductMgr.addReview(item_id, user_id, review_title, review_time, review_value, review_price, review_quality, review_text);
        } catch (Exception ex) {
            Logger.getLogger(ReviewHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
