package controller;

import generator.Questionare;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.w3c.dom.Document;

import document.DocumentBlock;
import xml.XMLGenerator;

public class DownloadAction extends Action {
	@Override
	public String getName() {
		return "download.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		if (request.getParameter("download") == null) {
			return "download.jsp";
		}
		
		// Document doc = XMLGenerator.GenerateXMLObject();
		// request.setAttribute("doc", doc);
		Questionare q = Questionare.getInstance();
		ArrayList<DocumentBlock> blocks = q.generateDoc();	
		request.setAttribute("blocks", blocks);
		
		return "file";
	}
}
