package day05;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import day05.dao.*;
import day05.vo.*;
public class MemberInfo extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse resp) {
		//酉곕�� 留뚮뱾怨�
		String view = "/day05/memberInfo.jsp";
		
		//�뙆�씪誘명꽣 諛쏄퀬
		String id = req.getParameter("id");
		//�뜲�씠�꽣踰좎씠�뒪 �옉�뾽�븯怨�
		MemberDao mDao = new MemberDao();
		
		//아이디가 몇명이나 있는지 조회해본다.
		int cnt = mDao.getCount(id);
		if(cnt == 0) {
			//이 경우는 다시 아이디를 입력받는 창으로 돌려보내야 한다.
			view = "/TomJerry1/pre/InputForm.cls2";
			try {
				resp.sendRedirect(view);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else {
			//아이디가 존재하는지 실행하는 부분
			MemberVO mVO = mDao.getInfo(id);
			
			//데이터심고
			req.setAttribute("ID", mVO.getId());
			req.setAttribute("NAME", mVO.getName());
			req.setAttribute("TEL", mVO.getTel());
			req.setAttribute("MAIL", mVO.getMail());
			
			//VO 채로 넘겨보자
			req.setAttribute("DATA", mVO);
			
			//酉곕�� 遺�瑜닿퀬
			RequestDispatcher rd = req.getRequestDispatcher(view);
			try {
				rd.forward(req, resp);
			}catch(Exception e) {
				System.out.println("####### �삤瑜� #########");
			}
		}
	}
	
}
