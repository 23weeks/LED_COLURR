package kr.co.led.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.led.beans.NoticeBean;
import kr.co.led.beans.QuestionBean;
import kr.co.led.beans.UserBean;
import kr.co.led.service.NoticeService;
import kr.co.led.service.QuestionService;

public class CheckWriterInterceptor implements HandlerInterceptor{
	
	private UserBean loginUserBean; //로그인 회원정보
	private QuestionService questionService; //글 작성 회원 정보
	private NoticeService noticeService;

	public CheckWriterInterceptor(UserBean loginUserBean, QuestionService questionService, NoticeService noticeService) {
		super();
		this.loginUserBean = loginUserBean;
		this.questionService = questionService;
		this.noticeService = noticeService;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String str1 = request.getParameter("question_idx");
		int question_idx = Integer.parseInt(str1);
		
		QuestionBean currentQuestionBean = questionService.getQuestionInfo(question_idx);
		
		String str2 = request.getParameter("notice_idx");
		int notice_idx = Integer.parseInt(str2);
		
		NoticeBean currentNoticeBean = noticeService.getNoticeInfo(notice_idx);
		
		if(currentQuestionBean.getUser_idx() != loginUserBean.getUser_idx()) {
				String contextPath = request.getContextPath(); //현재의 잘못된 접근 경로
				response.sendRedirect(contextPath + "/board_not_writer");
				return false;
		}
				
		if(currentNoticeBean.getAdmin_id() != loginUserBean.getUser_id()) {
				String contextPath = request.getContextPath(); //현재의 잘못된 접근 경로
				response.sendRedirect(contextPath + "/notice_not_writer");
				return false;
					
		}
		
		return true;
	}
	
	
	
	
	

}
