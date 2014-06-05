package controller;

import generator.Questionare;

import javax.servlet.http.HttpServletRequest;

public class Page0Action extends Action {
	public String getName() {
		return "page0.do";
	}

	public String perform(HttpServletRequest request) {
		String submit = request.getParameter("next");
		if (submit == null)
			return "page0.jsp";
		
		Questionare q = Questionare.getInstance();
		q.companyName = request.getParameter("name");
		
		String[] optout = request.getParameterValues("opt-out");
		int optInt = 0;
		for (String s : optout)
			optInt += Integer.parseInt(s);
		if (optInt < 1 || optInt > 7) {
			System.out.println("Invalid opt-out option.");
			return "page0.jsp";
		}
		q.opt_out_option = optInt;
		
		if (request.getParameter("optionsRadio").equals("share"))
			q.hasAffiliates = true;
		return "page1.jsp";
	}
}
