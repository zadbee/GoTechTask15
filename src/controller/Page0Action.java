package controller;

import java.util.ArrayList;

import generator.Questionare;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Page0Action extends Action {
	public String getName() {
		return "page0.do";
	}

	public String perform(HttpServletRequest request) {
		String submit = request.getParameter("next");
		if (submit == null){
			return "page0.jsp";
		}
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(600);
		Questionare q = Questionare.getInstance();
		q.companyName = request.getParameter("name");				// companyName
		session.setAttribute("companyName", q.companyName);
		
		String[] optout = request.getParameterValues("opt-out");
		String onlyOne = request.getParameter("optionsRadio2");
		for(int x = 0; x < optout.length; x++){
			if(optout[x].equals("3")){				
				session.setAttribute("isMail", true);
			} else {
				session.setAttribute("isMail",false);
			}		
		}
		
		if(onlyOne == "one"){		
			session.setAttribute("onlyone", true);	
			q.hasPartners = false;
		} else {
			session.setAttribute("onlyone", false);
			q.hasPartners = true;									// hasPartners
		}		
		
		int optInt = 0;
		for (String s : optout)
			optInt += Integer.parseInt(s);
		q.opt_out_option = optInt;									// opt_out_option
		session.setAttribute("opt_out_option", q.opt_out_option);
		
		if (request.getParameter("optionsRadio").equals("share")){
			q.hasAffiliates = true;									// hasAffiliates
			session.setAttribute("hasAffiliates", true);
		}else{
			q.hasAffiliates = false;
			session.setAttribute("hasAffiliates", false);
		}
		
		// Set the attributes for questionare.
		
		return "page1.jsp";
	}
}
