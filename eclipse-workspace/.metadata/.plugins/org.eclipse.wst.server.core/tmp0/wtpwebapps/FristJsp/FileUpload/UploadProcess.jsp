<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.io.File" %>
<%@ page import="fileupload.MyfileDAO"%>
<%@ page import="fileupload.MyfileDTO"%>
<%
	//MultipartRequest(request,저장할 경로,파일의최대대크기,인코딩,이름정책)
	// mvc 1 방식 
	String saveDirectory = application.getRealPath("Uploads");
	int maxPostSize = 1024 * 1000; //(1MB)
	String encoding = "UTF-8";

	try{
		// MultipartRequest객체 생성 => 파일 업로드 실행
		MultipartRequest mr = new MultipartRequest(request,saveDirectory,maxPostSize,encoding);
		
		// 새로운 파일명 생성
		String fileName = mr.getFilesystemName("attachedFile"); // 현재 파일 이름     abc.txt
		String ext = fileName.substring(fileName.lastIndexOf(".")); //  파일 확장자   .txt
		String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());  // 20240101123456
		String newFileName = now + ext;   // 20240101123456.txt
		
		File oldFile = new File(saveDirectory + File.separator + fileName);
		File newFile = new File(saveDirectory + File.separator + newFileName);
		oldFile.renameTo(newFile);

		String name = mr.getParameter("name");
		String title = mr.getParameter("title");
		String[] cateArray = mr.getParameterValues("cate");
		
		StringBuffer cateBuf = new StringBuffer();
		
		if(cateArray == null){
			cateBuf.append("선택 없음");
		}else{
			for(String s : cateArray){
				cateBuf.append(s + ",");
			}
		}
		
		MyfileDTO dto = new MyfileDTO();
		dto.setName(name);
		dto.setTitle(title);
		dto.setCate(cateBuf.toString());
		dto.setOfile(fileName);
		dto.setSfile(newFileName);
		
		MyfileDAO dao = new MyfileDAO();
		int result = dao.insertFile(dto);
		dao.close();
		
		response.sendRedirect("FileList.jsp");
		
	}catch(Exception e){
		e.printStackTrace();
	    request.getRequestDispatcher("FileUploadMain.jsp").forward(request, response);
	}
	
	
%>







