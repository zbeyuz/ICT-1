/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author hy
 */
public class Review {
    public int item_id = -1;
    public int user_id = -1;
    public String user_mail = "";
    public String review_title="";
    public Date review_date;
    public int review_value = -1;
    public int review_price = -1;
    public int review_quality = -1;
    public String review_text="";

}
