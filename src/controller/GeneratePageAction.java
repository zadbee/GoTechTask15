package controller;
import generator.Questionare;

import java.util.ArrayList;

import document.*;

import javax.servlet.http.HttpServletRequest;

public class GeneratePageAction extends Action {

	@Override
	public String getName() {
		return "generate.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		Questionare q = Questionare.getInstance();
		ArrayList<DocumentBlock> blocks = q.generateDoc();	
		request.setAttribute("blocks", blocks);
		
		return "generated.jsp";
	}

}
