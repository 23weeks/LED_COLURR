package kr.co.led.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.led.beans.OrderBean;
import kr.co.led.beans.UserBean;
import kr.co.led.mapper.OrderMapper;
import kr.co.led.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;

	@Autowired
	OrderMapper orderMapper;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
// ================================================
	//======±¸ÇöÁß=======
	@GetMapping("/order")
	public String order(@ModelAttribute("orderInfoBean") OrderBean orderInfoBean,
						Model model) {
		
		return "order/pay";
	}
	//=================
	
	@GetMapping("/input_card")
	public String input_card(HttpSession session, Model model) {
		
	
		session.setAttribute("id", loginUserBean.getUser_name());
		String userid = loginUserBean.getUser_name();
		System.out.println(loginUserBean.getUser_name());
		model.addAttribute("userid", userid);
		return "order/input_card";
	}
	
	@GetMapping("/input_cash")
	public String input_cash(HttpSession session, Model model) {
		session.setAttribute("id", loginUserBean.getUser_name());
		String userid = loginUserBean.getUser_name();
		System.out.println(loginUserBean.getUser_name());
		model.addAttribute("userid", userid);
		return "order/input_cash";
	}
	
	@GetMapping("/kakaopay")
	public String kakaopay() {
		return "order/kakaopay";
	}
	
	@GetMapping("/read_data")
	public String read_data(Model model) {
		List<OrderBean> list=orderMapper.select_data();
		
		model.addAttribute("list",list);
		
		return "order/read_data";
	}


	@GetMapping("/order_list")
	public String pay(Model model) {
	
		List<OrderBean> orderList=orderService.getPayAll();
		model.addAttribute("orderList", orderList);
		
		return "order/order_list";
	}


	
	
	

	
	
	
}