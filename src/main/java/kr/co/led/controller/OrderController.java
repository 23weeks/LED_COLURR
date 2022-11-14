package kr.co.led.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.led.beans.OrderBean;
import kr.co.led.beans.UserBean;
import kr.co.led.mapper.OrderMapper;
import kr.co.led.service.KakaoPay;
import kr.co.led.service.OrderService;

import lombok.Setter;
import lombok.extern.java.Log;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;

	@Autowired
	OrderMapper orderMapper;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	//=================================카카오페이
	@Setter(onMethod_ = @Autowired)
    private KakaoPay kakaopay;
	
	@GetMapping("/kakaoPay")
    public String kakaoPayGet() {
        return "order/kakaoPay";
    }
    
    @PostMapping("/kakaoPay")
    public String kakaoPay() {
        
        return "redirect:" + kakaopay.kakaoPayReady();
 
    }
    
    
    
    @GetMapping("/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
       
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
        
    }
    
// ================================================
	@GetMapping("/order")
	public String order() {
		return "order/order";
	}
	
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
	
	@PostMapping("/input_pro")
	public String input_pro(OrderBean orderBean) {
		orderMapper.insert_into(orderBean);
		return "order/input_pro";
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