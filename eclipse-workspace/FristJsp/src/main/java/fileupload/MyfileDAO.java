package fileupload;

import java.util.ArrayList;
import java.util.List;

import common.DBConnPool;

public class MyfileDAO extends DBConnPool{

	// 새로운 게시물을 입력합니다.
	public int insertFile(MyfileDTO dto) {
		
		int result = 0;
		
		String query = " insert into myfile"
				+ " (idx,name,title,cate,ofile,sfile)"
				+ " values (seq_board_num.nextval,?,?,?,?,?)";
			
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTitle());
            psmt.setString(3, dto.getCate());
            psmt.setString(4, dto.getOfile());
            psmt.setString(5, dto.getSfile());
            
            result = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 파일 목록을 반환합니다.
	public List<MyfileDTO> myFileList() {
		
		List<MyfileDTO> fileList = new ArrayList<>();
		
		String query = " select * from myfile order by idx desc";
			
		try {
			
			psmt = con.prepareStatement(query);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				MyfileDTO dto = new MyfileDTO();
				
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
                dto.setTitle(rs.getString(3));
                dto.setCate(rs.getString(4));
                dto.setOfile(rs.getString(5));
                dto.setSfile(rs.getString(6));
                dto.setPostdate(rs.getString(7));
                
                fileList.add(dto);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return fileList;
    }
	
}











