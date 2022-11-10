package kr.co.led.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.led.beans.PageBean;
import kr.co.led.beans.QuestionBean;
import kr.co.led.beans.UserBean;
import kr.co.led.dao.QuestionDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class QuestionService {
	
	@Autowired
	private QuestionDao questionDao;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;  
	
	@Value("${path.upload}")
	private String path_upload;
	
	@Value("${page.listcnt}")
	private int page_listcnt;

    @Value("${page.paginationcnt}")
    private int page_paginationcnt;
	
	private String saveUploadFile(MultipartFile upload_file) {
	      
	      //파일명 추출
		  String file_name = System.currentTimeMillis() + "_" +  
		  FilenameUtils.getBaseName(upload_file.getOriginalFilename()) + "." + 
		  FilenameUtils.getExtension(upload_file.getOriginalFilename()); 
		  
		  
	      //파일을 지정된 경로에 저장
	      try {
	         upload_file.transferTo(new File(path_upload + "/" + file_name));
	      }catch(Exception e) {
	         e.printStackTrace();
	      } 
	      
	      return file_name;
	   }
	   
	   public void addQuestionInfo(QuestionBean writeQuestionBean) {
	      
	      //System.out.println(writeQuestionBean.getQuestion_title());
	      //System.out.println(writeQuestionBean.getQuestion_content());
	      //System.out.println(writeQuestionBean.getUpload_file().getSize());
	      
	      MultipartFile upload_file = writeQuestionBean.getUpload_file();
	      
	      if(upload_file.getSize() > 0) {
	         String file_name = saveUploadFile(upload_file);
	         //System.out.println(file_name);
	         writeQuestionBean.setQuestion_content(file_name);
	         
	      }

	      writeQuestionBean.setUser_idx(loginUserBean.getUser_idx());
	      
	      questionDao.addQuestionInfo(writeQuestionBean);
	      
	   }
	   
	  //페이지 당 번호
	   public List<QuestionBean> getQuestionList(int page){
		   int start = (page -1) * page_listcnt;
		   RowBounds rowBounds = new RowBounds(start, page_listcnt);
		   
		   return questionDao.getQuestionList(rowBounds);
	   }
	   
	   
	   public QuestionBean getQuestionInfo(int question_idx) {
		   
		   
		   
		   return questionDao.getQuestionInfo(question_idx);
	   }
	   
	   public void modifyQuestionInfo(QuestionBean modifyQuestionBean) {
		   //이미지 처리
		   MultipartFile upload_file = modifyQuestionBean.getUpload_file();
	 		if (upload_file.getSize() > 0) { // 예외처리
	 			String file_name = saveUploadFile(upload_file);
	 			// 파일 이름을 넣어줌!
	 			modifyQuestionBean.setQuestion_img(file_name);;
	 		}
	 		
	 		questionDao.modifyQuestionInfo(modifyQuestionBean);
	   }
	   
	   public void deleteQuestionInfo(int question_idx) {
		   questionDao.deleteQuestionInfo(question_idx);
	   }
	   
	   //카운트
	   public PageBean getQuestionCnt(int question_idx, int currentPage) {
		   int question_cnt = questionDao.getQuestionCnt(question_idx);
		   
		   PageBean pageBean = new PageBean(question_cnt, currentPage, page_listcnt, page_paginationcnt);
		   
		   return pageBean;
		   
	   }
	   
	   
	   
	   
	   
	   

	}
	

