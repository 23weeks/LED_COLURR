package kr.co.led.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.led.beans.PageBean;
import kr.co.led.beans.UserBean;
import kr.co.led.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	//======================= user info ===========================
	//userlist로 보내기
	@GetMapping("admin_userlist")
	public String admin_userlist(@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		
		List<UserBean> userList = adminService.getUserList(page);
		
		PageBean pageBean = adminService.getUserCnt(page, page);
		
		model.addAttribute("userList", userList);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("page", page);
		
		return "admin/userlist";
	}
		
}
