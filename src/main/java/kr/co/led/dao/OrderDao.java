package kr.co.led.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.led.beans.OrderBean;
import kr.co.led.mapper.OrderMapper;

@Repository
public class OrderDao {

	@Autowired //mapper 자동생성
	private OrderMapper orderMapper;
		
	public OrderBean getOrderInfo(int user_idx) {
		return orderMapper.getOrderInfo(user_idx);
	}
	
	
	//////////////
	public List<OrderBean> getCardList(String id){
		return orderMapper.getCardList(id);
	}
	
	public List<OrderBean> getPayAll(){
		return orderMapper.getPayAll();
	}
	

}
