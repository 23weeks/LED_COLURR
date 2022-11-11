package kr.co.led.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import kr.co.led.beans.AnswerBean;

public interface AnswerMapper {

	@SelectKey(statement="select answer_seq.nextval from dual", keyProperty = "answer_idx", before=true, resultType=int.class)
	@Insert("insert into answer(answer_idx, question_idx, answer_content, admin_id) " +
			"values (#{answer_idx}, #{question_idx}, #{answer_content}, 'admin')")
    void addAnswerInfo(AnswerBean writeAnswerBean);
	
	
	
	 //��� ��ü ��������
	  
	 @Select ("select answer_idx, question_idx, answer_content, admin_id " +
	 "from answer") List<AnswerBean> getanswerList();
	
	
	
	//��� �ʿ��ѰŸ� ��������
	@Select("select answer_idx, question_idx, answer_content, admin_id " +
			"from answer where question_idx = #{question_idx}")
	AnswerBean getAnswerInfo(int question_idx);
	
	//����
	@Update("update answer " +
			"set answer_content=#{answer_content} " +
			"where admin_id and question_idx=#{question_idx}")
	void modifyAnswerInfo(AnswerBean modifyAnswerBean);
	
	//����
	@Delete("delete from answer " +
			"where admin_id and answer_idx=#{answer_idx}")
	void deleteAnswerInco(int answer_idx);
			
	
}
