package utility;

public class UrlWrapper {
	public static String wrap(String url) {
		StringBuilder sb = new StringBuilder();
		sb.append("<a href=\""+ url +"\">");
		sb.append(url);
		sb.append("</a>");
		return sb.toString();
	}
}
