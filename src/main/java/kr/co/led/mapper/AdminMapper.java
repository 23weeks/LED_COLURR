package kr.co.led.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.led.beans.ProductBean;
import kr.co.led.beans.UserBean;

public interface AdminMapper {

	
	//전체유저 리스트
	@Select("select * "
			+ "from user_table")
	List<UserBean> getUserList(RowBounds rowBounds);
	
	
	//유저정보 변경
	@Update("update user_table "
			+ "set user_grade = #{user_grade} "
			+ "where user_idx = #{user_idx}")
	void modifyUserInfo(UserBean adminModifyBean);
	
	
	//상품 전체 리스트
	@Select("select * "
	         + "from product")
	   List<ProductBean> getProductList();
	
	
	//상품 변경 정보
	@Update("update product "
			+ "set product_idx = #{product_idx}, product_instock = #{product_idx} "
			+ "where product_idx = #{product_idx}")
	ProductBean modifyProduct(int product_idx);
	
	//카운트
	@Select("select count(*) from user_table")
	int getUserCnt(int user_idx);
	
}
