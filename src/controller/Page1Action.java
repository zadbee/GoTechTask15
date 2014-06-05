package controller;

import javax.servlet.http.HttpServletRequest;

public class Page1Action extends Action {
	public String getName() {
		return "page1.do";
	}

	public String perform(HttpServletRequest request) {
		if (request.getParameter("submitButton2") == null)
			return "page1.jsp";
		
		
		return "generate.do";
	}
}
