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
		
		System.out.println(Questionare.getInstance().opt_out_option);
		
		
		return "generate.do";
	}
}
