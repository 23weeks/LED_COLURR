package kr.co.led.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.led.beans.OrderBean;


public interface OrderMapper {
	
	
	
		@Insert("insert into order_table (user_idx, order_idx, order_date, order_method, odrer_company, order_number, order_amount, order_sum) "
				+ "values (#{user_idx}, #{order_idx}, #{order_date}, #{order_method}, #{odrer_company}, #{order_number}, #{order_amount}, #{order_sum})")
		void insert_into(OrderBean databean);
	
		//=======================================
	
		@Select("select ut.user_name, sample6_postcode, sample6_address, sample6_detailAddress, sample6_extraAddress, user_phone, user_email "
				+ "from user_table ut, order_table od "
				+ "where ut.user_idx = #{user_idx}")
		OrderBean getOrderInfo(int user_idx);
		
		
		@Select("select * from order_table" )
		List<OrderBean> select_data();

		
		//주문기록
		@Select("select * from order_table order by order_date desc")
		List<OrderBean> getPayAll();


           @Select("select * from order_table "+
    		   "where user_idx = #{user_idx} "+
    		   "order by order_date desc")
          List<OrderBean> getCardList(String id);
    	
       

}
