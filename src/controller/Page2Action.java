package controller;

import javax.servlet.http.HttpServletRequest;

public class Page2Action extends Action {
	public String getName() {
		return "page2.do";
	}

	public String perform(HttpServletRequest request) {
		return "page2.jsp";
	}
}
