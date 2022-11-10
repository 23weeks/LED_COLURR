package kr.co.led.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.led.beans.NoticeBean;
import kr.co.led.mapper.NoticeMapper;

@Repository
public class NoticeDao {
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	
	//湲��옉�꽦
		public void addNoticeInfo(NoticeBean writeNoticeBean) {
			noticeMapper.addNoticeInfo(writeNoticeBean);
		}
		
		
		
	//게시?�� 리스?��
		public List<NoticeBean> getNoticeList() {
			return noticeMapper.getNoticeList();
		}

		
		
	//게시?�� ?��?��?���?
		public NoticeBean getNoticeInfo(int notice_idx) {
			return noticeMapper.getNoticeInfo(notice_idx);
		}
		
		
}
