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
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.led.beans.PageBean;
import kr.co.led.beans.QuestionBean;
import kr.co.led.beans.UserBean;
import kr.co.led.service.QuestionService;

@Controller
public class QuestionController {

	@Autowired
	private QuestionService questionService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/board_list")
	public String main(@RequestParam(value = "page", defaultValue = "1") int page, Model model) {

		List<QuestionBean> questionList = questionService.getQuestionList(page);

		PageBean pageBean = questionService.getQuestionCnt(page, page);

		model.addAttribute("questionList", questionList);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("page", page);

		return "board/board_list";
	}

	@GetMapping("/board_read")
	public String readq(@RequestParam("question_idx") int question_idx, @RequestParam("page") int page, Model model) {

		QuestionBean readQuestionBean = questionService.getQuestionInfo(question_idx);

		model.addAttribute("question_idx", question_idx);

		model.addAttribute("readQuestionBean", readQuestionBean); // 글쓴 회원의 정보
		model.addAttribute("loginUserBean", loginUserBean); // 로그인한 회원의 정보

		model.addAttribute("page", page);

		return "board/read";
	}

	@GetMapping("/board_modify")
	public String modifyq(@RequestParam("question_idx") int question_idx, @RequestParam("page") int page,
			@ModelAttribute("modifyQuestionBean") QuestionBean modifyQuestionBean, Model model) {

		model.addAttribute("question_idx", question_idx);
		model.addAttribute("page", page);

		// 게시글 하나의 정보 가져오기
		QuestionBean tempQuestionBean = questionService.getQuestionInfo(question_idx);

		// 작성자 가져오기 user_name 어떻게 가져오지
		modifyQuestionBean.setQuestion_date(tempQuestionBean.getQuestion_date());
		modifyQuestionBean.setQuestion_title(tempQuestionBean.getQuestion_title());
		modifyQuestionBean.setQuestion_content(tempQuestionBean.getQuestion_content());
		modifyQuestionBean.setQuestion_img(tempQuestionBean.getQuestion_img());
		modifyQuestionBean.setUser_idx(tempQuestionBean.getUser_idx());

		modifyQuestionBean.setQuestion_idx(question_idx);

		return "board/modify";
	}

	@PostMapping("/board_modify_pro")
	public String modifyq_pro(@Valid @ModelAttribute("modifyQuestionBean") QuestionBean modifyQuestionBean,
			BindingResult result, @RequestParam("page") int page, Model model) {

		model.addAttribute("page", page);

		if (result.hasErrors()) {
			return "board/modify";
		}

		questionService.modifyQuestionInfo(modifyQuestionBean);

		return "board/modify_success";
	}

	@GetMapping("/board_delete")
	public String deleteq(@RequestParam("question_idx") int question_idx, Model model) {

		questionService.deleteQuestionInfo(question_idx);

		return "board/delete";
	}

	@GetMapping("/board_answer")
	public String answerq() {
		return "board/answer";
	}

	@GetMapping("/board_write")
	public String write(@ModelAttribute("writeQuestionBean") QuestionBean writeQuestionBean) {

		return "board/write";
	}

	@PostMapping("/board_write_pro")
	public String write_pro(@Valid @ModelAttribute("writeQuestionBean") QuestionBean writeQuestionBean, BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("에러발생");
			return "board/write";
		}
		
		
		questionService.addQuestionInfo(writeQuestionBean);
		
		System.out.println("입력성공");
		
		return "board/write_success";
	}

}
