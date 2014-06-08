package controller;

import generator.Questionare;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.json.simple.parser.ParseException;

public class UploadAction extends Action {
	public String getName() {
		return "upload.do";
	}

	public String perform(HttpServletRequest request) {
		if (request.getParameter("upload") == null) {
			return "upload.jsp";
		}
		
		// String description = request.getParameter("description"); // Retrieves <input type="text" name="description">
	    Part filePart;
	    String fileName = "";
		try {
			filePart = request.getPart("file");
			fileName = getFilename(filePart);
		    BufferedReader br = new BufferedReader(new InputStreamReader(filePart.getInputStream()));
		    StringBuilder sb = new StringBuilder();
		    String line = null;
		    while ((line = br.readLine()) != null) {
		    	System.out.println(line);
		    	sb.append(line);
		    }
		    Questionare q = Questionare.getInstance();
		    try {
				q.populate(sb.toString());
			} catch (ParseException e) {
				e.printStackTrace();
				request.setAttribute("message", "The file is corrupted, fail to upload " + fileName);
				return "upload.jsp";
			}
		    br.close();
		} catch (IllegalStateException | IOException | ServletException e) {
			e.printStackTrace();
		}
	    
		request.setAttribute("message", fileName + " has been successfully uploaded.");
		return "upload.jsp";
	}
	
	private static String getFilename(Part part) {
	    for (String cd : part.getHeader("content-disposition").split(";")) {
	        if (cd.trim().startsWith("filename")) {
	            String filename = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	            return filename.substring(filename.lastIndexOf('/') + 1).substring(filename.lastIndexOf('\\') + 1); // MSIE fix.
	        }
	    }
	    return null;
	}
}