package controller;

import generator.Questionare;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Page1Action extends Action {
	public String getName() {
		return "page1.do";
	}

	public String perform(HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		
		if (request.getParameter("submitButton2") == null) {
			session.setAttribute("hasAffiliates", true);
			session.setAttribute("isMail", true);
			return "page1.jsp";
		}
		
		Questionare q = Questionare.getInstance();
		String[] shared = request.getParameterValues("checkbox");
		if (shared != null) {
			for (String s : shared)
				q.sharedInfo.add(s);									// sharedInfo
		}
		
		q.share.add("yes");
		q.limit.add("yes");
		for (int i = 1; i <= 6; i++) {
			q.share.add(request.getParameter("question" + i));			// share
			q.limit.add(request.getParameter("question" + i + "b"));	// limit
		}
		
		q.days = Integer.parseInt(request.getParameter("numOfDays"));	// days
		q.lastRevisedDate = request.getParameter("newDate");			// lastRevisedDate
		String[] contact = request.getParameterValues("contactMethod");
		if (contact != null) {
			for (String c : contact) {
				if (c.equals("phone")) {
					q.providePhone = true;								// contactPhone & providePhone
					q.contactPhone = request.getParameter("phoneText");
				} else if (c.equals("website")) {
					q.provideWebsite = true;							// contactWebsite & provideWebsite
					q.contactWebsite = request.getParameter("websiteText");
				}
			}
		}
		
		return "generate.do";
	}
}
