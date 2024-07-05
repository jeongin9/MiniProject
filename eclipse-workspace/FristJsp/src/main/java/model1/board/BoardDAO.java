package model1.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import common.JDBConnect;
import model1.replay.ReplyDTO;

public class BoardDAO extends JDBConnect{

	public BoardDAO(ServletContext application) {
		super(application);
	}

	// 검색 조건에 맞는 게시물의 개수를 반환합니다.
	public int selectCount(Map<String , Object> map) {
		
		int totalCount = 0;
		
		String query = " select count(*) from board ";
		if(map.get("searchWord") != null) {
			query += " where " + map.get("searchField")
					+ " like '%" + map.get("searchWord") + "%'";
					
			//where title like '%제목%';
		}
		
		try {
			
			psmt = con.prepareStatement(query);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				totalCount = rs.getInt(1);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return totalCount;
	}
	
	// 검색 조건에 맞는 게시물 목록을 반환합니다.
	public List<BoardDTO> selectList(Map<String , Object> map) {
		
		List<BoardDTO> bbs = new ArrayList<>();
		
		String query = " select * from board ";
		
		if(map.get("searchWord") != null) {
			query += " where " + map.get("searchField")
					+ " like '%" + map.get("searchWord") + "%'";
		}
		
		query += " order by num desc ";
		
		
		try {
			
			psmt = con.prepareStatement(query);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id")); 
				dto.setVisitcount(rs.getString("visitcount"));
				
				bbs.add(dto);
			}
			
	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return bbs;
	}
	
	// 검색 조건에 맞는 게시물 목록을 반환합니다(페이징 기능 지원).
	public List<BoardDTO> selectListPage(Map<String , Object> map) {
		
		List<BoardDTO> bbs = new ArrayList<>();
		
		String query = " select * "
				+ " from ("
				+ " select rownum rNum, Tb.*"
				+ " from ("
				+ " select *"
				+ " from board ";
		
		if(map.get("searchWord") != null) {
			query += " where " + map.get("searchField")
					+ " like '%" + map.get("searchWord") + "%'";
		}
				
		query += " order by num desc"
				+ " ) Tb"
				+ " )"
				+ " where rnum between ? and ? ";
			
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1,map.get("start").toString());
			psmt.setString(2,map.get("end").toString());
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id")); 
				dto.setVisitcount(rs.getString("visitcount"));
				
				bbs.add(dto);
			}

	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return bbs;
	}
	
	// 게시글 데이터를 받아 DB에 추가합니다.
	public int insertWrite(BoardDTO dto) {
		
		int result = 0;
		
		String query = " insert into board "
				+ " (num,title,content,id,visitcount) "
				+ " values (seq_board_num.nextval,?,?,?,0) ";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			
			result = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;	
	}
	
	// 지정한 게시물을 찾아 내용을 반환합니다.
	public BoardDTO selectView(String num) {
		
		BoardDTO dto = new BoardDTO();
		
		String query = " select B.*,M.name "
				+ " from member M inner join board B "
				+ " on M.id = B.id "
				+ " where num = ?";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				
				dto.setNum(rs.getString(1)); 
                dto.setTitle(rs.getString(2));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getDate("postdate"));
                dto.setId(rs.getString("id"));
                dto.setVisitcount(rs.getString(6));
                dto.setName(rs.getString("name")); 
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	// 지정한 게시물의 조회수를 1 증가시킵니다.
	public void updateVisitCount(String num) {
		
		String query = " update board "
				+ " set visitcount = visitcount + 1 "
				+ " where num = ?";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1,num);
			psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 지정한 게시물을 수정합니다.
	public int updateEdit(BoardDTO dto) {
		
		int result = 0;
		
		String query = " update board "
				+ " set title = ? , content = ?"
				+ " where num = ?";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getNum());
			
			result = psmt.executeUpdate();
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 지정한 게시물을 삭제합니다.
	public int deletePost(BoardDTO dto) {
		
		int result = 0;
		
		String query = " delete from board where num = ?";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getNum());
			
			result = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}

}




















