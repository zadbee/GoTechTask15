package controller;

import generator.Questionare;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.w3c.dom.Document;

import document.DocumentBlock;
import xml.XMLGenerator;

public class DownloadJsonAction extends Action {
	@Override
	public String getName() {
		return "downloadJson.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		if (request.getParameter("downloadJson") == null) {
			return "download.jsp";
		}
		
		// Document doc = XMLGenerator.GenerateXMLObject();
		// request.setAttribute("doc", doc);
		Questionare q = Questionare.getInstance();
		String json = q.generateJson();
		request.setAttribute("json", json);
		
		return "json";
	}
}
