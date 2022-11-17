package kr.co.led.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.led.beans.ProductBean;
import kr.co.led.beans.QuestionBean;
import kr.co.led.beans.UserBean;

public interface AdminMapper {

   
   //전체유저 리스트
   @Select("select * "
         + "from user_table "
         + "where user_idx != 1")
   List<UserBean> getUserList();
   
   //유저정보 변경
   @Update("update user_table "
         + "set user_grade = #{user_grade} "
         + "where user_idx = #{user_idx}")
   void modifyUserInfo(UserBean adminModifyBean);
   
   //상품 전체 리스트
   @Select("select * "
          + "from product")
   List<ProductBean> getAllProductList();
   
   //카운트
   @Select("select count(*) from user_table")
   int getUserCnt();
   
   @Select("select count(*) from product")
   int getProductCnt();
   
   @Update("update product "
	         + "set product_price = #{product_price} "
	         + "where product_idx = #{product_idx}")
   void modifyProductPrice(ProductBean modifyPriceBean);
   
   @Update("update product "
		   + "set product_instock = #{product_instock} "
		   + "where product_idx = #{product_idx}")
   void modifyProductStock(ProductBean modifyStockBean);
   
 //게시판 모두 가져오기
 	@Select("select question_idx, question_title, ut.user_name as writer_name, to_char(question_date, 'yyyy-mm-dd') as question_date " +
             "from question qt, user_table ut "
             + "where qt.user_idx=ut.user_idx and qt.user_idx = #{user_idx}")
 	List<QuestionBean> getQuestionList(int user_idx, RowBounds rowBounds);
 	
 	//게시판 하나 가져오기
 		@Select("select to_char(qt.question_date, 'yyyy-mm-dd') as question_date, "
 				+ "qt.question_title, qt.question_content "
 				+ "from question qt "
 				+ "where question_idx = #{question_idx}")
 		QuestionBean getQuestionInfo(int question_idx);
 		
 		//카운트 나누기? 
 		@Select("select count(*) from question")
 		int getQuestionCnt(int question_idx);
 		
 	
}