package common;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Person {
	
	// 빈(Bean) 객체 : DTO클래스
	// 반드시 기본형 생성자가 정의 되어있어야한다.
	// 멤버는 private해야한다.
	// getter / setter를 정의한다.
	
	private String name;
	private int age;
		
}
