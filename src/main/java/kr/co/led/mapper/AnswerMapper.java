package kr.co.led.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.led.beans.AnswerBean;

public interface AnswerMapper {

	@Select ("select answer_idx,question_idx,answer_content,admin_id " +
			"from answer")
	List<AnswerBean> getanswer();
	
	@Insert("insert into question(answer_idx, question_idx, answer_content, admin_id)" +
			"values(answer_seq.nextval, question_seq.nextval, #{answer_content}, #{admin_id})")
    void addAnswerInfo(AnswerBean answerBean);
	
}
