package controller;

import generator.Questionare;
import generator.Questionare.Definition;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Page2Action extends Action {
	public String getName() {
		return "page2.do";
	}

	public String perform(HttpServletRequest request) {
		String submit = request.getParameter("next");
		HttpSession session = request.getSession(true);
		
		if (submit == null){
			session.setAttribute("onlyone", false);
			session.setAttribute("param1", true);
			session.setAttribute("param2", true);
			session.setAttribute("param3", true);
			return "page2.jsp";
		}
		Questionare q = Questionare.getInstance();
		//String requiredQ1 = request.getParameter("question1");
		/*q.requiredQ1 = requiredQ1;
		//Miss the second question
		String methods = request.getParameter("locs");
	
		String requiredQ3 = request.getParameter("question3");
		q.requiredQ1 = requiredQ3;
		String requiredQ4 = request.getParameter("radios");
		if(requiredQ4.equals("radio1")){
			requiredQ4 = "Your choices will apply to everyone on your account.";
			q.requiredQ4 = requiredQ4;
		}else{
			requiredQ4 = "Your choices will apply to everyone on your account-unless you tell us otherwise.";
			q.requiredQ4 = requiredQ4;
		}
		String r1 = request.getParameter("r1");
		if(r1.equals("1")){
			StringBuilder sb = new StringBuilder();
			String s1 = request.getParameter("question5_1");
			if(s1 != null){
				sb.append("Financial companies: ").append(s1).append("~");
			}
			String s2 = request.getParameter("question5_2");
			if(s2 != null){
				sb.append("Nonfinancial companies: ").append(s2).append("~");
			}
			String s3 = request.getParameter("question5_3");
			if(s3 != null){
				sb.append("Nonfinancial companies: ").append(s3);
			}
			Definition def = new Definition("Affiliates", sb.toString());
			q.definitions.add(def);
		}
		String question6 = request.getParameter("question6");
		if(question6 != null){
			Definition def = new Definition("Nonaffiliates", question6);
			q.definitions.add(def);
		}
		String question7 = request.getParameter("question7");
		if(question7 != null){
			Definition def = new Definition("Joint Marketing", question7);
			q.definitions.add(def);
		}
		String question8 = request.getParameter("question8");
		if(question8 != null){
			q.collectedTypes.add(question8);
		}*/
		
		// Set the attributes for questionare.
		q.partners = request.getParameter("question0") == null ? "undefined" : request.getParameter("question0");
		q.howToProtect = request.getParameter("question1") == null ? "undefined" : request.getParameter("question1");
		q.collectedTypes.add("type1");
		q.collectedTypes.add("type2");
		q.collectedTypes.add("type3");
		q.collectedTypes.add("type4");
		q.collectedTypes.add("type5");
		q.whyNotLimitAll = request.getParameter("question3") == null ? "undefined" : request.getParameter("question3");
		q.applyToAnyOne = (request.getParameter("radios") == null || request.getParameter("radios").equals("radio1")) ? true : false;
		q.aff_Financial = request.getParameter("question5_1") == null ? "undefined" : request.getParameter("question5_1");
		q.aff_Nonfinancial = request.getParameter("question5_2") == null ? "undefined" : request.getParameter("question5_2");
		q.aff_Others = request.getParameter("question5_3") == null ? "undefined" : request.getParameter("question5_3");
		q.nonAff = request.getParameter("question6") == null ? "undefined" : request.getParameter("question6");
		q.jointPartners = request.getParameter("question7") == null ? "undefined" : request.getParameter("question7");
		q.otherInfo = request.getParameter("question8") == null ? "undefined" : request.getParameter("question8");
		
		
		return "generated.jsp";
	}
}
