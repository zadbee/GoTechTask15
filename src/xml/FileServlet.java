package xml;

import java.io.IOException;

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

public class FileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		Document doc = (Document) request.getAttribute("doc");

        if (doc == null) {
        	response.sendError(HttpServletResponse.SC_NOT_FOUND);
        	return;
        }
        
        response.setContentType("application/xml");
        String fileName = "generated.xml";
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

        ServletOutputStream out = response.getOutputStream();
        
        try {
        	// Write the content of XML to output stream of Servlet.
	        TransformerFactory transformerFactory = TransformerFactory.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(out);
	 
			transformer.transform(source, result);
        } catch (Exception e) {
        	e.printStackTrace();
        }
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	doGet(request, response);
    }
}
