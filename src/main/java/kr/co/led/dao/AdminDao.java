package kr.co.led.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.led.beans.UserBean;
import kr.co.led.mapper.AdminMapper;

@Repository
public class AdminDao {

	@Autowired
	private AdminMapper adminMapper;
	
	//��ü ��������
	public List<UserBean> getUserList(RowBounds rowBounds){
		return adminMapper.getUserList(rowBounds);
	}
	
	//ī��Ʈ(���� ����)
	public int getUserCnt(int user_idx) {
		return adminMapper.getUserCnt(user_idx);
	}
	
	
	public void modifyUserInfo(UserBean adminModifyBean) {
		adminMapper.modifyUserInfo(adminModifyBean);
	}
}
