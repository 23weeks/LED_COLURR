package kr.co.led.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.led.beans.NoticeBean;
import kr.co.led.mapper.NoticeMapper;

@Repository
public class NoticeDao {
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	
	//���ۼ�
		public void addNoticeInfo(NoticeBean writeNoticeBean) {
				noticeMapper.addNoticeInfo(writeNoticeBean);
		}
		
		
		
		
	//�� ��Ϻ���
		public List<NoticeBean> getNoticeList(String notice_type, RowBounds rowBounds) {
			return noticeMapper.getNoticeList(notice_type, rowBounds);
		}

		
		
	//�� �ϳ�����
		public NoticeBean getNoticeInfo(int notice_idx) {
			return noticeMapper.getNoticeInfo(notice_idx);
		}
		
		
		
	//�Խù� �����ϱ�
		public void modifyNoticeInfo(NoticeBean modifyNoticeBean) {
			noticeMapper.modifyNoticeInfo(modifyNoticeBean);
		}
		
		
		
	//�Խù� ����
		public void deleteNoticeInfo(int notice_idx) {
			noticeMapper.deleteNoticeInfo(notice_idx);
		}
		
		
	
	//��ü �Խù� ����
		public int getNoticeCnt(String notice_type) {
			return noticeMapper.getNoticeCnt(notice_type);
		}
		
		
}
