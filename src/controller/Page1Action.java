package controller;

import javax.servlet.http.HttpServletRequest;

public class Page1Action extends Action {
	public String getName() {
		return "page1.do";
	}

	public String perform(HttpServletRequest request) {
		return "page1.jsp";
	}
}
