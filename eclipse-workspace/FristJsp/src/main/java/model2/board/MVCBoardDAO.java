package model2.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import common.DBConnPool;

public class MVCBoardDAO extends DBConnPool {
   
   // 검색 조건에 맞는 게시물의 개수를 반환합니다.
   public int selectCount(Map<String,Object> map) {
      
      int totalCount = 0;
      
      String query = " select count(*) from mvcboard";
      
      if(map.get("searchWord") != null) {
         query += " where " + map.get("searchField")
               + " like '%" + map.get("searchWord") + "%'";
      }
         
      try {
         
         psmt = con.prepareStatement(query);
         rs = psmt.executeQuery();
         
         if(rs.next()) {
            totalCount = rs.getInt(1);
         }
         
      }catch(Exception e) {
         e.printStackTrace();
      }

      return totalCount;
      
   }
   
   // 검색 조건에 맞는 게시물 목록을 반환합니다(페이징 기능 지원).
   public List<MVCBoardDTO> selectListPage(Map<String,Object> map){
      
      List<MVCBoardDTO> board = new ArrayList<>();
      
      String query = " select * "
            + " from ("
            + " select rownum rNum, Tb.*"
            + " from ("
            + " select *"
            + " from mvcboard ";
      
      if(map.get("searchWord") != null) {
         query += " where " + map.get("searchField")
               + " like '%" + map.get("searchWord") + "%'";
      }
            
      query += " order by idx desc"
            + " ) Tb"
            + " )"
            + " where rnum between ? and ? ";

      try {
         
         psmt = con.prepareStatement(query);
         psmt.setString(1, map.get("start").toString());
         psmt.setString(2, map.get("end").toString());
         rs = psmt.executeQuery();
         
         while(rs.next()) {
            
            MVCBoardDTO dto = new MVCBoardDTO();
            
            dto.setIdx(rs.getString("idx"));
                dto.setName(rs.getString("name"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getString("postdate"));
                dto.setOfile(rs.getString("ofile"));
                dto.setSfile(rs.getString("sfile"));
                dto.setDowncount(rs.getInt("downcount"));
                dto.setPass(rs.getString("pass"));
                dto.setVisitcount(rs.getInt("visitcount"));
            
            board.add(dto);
            
         }
         
      }catch(Exception e) {
         e.printStackTrace();
      }
      
      return board;
   }
   
   // 게시글 데이터를 받아 DB에 추가합니다(파일 업로드 지원).
   public int insertWrite(MVCBoardDTO dto) {
        int result = 0;
        try {
            String query = "INSERT INTO mvcboard ( "
                         + " idx, name, title, content, ofile, sfile, pass) "
                         + " VALUES ( "
                         + " seq_board_num.NEXTVAL,?,?,?,?,?,?)";
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getName());
            psmt.setString(2, dto.getTitle());
            psmt.setString(3, dto.getContent());
            psmt.setString(4, dto.getOfile());
            psmt.setString(5, dto.getSfile());
            psmt.setString(6, dto.getPass());
            result = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("게시물 입력 중 예외 발생");
            e.printStackTrace();
        }
        return result;
    }
   
   // 주어진 일련번호에 해당하는 게시물을 DTO에 담아 반환합니다.
   public MVCBoardDTO selectView(String idx) {
      
      MVCBoardDTO dto = new MVCBoardDTO();
      
      String query = " select * from mvcboard where idx = ?";
      
      try {
         
         psmt = con.prepareStatement(query);
            psmt.setString(1, idx);
            rs = psmt.executeQuery();
            
            if(rs.next()) {
               dto.setIdx(rs.getString("idx"));
                dto.setName(rs.getString("name"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getString("postdate"));
                dto.setOfile(rs.getString("ofile"));
                dto.setSfile(rs.getString("sfile"));
                dto.setDowncount(rs.getInt("downcount"));
                dto.setPass(rs.getString("pass"));
                dto.setVisitcount(rs.getInt("visitcount"));
            }
        }
        catch (Exception e) {
            System.out.println("게시물 조회수 증가 중 예외 발생");
            e.printStackTrace();
        }
      
      return dto;
   }
   
   
   // 주어진 일련번호에 해당하는 게시물의 조회수를 1 증가시킵니다.
   public void updateVisitCount(String idx) {
      try {
         String query = " UPDATE mvcboard SET "
                    + " visitcount=visitcount+1 "
                    + " WHERE idx=?"; 
         
         psmt = con.prepareStatement(query);
            psmt.setString(1, idx);
            psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("게시물 조회수 증가 중 예외 발생");
            e.printStackTrace();
        }
   }
   
   // 다운로드 횟수를 1 증가시킵니다.
   public void downCountPlus(String idx) {
	   String sql = " update mvcboard set "
			   + " downcount = downcount + 1 "
			   + " where idx=? ";
	   try {
		   psmt = con.prepareStatement(sql);
		   psmt.setString(1, idx);
		   psmt.executeUpdate();
		   
	   }catch(Exception e) {
		   System.out.println("게시물 조회수 증가 중 예외발생 ");
		   e.printStackTrace();
	   }
   }
   
   // 입력한 비밀번호가 지정한 일련번호의 게시물의 비밀번호와 일치하는지 확인합니다.
   
   // 지정한 일련번호의 게시물을 삭제합니다.
   
   // 게시글 데이터를 받아 DB에 저장되어 있던 내용을 갱신합니다(파일 업로드 지원).
}
