package kr.co.led.beans;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QuestionBean {

	private int question_idx;
	
	//NotNull
	@NotBlank
	private String question_title ;
	
	@NotBlank
	private String  question_content;
	
	private String question_type;
	private MultipartFile upload_file; //첨부이미지 저장(브라우저에서 처리)
	private int user_idx;
	private String writer_name;
	private String question_date;
	private String question_img;


}
