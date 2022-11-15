package kr.co.led.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	@GetMapping("admin_userlist")
	public String admin_userlist() {
		return "admin/userlist";
	}

	
	@GetMapping("admin_siteInfo")
	public String admin_siteinfo() {
		return "admin/siteinfo";
	}
	
}
