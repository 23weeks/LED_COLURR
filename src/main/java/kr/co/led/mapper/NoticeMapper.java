package kr.co.led.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import kr.co.led.beans.NoticeBean;

public interface NoticeMapper {

	
	//湲��옉�꽦 writeNotice
	//�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾admin_id 1濡� �쟻�뼱�넃�쓬 �쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾
	@Insert ("insert into notice (notice_idx, notice_type, notice_title, "
			+ "notice_context, notice_img, admin_id, notice_date) "
			+ "values (#{notice_idx}, #{notice_type}, #{notice_title}, "
			+ "#{notice_context}, #{notice_img, jdbcType=VARCHAR}, 1, sysdate)")
	void addNoticeInfo(NoticeBean writeNoticeBean);
	
	
	@SelectKey(statement="select nntc_seq.nextval from dual", keyProperty = "notice_idx", before=true, resultType=int.class)
	//notice ?��?�뒪�듃 蹂닿�? 
	//�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾admin_id='1'濡�, notice_type='notice'濡�  �쟻�뼱�넃�쓬 �쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾
	@Select("select a1.notice_idx, a1.notice_title, a1.admin_id, to_char(a1.notice_date, 'yyyy-mm-dd') as notice_date"
			+ " from notice a1 "
			+ "where a1.admin_id='1' and a1.notice_type='notice_type'")
	List<NoticeBean> getNoticeList();
	
	
	//?��?��?���?
	@Select("select notice_idx, notice_type, notice_title, admin_id, to_char(notice_date, 'yyyy-mm-dd') as notice_date, notice_img, notice_context "
			+ "from notice "
			+ "where notice_idx=#{notice_idx}")
	NoticeBean getNoticeInfo(int notice_idx);
	
}
