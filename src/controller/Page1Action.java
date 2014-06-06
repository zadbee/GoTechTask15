package controller;

import generator.Questionare;

import javax.servlet.http.HttpServletRequest;

public class Page1Action extends Action {
	public String getName() {
		return "page1.do";
	}

	public String perform(HttpServletRequest request) {
		if (request.getParameter("submitButton2") == null)
			return "page1.jsp";
		
		Questionare q = Questionare.getInstance();
		q.share.add("yes");
		q.limit.add("yes");
		for (int i = 1; i <= 6; i++) {
			q.share.add(request.getParameter("question" + i));
			q.limit.add(request.getParameter("question" + i + "b"));
		}
		
		q.days = Integer.parseInt(request.getParameter(""));
		
		
		return "generate.do";
	}
}
