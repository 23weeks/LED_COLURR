package kr.co.led.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderProductBean {

   private int order_idx;
   private int product_idx;
   private int order_product_amount;
   private int order_prosubtotal;
   
}