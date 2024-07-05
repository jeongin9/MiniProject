package utils;

import java.io.PrintWriter;



import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

public class JSFunction {
   // location.href = "페이지 경로"
   // history.back() , history.forward()
   
   public static void alertLocation(String msg, String url, JspWriter out) {
      try {
         String script = ""
               + "<script>"
                    + "    alert('" + msg + "');"
                    + "    location.href='" + url + "';"
                    + "</script>";
         
         out.print(script);
         
         
      }catch(Exception e) {
         
      }
   }
   
   public static void alertBack(String msg, JspWriter out) {
        try {
            String script = ""
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    history.back();"
                          + "</script>";
            out.println(script);
        }
        catch (Exception e) {}
    }
   
   public static void alertLocation(HttpServletResponse resp, String msg, String url) {
           System.out.println("alertLocation");
      try {
         
         resp.setContentType("text/html;charset=UTF-8"); //한글 인코딩 
         PrintWriter out = resp.getWriter();
         String script = ""
               + "<script>"
                    + "    alert('" + msg + "');"
                    + "    location.href='" + url + "';"
                    + "</script>";
         
         out.print(script);
         
      }catch(Exception e) {
         
      }
   }
   
   public static void alertBack(HttpServletResponse resp,String msg) {
        try {
           
           resp.setContentType("text/html;charset=UTF-8");
         PrintWriter out = resp.getWriter();
           
            String script = ""
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    history.back();"
                          + "</script>";
            out.println(script);
        }
        catch (Exception e) {}
    }
}








