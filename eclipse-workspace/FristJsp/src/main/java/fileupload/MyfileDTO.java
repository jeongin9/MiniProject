package fileupload;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MyfileDTO {
	private String idx;
	private String name;   // 작성자 이름
    private String title;  // 제목
    private String cate;   // 카테고리
    private String ofile;  // 원본 파일명
    private String sfile;  // 저장된 파일명
    private String postdate; // 등록 날짜
}
