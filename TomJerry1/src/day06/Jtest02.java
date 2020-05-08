package day06;

import javax.servlet.http.*;

import java.util.ArrayList;

import javax.servlet.*;


public class Jtest02 extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/day06/jstl_test02.jsp";
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("w3-green");
		list.add("w3-light-green");
		list.add("w3-lime");	
		list.add("w3-khaki");
		list.add("w3-yellow");
		list.add("w3-amber");
		list.add("w3-orange");
		list.add("w3-deep-orange");
		list.add("w3-red");
		
		req.setAttribute("LIST", list);
		
		RequestDispatcher rd = req.getRequestDispatcher(view);
		try {
			rd.forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
