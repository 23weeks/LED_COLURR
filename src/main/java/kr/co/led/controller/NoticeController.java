package kr.co.led.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.led.beans.NoticeBean;
import kr.co.led.beans.UserBean;
import kr.co.led.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@GetMapping("/notice_list")
	public String list(Model model) {
		
		List<NoticeBean> noticeList= noticeService.getNoticeList();
		
		//System.out.println(noticeList.get(0));
		model.addAttribute("noticeList", noticeList);
		return "notice/list";
	}
	
	
	@GetMapping("/notice_list2")
	public String list2() {
		return "notice/list2";
	}
	
	
	//�뼨�먯삕 �뜝�럥由��뜝�럡�룎�솻洹ｋ뼬�뵳占�
	@GetMapping("/notice_read")
	public String read(int notice_idx, Model model) {
		
		NoticeBean readNoticeBean = noticeService.getNoticeInfo(notice_idx);
		
		model.addAttribute("loginUserBean", loginUserBean);
		model.addAttribute("readNoticeBean", readNoticeBean);
		
		return "notice/read";
	}
	
	
	@GetMapping("/notice_write")
	public String write(@ModelAttribute("writeNoticeBean") NoticeBean writeNoticeBean) {
		return "notice/write";
	}
	
	
	@PostMapping("/notice_writePro")
	public String writePro(@Valid @ModelAttribute("writeNoticeBean") NoticeBean writeNoticeBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "notice/write";
		}
		noticeService.addNoticeInfo(writeNoticeBean);
		
		return "notice/write_success";
	}
	
	@GetMapping("/notice_modify")
	public String modify() {
		return "notice/modify";
	}
	
	@GetMapping("/notice_delete")
	public String delete() {
		return "notice/delete";
	}
		
}
