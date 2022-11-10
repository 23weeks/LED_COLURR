package kr.co.led.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.led.beans.AnswerBean;
import kr.co.led.dao.AnswerDao;

@Service
public class AnswerService {
	
	@Autowired
	private AnswerDao answerDao;
	
	public List<AnswerBean> answerlist() {
		List<AnswerBean> answerlist = answerDao.getanswerList();
		return answerlist;
	}
	

}
