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
	
	// =================================∞·¡¶ API

    
	// ================================================
	@GetMapping("/order")
	public String order() {
		return "order/order";
	}
	
	@GetMapping("checkout")
	public String checkout() {
		return "order/checkout";
	}
	
}