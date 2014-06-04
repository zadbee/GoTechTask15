package controller;

import javax.servlet.http.HttpServletRequest;

public class GeneratePageAction extends Action {

	@Override
	public String getName() {
		return "generate.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return "generated.jsp";
	}

}
