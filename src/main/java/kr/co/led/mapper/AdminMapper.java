package kr.co.led.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.led.beans.ProductBean;
import kr.co.led.beans.UserBean;

public interface AdminMapper {

	
	//��ü���� ����Ʈ
	@Select("select * "
			+ "from user_table")
	List<UserBean> getUserList(RowBounds rowBounds);
	
	
	//�������� ����
	@Update("update user_table "
			+ "set user_grade = #{user_grade} "
			+ "where user_idx = #{user_idx}")
	void modifyUserInfo(UserBean adminModifyBean);
	
	
	//��ǰ ��ü ����Ʈ
	@Select("select * "
	         + "from product")
	   List<ProductBean> getProductList();
	
	
	//��ǰ ���� ����
	@Update("update product "
			+ "set product_idx = #{product_idx}, product_instock = #{product_idx} "
			+ "where product_idx = #{product_idx}")
	ProductBean modifyProduct(int product_idx);
	
	//ī��Ʈ
	@Select("select count(*) from user_table")
	int getUserCnt(int user_idx);
	
}
