package kr.co.led.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.led.beans.QuestionBean;
import kr.co.led.beans.UserBean;
import kr.co.led.service.QuestionService;

public class CheckWriterInterceptor implements HandlerInterceptor{
	
	private UserBean loginUserBean; //�α��� ȸ������
	private QuestionService questionService; //�� �ۼ� ȸ�� ����

	public CheckWriterInterceptor(UserBean loginUserBean, QuestionService questionService) {
		super();
		this.loginUserBean = loginUserBean;
		this.questionService = questionService;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String str1 = request.getParameter("question_idx");
		int question_idx = Integer.parseInt(str1);
		
		QuestionBean currentQuestionBean = questionService.getQuestionInfo(question_idx);
		
		if(currentQuestionBean.getUser_idx() != loginUserBean.getUser_idx()) {
			String contextPath=request.getContextPath(); //������ �߸��� ���� ���
			response.sendRedirect(contextPath + "/board_not_writer");
			return false;
			
		}
		return true;
	}
	
	
	
	
	

}
