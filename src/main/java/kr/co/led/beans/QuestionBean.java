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
	private int user_idx;
	private String user_name;
	private String question_date;


}
