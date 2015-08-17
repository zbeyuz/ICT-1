/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import model.Review;

/**
 *
 * @author hy
 */
public class NewClass {
    public static void main(String[] args) throws Exception{
        
        ArrayList<Review> items = model.ProductMgr.getReview(123);
                System.out.print("\u005B");
                String s = "";
                for (Review i : items) {
                    System.out.print(s);
                    System.out.printf("\u005B%d,\"%s\",\"%s\",\"%s\",%d,%d,%d,\"%s\"\u005D",
                            i.item_id, i.user_mail, i.review_title, new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(i.review_time)),
                            i.review_price, i.review_value, i.review_quality,
                            i.review_text.replace("\r", "").replace("\n", "<br />"));
                    s = ",";
                }
                System.out.print("\u005D");
    }
    
}
