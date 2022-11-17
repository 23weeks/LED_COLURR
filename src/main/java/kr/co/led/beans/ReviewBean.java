package kr.co.led.beans;

import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewBean {

	 private int review_idx;
	 private int user_idx;
	 private int product_idx;

	 @NotBlank
	 private String review_content;
	 
	 private String review_date;
	 private String user_name;
	 private String review_star;
	 
	 private int review_cnt;
	 
}
