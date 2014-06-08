package controller;

import generator.Questionare;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Page2Action extends Action {
	public String getName() {
		return "page2.do";
	}

	public String perform(HttpServletRequest request) {
		String submit = request.getParameter("next2");
		HttpSession session = request.getSession(true);
		// Questionare q = Questionare.getInstance();
		Questionare q = (Questionare) session.getAttribute("q");
		if (q == null)
			q = new Questionare();
		
		boolean param1 = q.share[3].equals("Yes") | q.share[4].equals("Yes") | q.share[5].equals("Yes");
		boolean param2 = q.share[6].equals("Yes");
		boolean param3 = q.share[2].equals("Yes");
		
		if (submit == null){
			session.setAttribute("onlyone", !q.hasPartners);
			session.setAttribute("param1", param1);
			session.setAttribute("param2", param2);
			session.setAttribute("param3", param3);
			return "page2.jsp";
		}		
		
		// Set the attributes for questionare.
		q.partners = request.getParameter("question0") == null ? "undefined" : request.getParameter("question0");
		q.howToProtect = request.getParameter("question1") == null ? "undefined" : request.getParameter("question1");
		
		String[] types = request.getParameterValues("mylocs");
		for (int i = 0; i < types.length; i ++) {
			q.collectedTypes.add(types[i]);		
		}
		
		q.stateLaw = !(request.getParameter("refer") == null || request.getParameter("refer").equals("no"));
		q.lawDescription = request.getParameter("tld") == null ? "undefined" : request.getParameter("tld");
		q.collectFromAffiliates = !(request.getParameter("collect") == null || request.getParameter("collect").equals("no"));
		q.collectFromOthers = !(request.getParameter("collect2") == null || request.getParameter("collect2").equals("no"));
		q.applyToAnyOne = (request.getParameter("radios") == null || request.getParameter("radios").equals("radio1"));
		q.aff_Financial = request.getParameter("question5_1") == null ? "undefined" : request.getParameter("question5_1");
		q.aff_Nonfinancial = request.getParameter("question5_2") == null ? "undefined" : request.getParameter("question5_2");
		q.aff_Others = request.getParameter("question5_3") == null ? "undefined" : request.getParameter("question5_3");
		q.nonAff = request.getParameter("question6") == null ? "undefined" : request.getParameter("question6");
		q.jointPartners = request.getParameter("question7") == null ? "undefined" : request.getParameter("question7");
		q.otherInfo = request.getParameter("question8") == null ? "undefined" : request.getParameter("question8");
		
		return "generate.do";
	}
}
