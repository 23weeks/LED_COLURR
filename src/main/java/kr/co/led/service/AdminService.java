package kr.co.led.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import kr.co.led.beans.PageBean;
import kr.co.led.beans.UserBean;
import kr.co.led.dao.AdminDao;

@Service
public class AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Value("${page.listcnt}")
	private int page_listcnt;

    @Value("${page.paginationcnt}")
    private int page_paginationcnt;
	
    //페이지당 번호
	public List<UserBean> getUserList(int page) {
		int start = (page -1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		
		return adminDao.getUserList(rowBounds);
	}
	
	
	//카운트
	public PageBean getUserCnt(int user_idx, int currentPage) {
		int user_cnt = adminDao.getUserCnt(user_idx);
		   
		PageBean pageBean = new PageBean(user_cnt, currentPage, page_listcnt, page_paginationcnt);
		   
	   return pageBean;
		   
	   }
	
	public void modifyUserInfo(UserBean adminModifyBean) {
		
		adminDao.modifyUserInfo(adminModifyBean);
	}
}
