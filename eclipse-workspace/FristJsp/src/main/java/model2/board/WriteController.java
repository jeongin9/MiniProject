package model2.board;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import fileupload.FileUtil;
import utils.JSFunction;

@WebServlet("/mvcboard/write.do")
public class WriteController extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/MVCBoard/Write.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// request 안에 application 생성 
		// ServletContext application = getServletContext(); 이렇게 해도됨 

		String saveDirectory = req.getServletContext().getRealPath("/Uploads");
		
		ServletContext application = getServletContext();
		int maxPostSize = 1024 * 1000; //(1MB)
		
		
		//MultipartRequest(request,저장할 경로,파일의최대대크기,인코딩,이름정책)
		// 객체를 생성해서 업로드 하는 것을 모듈화 시킬 것 
		
		
		
		// 파일 업로드
        MultipartRequest mr = FileUtil.uploadFile(req, saveDirectory, maxPostSize);
        if (mr == null) {
            // 파일 업로드 실패
            JSFunction.alertLocation(resp, "첨부 파일이 제한 용량을 초과합니다.",
                                     "../mvcboard/write.do");  
            return;
        }
        
		 MVCBoardDTO dto = new MVCBoardDTO();
		 dto.setName(mr.getParameter("name"));
		 dto.setTitle(mr.getParameter("title"));
		 dto.setContent(mr.getParameter("content"));
		 dto.setPass(mr.getParameter("pass"));
		 
		 String fileName = mr.getFilesystemName("ofile");
		 if(fileName != null) {
			// 새로운 파일명 생성
				
				String ext = fileName.substring(fileName.lastIndexOf(".")); //  파일 확장자   .txt
				String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());  // 20240101123456
				String newFileName = now + ext;   // 20240101123456.txt
				
				File oldFile = new File(saveDirectory + File.separator + fileName);
				File newFile = new File(saveDirectory + File.separator + newFileName);
				oldFile.renameTo(newFile);
				
				dto.setOfile(fileName);
				dto.setSfile(newFileName);
		 }
		MVCBoardDAO dao = new MVCBoardDAO();
		int result = dao.insertWrite(dto);
		dao.close();
		
		if(result > 0) {
			resp.sendRedirect("../mvcboard/list.do");
		}else {
			resp.sendRedirect("../mvcboard.write.do");
		}
	}

}











