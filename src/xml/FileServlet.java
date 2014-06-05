package xml;

import generator.HTMLGenerator;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;

import document.DocumentBlock;

public class FileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//		Document doc = (Document) request.getAttribute("doc");
//
//        if (doc == null) {
//        	response.sendError(HttpServletResponse.SC_NOT_FOUND);
//        	return;
//        }
//        
//        response.setContentType("application/xml");
//        String fileName = "generated.xml";
//        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
//
//        ServletOutputStream out = response.getOutputStream();
//        
//        try {
//        	// Write the content of XML to output stream of Servlet.
//	        TransformerFactory transformerFactory = TransformerFactory.newInstance();
//			Transformer transformer = transformerFactory.newTransformer();
//			DOMSource source = new DOMSource(doc);
//			StreamResult result = new StreamResult(out);
//	 
//			transformer.transform(source, result);
//        } catch (Exception e) {
//        	e.printStackTrace();
//        }
		
		ArrayList<DocumentBlock> blocks = (ArrayList<DocumentBlock>) request.getAttribute("blocks");
		if (blocks == null) {
        	response.sendError(HttpServletResponse.SC_NOT_FOUND);
        	return;
        }
		String content = HTMLGenerator.generateHTMLFile(blocks);
		
		 response.setContentType("text/html");
		 String fileName = "generated.html";
		 response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
		 
		 ServletOutputStream out = response.getOutputStream();
		 InputStream is = new ByteArrayInputStream(content.getBytes("UTF-8"));
		 BufferedReader rd = new BufferedReader(new InputStreamReader(is));
		 
		 String line = null;
		 while ((line = rd.readLine()) != null) {
			 out.println(line);
		 }
	        
		 rd.close();
	     is.close();
	     out.close();
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	doGet(request, response);
    }
}
