package kr.co.led.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.led.beans.OrderBean;
import kr.co.led.beans.UserBean;
import kr.co.led.dao.OrderDao;

@Service
public class OrderService {

	

	@Autowired
	private OrderDao orderDao;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;


	public OrderBean getOrderInfo(int user_idx) {
		return orderDao.getOrderInfo(user_idx);
	}

////////////////////////////////
	public List<OrderBean> getCardList(String id) {

		return orderDao.getCardList(id);
	}

	public List<OrderBean> getPayAll(){
		return orderDao.getPayAll();
	}


}
