package kr.co.led.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.led.service.UserService;

@RestController
public class RestApiController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("user/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
		
		boolean chk=userService.checkUserIdExist(user_id);
		
		return chk + "";
		
	}

	@GetMapping("user/checkUserEmailExist/{user_email}")
	public String checkUserEmailExist(@PathVariable String user_email) {
		
		boolean chk=userService.checkUserEmailExist(user_email);
		
		return chk + "";
		
	}
	
}
