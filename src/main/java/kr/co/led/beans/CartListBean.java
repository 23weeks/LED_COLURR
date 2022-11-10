package kr.co.led.beans;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartListBean {
   
   private int product_idx;
   private String product_name;
   private int product_price;
   private String product_img1;
   private int product_amount;
   private int total;
   
   private List<CartBean> cartList;
   
}