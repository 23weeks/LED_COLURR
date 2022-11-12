package kr.co.led.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderBean {
	
	private int user_idx;
	private int order_idx;
	private String order_date;
	private String order_method;
	private String odrer_company;
	private String order_number;
	private String order_amount;
	private String order_sum;
	
}
