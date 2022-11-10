package kr.co.led.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.led.beans.AnswerBean;
import kr.co.led.mapper.AnswerMapper;

@Repository
public class AnswerDao {

	@Autowired
	private AnswerMapper answerMapper;
	
	public List<AnswerBean> getanswerList() {
		
		List<AnswerBean> answerList = answerMapper.getanswer();
		return answerList;
	}
	
	
}
