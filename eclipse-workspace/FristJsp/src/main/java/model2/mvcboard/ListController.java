package model2.mvcboard;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model2.board.MVCBoardDAO;
import model2.board.MVCBoardDTO;
import utils.BoardPage;


@WebServlet("/mvcboard/list.do")
public class ListController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MVCBoardDAO dao = new MVCBoardDAO();
		
		Map<String , Object> param = new HashMap<>();
		
		String searchField = req.getParameter("searchField");
		String searchWord = req.getParameter("searchWord");
		
		if (searchWord != null){
			param.put("searchField",searchField);
			param.put("searchWord",searchWord);
		}
		
		int totalCount = dao.selectCount(param); // 게시물 전체 개수
		
		ServletContext application = getServletContext();
		int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
		int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
		
		
		int pageNum = 1;
		String pageTemp = req.getParameter("pageNum"); // 페이지 넘버를 받는 곳 
		if(pageTemp != null && !pageTemp.equals("")){
			pageNum = Integer.parseInt(pageTemp);
		}
		
		// (현재페이지 - 1) * POSTS_PER_PAGE + 1
		int start = (pageNum - 1) * pageSize + 1;
		// 현재페이지 * POSTS_PER_PAGE
		int end = pageNum * pageSize;
		
		param.put("start",start);
		param.put("end",end);
		
		List<MVCBoardDTO> boardLists = dao.selectListPage(param);
		dao.close();
		
		String pagingImg = BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "../mvcboard/list.do");
		
		param.put("pagingImg", pagingImg);
		param.put("totalCount", totalCount);
		param.put("pageSize", pageSize);
		param.put("pageNum", pageNum);
		
		req.setAttribute("boardLists", boardLists);
		req.setAttribute("map",param);
		
		
		
		// http://localhost:9999/FristJsp
		req.getRequestDispatcher("/MVCBoard/List.jsp").forward(req, resp);

	}

}











