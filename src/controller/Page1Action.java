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
		Questionare q = Questionare.getInstance();
		
		if (request.getParameter("next1") == null) {
			session.setAttribute("opt_phone", q.opt_phone);
			session.setAttribute("opt_website", q.opt_website);
			session.setAttribute("opt_cookie", q.opt_cookie);
			session.setAttribute("opt_doNotTrack", q.opt_doNotTrack);
			session.setAttribute("opt_mail", q.opt_mail);
			return "page1.jsp";
		}		
		
		String[] shared = request.getParameterValues("checkbox");
		if (shared != null) {
			System.out.println("checkbox " + shared.length);
			for (String s : shared)
				q.sharedInfo.add(s);									// sharedInfo
		}
		
		for (int i = 1; i <= 6; i++) {
			if (i != 5 || q.hasAffiliates) {
				q.share[i] = request.getParameter("question" + i) == null ? "null" : request.getParameter("question" + i);	// share
				q.limit[i] = request.getParameter("question" + i + "b") == null ? "null" : request.getParameter("question" + i + "b");	// limit
			}
		}
		
		q.optPhone = request.getParameter("phoneOptOut") == null ? "undefined" : request.getParameter("phoneOptOut");
		q.optWebsite = request.getParameter("websiteOptOut") == null ? "undefined" : request.getParameter("websiteOptOut");
		q.optCookie = request.getParameter("cookieOptOut") == null ? "undefined" : request.getParameter("cookieOptOut");
		q.optDoNotTrack = request.getParameter("doNotTrackOptOut") == null ? "undefined" : request.getParameter("doNotTrackOptOut");
		
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
		
		q.additionalInfo = (request.getParameter("additionalInfo") != null && request.getParameter("additionalInfo").equals("yes"));
		q.additionalInfoType = request.getParameter("optionsRadios") == null ? " " : request.getParameter("optionsRadios");
		
		q.streetAddr = request.getParameter("street") == null ? "undefined" : request.getParameter("street");
		q.city = request.getParameter("city") == null ? "undefined" : request.getParameter("city");
		q.state = request.getParameter("state") == null ? "undefined" : request.getParameter("state");
		q.zipCode = request.getParameter("zip") == null ? "undefined" : request.getParameter("zip");
		
		q.optOnlyOne = (request.getParameter("optionsRadios1") != null && request.getParameter("optionsRadios1").equals("q3Y"));
		q.optOwnMarketing = (request.getParameter("optionsRadios7") != null && request.getParameter("optionsRadios7").equals("q5Y"));
		q.optJointMarketing = (request.getParameter("optionsRadios11") != null && request.getParameter("optionsRadios11").equals("q6Y"));
		
				
		return "page2.jsp";
	}
}
