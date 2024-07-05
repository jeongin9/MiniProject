package model1.replay;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import common.JDBConnect;
import model1.board.BoardDTO;

public class ReplyDAO extends JDBConnect{

	public ReplyDAO(ServletContext application) {
		super(application);
	}

	// 댓글 조회
	public List<ReplyDTO> selectReply(String num){
		
		List<ReplyDTO> replybbs = new ArrayList<>();
		
		String query = " select replyno,replycomment,r.id,r.regidate,r.num "
				+ " from reply r inner join board b"
				+ " on r.num = b.num"
				+ " where r.num = ?"
				+ " order by replyno asc ";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				ReplyDTO dto = new ReplyDTO();
				
				dto.setReplyno(rs.getString(1));
				dto.setReplycomment(rs.getString(2));
				dto.setId(rs.getString(3));
				dto.setRegidate(rs.getString(4));
				dto.setNum(rs.getString(5));
				
				replybbs.add(dto);
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return replybbs;
		
	}
	
	
	public int insertReply(ReplyDTO dto) {
		
		int result = 0;
		
		String query = " insert into reply "
				+ " (replyno,replycomment,id,num) "
				+ " values (seq_board_num.nextval,?,?,?) ";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getReplycomment());
			psmt.setString(2, dto.getId());
			psmt.setString(3, dto.getNum());
			
			result = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;	
	}
	
}
