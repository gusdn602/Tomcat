package day04;

import java.io.*;

import javax.servlet.http.*;
import day04.dao.*;
public class IdCheck extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse resp) {
		// 비동기 통신의 결과물은 반드시 데이터 여야하고
		// 그 데이터는 서버에서 만들어서 제공해야 한다.
		// 우리는 json 타입으로 통신을 하기로 했으니
		// 해당 요청이 오면 서버에서 json 데이터를 만들어서 응답을 해줘야 할 것이다.
		
		// 할일
		// 1. 데이터(파라미터) 받고
		String id = req.getParameter("id");
		// 2. 데이터 디비처리로 전달하고 결과 받고
		MemberDao mDao = new MemberDao();
		int cnt = mDao.idCount(id);
		// 3. 결과에 따라 응답문서 만들고
		PrintWriter pw = null;
		String result = "";
		try {
			pw = resp.getWriter();
			if(cnt == 0) {
				result = "ok";
			} else {
				result = "no";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		pw.println("{");
		pw.println("	\"result\": \"" + result + "\",");
		pw.println("	\"cnt\": " + cnt );
		pw.println("}");
	}
}
