package controller;

import javax.servlet.http.HttpServletRequest;

import org.w3c.dom.Document;

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
		
		Document doc = XMLGenerator.GenerateXMLObject();
		request.setAttribute("doc", doc);
		return "file";
	}
}
