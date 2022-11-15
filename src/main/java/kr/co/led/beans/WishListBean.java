package kr.co.led.beans;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class WishListBean {

   private int user_idx;
   private int product_idx;
   private int product_instock;
   private String product_name;
   private String product_price;
   private String stock_status;
   
}