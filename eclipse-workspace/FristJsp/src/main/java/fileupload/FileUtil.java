package fileupload;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
public class FileUtil {
	// 파일 업로드(multipart/form-data 요청) 처리
    public static MultipartRequest uploadFile(HttpServletRequest req,
            String saveDirectory, int maxPostSize) {
        try {
            // 파일 업로드
            return new MultipartRequest(req, saveDirectory, maxPostSize, "UTF-8");
        }
        catch (Exception e) {
            // 업로드 실패
            e.printStackTrace();
            return null;
        }
    }
    
    
    // 다운로드 할 수 있는 메소드 기능 ( 5가지 가져오기 ) 
    public static void download(HttpServletRequest req, HttpServletResponse resp,
    		String directory, String sfileName, String ofileName) {
    	
    	String sDirectory = req.getServletContext().getRealPath(directory);
    
    
    try {
    	File file = new File (sDirectory,sfileName);
    	InputStream inStream =new FileInputStream(file);
    	
    	// 한글 파일명 깨짐 방지
	    String client = req.getHeader("User-Agent");
	    if (client.indexOf("WOW64") == -1) {  // 익스플로워
	        ofileName = new String(ofileName.getBytes("UTF-8"), "ISO-8859-1");
	    }
	    else {
	        ofileName = new String(ofileName.getBytes("KSC5601"), "ISO-8859-1");
	    }
	    resp.reset();
	    resp.setContentType("application/octet-stream");
	    resp.setHeader("Content-Disposition","attachment; filename=\"" + ofileName + "\"");
	    resp.setHeader("Content-Length","" + file.length());
	    
	    OutputStream outStream =  resp.getOutputStream();
	    
	    byte b[] = new byte[(int)file.length()];
	    int readBuffer = 0;
	    while((readBuffer = inStream.read(b)) > 0){
	    	outStream.write(b,0,readBuffer);
	    }
	    
	    inStream.close();
	    outStream.close();
    	
    }catch(Exception e) {
    	e.printStackTrace();
    	
    	}
    }
}