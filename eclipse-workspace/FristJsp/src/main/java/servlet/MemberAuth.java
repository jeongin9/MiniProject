package servlet;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import membership.MemberDAO;
import membership.MemberDTO;


@WebServlet("/Servlet/MemberAuth.mvc")
public class MemberAuth extends HttpServlet {
	
	MemberDAO dao;
	
	public void init() throws ServletException {
		ServletContext application = this.getServletContext();
		
		String driver = application.getInitParameter("OracleDriver");
		String url = application.getInitParameter("OracleURL");
	    String id = application.getInitParameter("OracleId");
	    String pwd = application.getInitParameter("OraclePwd");
	    
	    dao = new MemberDAO(driver,url,id,pwd);
	}

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println(request.getServletPath());
		
		String admin_id = "nakja";
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		
		MemberDTO memberDTO = dao.getMemberDTO(id, pass);
		
		String memberName = memberDTO.getName();
		
		if(memberName != null) {
			req.setAttribute("authMessage", memberName + "회원님 방가방가");
		}else {
			if(admin_id.equals(id)) {
				req.setAttribute("authMessage", admin_id + "는 최고 관리자 입니다");
			}else {
				req.setAttribute("authMessage", "비회원 입니다.");
			}
		}
		
		// http://localhost:9999/FristJsp
		// /Servlet/MemberAuth.jsp
		// ./MemberAuth.jsp
		req.getRequestDispatcher("/Servlet/MemberAuth.jsp").forward(req, resp);
	}
	

	public void destroy() {
		dao.close();
	}


}





