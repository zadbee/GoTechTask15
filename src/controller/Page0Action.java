package controller;

import generator.Questionare;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Page0Action extends Action {
	public String getName() {
		return "page0.do";
	}

	public String perform(HttpServletRequest request) {
		String submit = request.getParameter("next0");
		if (submit == null){
			return "page0.jsp";
		}
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(600);
		Questionare q = new Questionare();
		session.setAttribute("q", q);
		
		q.companyName = request.getParameter("name");				// companyName
		session.setAttribute("companyName", q.companyName);
		
		String onlyOne = request.getParameter("optionsRadio2");		
		if(onlyOne.equals("one")) {		
			session.setAttribute("onlyone", true);	
			q.hasPartners = false;
		} else {
			session.setAttribute("onlyone", false);
			q.hasPartners = true;									// hasPartners
		}		
		
		String[] optout = request.getParameterValues("opt-out");
		for (String s : optout) {
			if (s.equals("1")) {
				q.opt_phone = true;
			
				
			}
			if (s.equals("2")) {
		
			q.opt_website = true;
			
			}
			if (s.equals("4")) {
			
			q.opt_mail = true;
			 
			}
			if (s.equals("8")) {
		
			q.opt_cookie = true;
			
			}
			if (s.equals("16")) {
		
			q.opt_doNotTrack = true;
			}
		}															// opt_out_option
		if (q.opt_phone == true) {
			session.setAttribute("opt_phone", q.opt_phone);
		}
		else {
		session.setAttribute("opt_phone", null);
		}
		if (q.opt_website == true) {
			session.setAttribute("opt_website", q.opt_website);
		}
		else {
			session.setAttribute("opt_website", null);
		}
		if (q.opt_mail == true) {
			session.setAttribute("opt_mail", q.opt_mail);
		}
		else {
			session.setAttribute("opt_mail", null);
		}
		if (q.opt_cookie == true) {
			session.setAttribute("opt_cookie", q.opt_cookie);
		}
		else {
			session.setAttribute("opt_cookie", null);
		}
		if (q.opt_doNotTrack == true) {
			session.setAttribute("opt_doNotTrack", q.opt_doNotTrack);
		}
		else {
			session.setAttribute("opt_doNotTrack", null);
		}
		
		if (request.getParameter("optionsRadio").equals("share")){
			q.hasAffiliates = true;									// hasAffiliates
			session.setAttribute("hasAffiliates", true);
		} else {
			q.hasAffiliates = false;
			session.setAttribute("hasAffiliates", false);
		}
		
		return "page1.jsp";
	}
}
