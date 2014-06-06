package controller;

import generator.Questionare;

import javax.servlet.http.HttpServletRequest;

public class Page2Action extends Action {
	public String getName() {
		return "page2.do";
	}

	public String perform(HttpServletRequest request) {
		String submit = request.getParameter("next");
		if (submit == null){
			return "page2.jsp";
		}
		Questionare q = Questionare.getInstance();
		String question1 = request.getParameter("question1");
		//Miss the second question
		String question2 = request.getParameter("question2");
		String question3 = request.getParameter("radios");
		if(question3.equals("radio1")){
			question3 = "Your choices will apply to everyone on your account.";
		}else{
			question3 = "Your choices will apply to everyone on your account-unless you tell us otherwise.";
		}
		String r1 = request.getParameter("r1");
		if(r1.equals("1")){
			String s1 = request.getParameter("question4_1");
			String s2 = request.getParameter("question4_2");
			String s3 = request.getParameter("question4_3");
		}
		String question5 = request.getParameter("question5");
		String question6 = request.getParameter("question6");
		String question7 = request.getParameter("question7");
		return "generated.jsp";
	}
}
