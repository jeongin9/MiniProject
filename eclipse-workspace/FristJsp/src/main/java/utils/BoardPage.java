package utils;

public class BoardPage {
	public static String pagingStr(int totalCount, int pageSize, int blockPage, int pageNum, String reqUrl) {
			
		String pagingStr = "";
		
		//전체 페이지수 계산
		int totalPages = (int) (Math.ceil(((double) totalCount / pageSize)));
		
		// 이전페이지 블록 바로가기 출력
		// ((현재페이지 -1) / PAGES_PER_BLOCK) * PAGES_PER_BLOCK + 1
		int pageTemp = ((pageNum -1) / blockPage) * blockPage + 1;
		
		if(pageTemp != 1) {
			pagingStr += "<a href='" + reqUrl  + "?pageNum=1'>[첫 페이지]</a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + reqUrl  + "?pageNum=" + (pageTemp - 1)  + "'>[이전 블록]</a>";
		}
		
		// 각 블록에 페이지 번호 출력
		
		int blockCount = 1;
		while( blockPage >= blockCount && pageTemp <= totalPages ) {
			
			if(pageTemp == pageNum) {
				pagingStr += "&nbsp;[" + pageTemp + "]&nbsp;";
			}else {
				pagingStr += "&nbsp;<a href='" + reqUrl  + "?pageNum=" + pageTemp + "'>[" + pageTemp + "]</a>&nbsp;";
			}
		
			pageTemp++;        // 7 8 9 10 11
			blockCount++;      // 2 3 4 5  6
		}
		
		//System.out.println(pageTemp +" : " + totalPages);
		
		// 다음 페이지 블럭 바로가기 출력
		if(pageTemp <= totalPages) {
			pagingStr += "<a href='" + reqUrl  + "?pageNum=" + (pageTemp)  + "'>[다음 블록]</a>";  
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + reqUrl  + "?pageNum=" + totalPages + "'>[마지막 페이지]</a>";
		}
		
		return pagingStr;
	}
}











