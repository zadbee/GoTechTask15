package controller;
import generator.Questionare;

import java.util.ArrayList;

import document.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class GeneratePageAction extends Action {

	@Override
	public String getName() {
		return "generate.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		// Questionare q = Questionare.getInstance();
		HttpSession session = request.getSession(true);
		Questionare q = (Questionare) session.getAttribute("q");
		if (q == null)
			q = new Questionare();
		
		ArrayList<DocumentBlock> blocks = q.generateDoc();	
		request.setAttribute("blocks", blocks);
		
		return "generated.jsp";
	}

}
