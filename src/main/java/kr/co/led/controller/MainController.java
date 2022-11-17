package kr.co.led.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}

	@GetMapping("/about")
	public String about() {
		return "about";
	}

}
