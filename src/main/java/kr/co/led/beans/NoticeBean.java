package kr.co.led.beans;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeBean {

	
	private int notice_idx;
	private String notice_type;
	
	@NotBlank
	private String notice_title;
	
	@NotBlank
	private String notice_context;
	
	private MultipartFile upload_file;
	private String notice_img;
	private String admin_id;
	private String notice_date;	
	
	
}

