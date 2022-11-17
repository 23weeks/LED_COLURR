package kr.co.led.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.led.beans.ProductBean;
import kr.co.led.beans.QuestionBean;
import kr.co.led.beans.UserBean;
import kr.co.led.mapper.AdminMapper;

@Repository
public class AdminDao {

	@Autowired
	private AdminMapper adminMapper;

	// 전체 유저정보
	public List<UserBean> getUserList() {
		return adminMapper.getUserList();
	}

	// 카운트(유저 숫자)
	public int getUserCnt() {
		return adminMapper.getUserCnt();
	}

	public void modifyUserInfo(UserBean adminModifyBean) {
		adminMapper.modifyUserInfo(adminModifyBean);
	}

	public List<ProductBean> getAllProductList() {
		return adminMapper.getAllProductList();
	}
	
	public int getProductCnt() {
		return adminMapper.getProductCnt();
	}
	
	public void modifyProductPrice(ProductBean modifyPriceBean) {
		adminMapper.modifyProductPrice(modifyPriceBean);
	}
	
	public void modifyProductStock(ProductBean modifyStockBean) {
		adminMapper.modifyProductStock(modifyStockBean);
	}

	// 게시글 모두 가져오기
	public List<QuestionBean> getQuestionList(int user_idx, RowBounds rowBounds){
		return adminMapper.getQuestionList(user_idx, rowBounds);
		}
	
	//게시글 하나 가져오기
	public QuestionBean getQuestionInfo(int question_idx) {
		return adminMapper.getQuestionInfo(question_idx);
		}
}