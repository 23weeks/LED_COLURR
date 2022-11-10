package kr.co.led.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.led.beans.UserBean;
import kr.co.led.service.UserService;
import kr.co.led.validator.UserValidator;

@Controller
//@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {

		model.addAttribute("fail", fail); //실패 아니얌

		return "user/login";
	}

	@PostMapping("/login_pro")
	public String tempLoginUserBean(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			BindingResult result) {

		if (result.hasErrors()) {
			return "user/login";
		}

		userService.getLoginUserInfo(tempLoginUserBean);

		if (loginUserBean.isUserLogin() == true) {
			return "user/login_success";
		} else {
			return "user/login_fail"; //아이디 비번 검증	
		}
	}

	@GetMapping("/join")
	public String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {

		return "user/join";
	}

	@PostMapping("/join_pro")
	public String Join(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {

		if (result.hasErrors()) {
			return "user/join";
		}

		userService.addUserInfo(joinUserBean);

		return "user/join_success";
	}
    
	/* 정보수정 */
	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifyUserBean") UserBean modifyUserBean, Model model) {
		
		userService.getModifyUserInfo(modifyUserBean); //수정하지 않아도 되는 id, name
		
		return "user/modify";
	}

	@PostMapping("/user_modify_pro")
	public String modify(@Valid @ModelAttribute("modifyUserBean") UserBean modifyUserBean, BindingResult result) {

		if (result.hasErrors()) {
			
			return "user/modify";
		}
		userService.modifyUserInfo(modifyUserBean);
		
		
		return "user/modify_success";
	}

	/* 회원 탈퇴 */
	@GetMapping("/delete")
	public String delete(@ModelAttribute("deleteUserBean") UserBean deleteUserBean,
			             @RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {
		
		model.addAttribute("fail", fail); //실패 아니얌
		
		return "user/delete";
	}
	
	/*@PostMapping("/user_delete_pro")
	public String delete(@Valid @ModelAttribute("deleteUserBean") UserBean deleteUserBean, BindingResult result) {

		if (result.hasErrors()) {
			
			return "user/delete";
		
		}else if (deleteUserBean.isDelete() == true) {
	
			userService.deleteUserInfo(deleteUserBean);
	}
		return "user/delete_success";
	}*/
	@PostMapping("/user_delete_pro")
	public String delete(@Valid @ModelAttribute("deleteUserBean") UserBean deleteUserBean, BindingResult result) {
		
		if (result.hasErrors()) {
			
			return "user/delete";
			
		}			
			userService.deleteUserInfo(deleteUserBean);
			loginUserBean.setUserLogin(false);
			return "user/delete_success";		
	}

	@GetMapping("/mypage")
	public String mypage() {
		return "user/mypage";
	}
	
	@GetMapping("/logout")
	public String logout() {
		
		loginUserBean.setUserLogin(false);

		return "user/logout";
	}

	@GetMapping("/not_login")
	public String not_login() {
	
		return "user/not_login";
}
	
	// UserValidator ��û
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UserValidator validator1 = new UserValidator();
		binder.addValidators(validator1);
	}


}