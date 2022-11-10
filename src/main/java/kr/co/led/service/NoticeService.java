package kr.co.led.service;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.led.beans.NoticeBean;
import kr.co.led.dao.NoticeDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class NoticeService {

	
	@Autowired
	private NoticeDao noticeDao;
	
	
	//ï¿½ì” èª˜ëª„ï¿? å¯ƒìˆì¤? ï¿½ë¾½æ¿¡ì’•ë±? 
	@Value("${path.upload}")
	private String path_upload;
	
	
	//ï¿½ë™†ï¿½ì”ªï§ï¿½ ?º?ˆˆ?” æ¹²ï¿½
	private String saveUploadFile(MultipartFile upload_file) {
		
		String file_name = System.currentTimeMillis() + "_" +  					
				FilenameUtils.getBaseName(upload_file.getOriginalFilename()) + "." +	
				FilenameUtils.getExtension(upload_file.getOriginalFilename());		
		
		try {
			upload_file.transferTo(new File(path_upload + "/" + file_name));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
		
	}
	
	
	//æ¹²ï¿½ï¿½ë²æ¹²ï¿½
	public void addNoticeInfo(NoticeBean writeNoticeBean) {
		
		MultipartFile upload_file=writeNoticeBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {
			String file_name=saveUploadFile(upload_file);
			writeNoticeBean.setNotice_img(file_name);
		}
		
		noticeDao.addNoticeInfo(writeNoticeBean);
	}
	
	
	//æ¹²ï¿½ ï§â‘¸ì¤‰è¹‚?‹¿ë¦?
	public List<NoticeBean> getNoticeList() {
		return noticeDao.getNoticeList();
	}
	
	
	//æ¹²ï¿½ ï¿½ë¸¯ï¿½êµ¹è¹‚ë‹¿ë¦?
	public NoticeBean getNoticeInfo(int notice_idx) {
		return noticeDao.getNoticeInfo(notice_idx);
	}
			
		
}