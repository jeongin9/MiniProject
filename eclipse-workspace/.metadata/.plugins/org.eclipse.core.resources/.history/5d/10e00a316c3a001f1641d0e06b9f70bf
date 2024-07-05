package model2.mvcboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model2.board.MVCBoardDAO;
import model2.board.MVCBoardDTO;


@WebServlet("/mvcboard/view.do")
public class ViewController extends HttpServlet {
   
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      MVCBoardDAO dao = new MVCBoardDAO();
      String idx = req.getParameter("idx");
      
      // 조회수 증가
      dao.updateVisitCount(idx);
      
      // 해당글 조회
      MVCBoardDTO dto = dao.selectView(idx);
      
      dao.close();
      
      dto.setContent(dto.getContent().replaceAll("\r\n", "<br>"));
      
      req.setAttribute("dto", dto);
      
        req.getRequestDispatcher("/MVCBoard/View.jsp").forward(req, resp);
   }

}











