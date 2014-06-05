package utility;

public class TagWrapper {
	public static String wrapTag(String tag, String text) {
		StringBuilder sb = new StringBuilder();
		sb.append("<" + tag + ">");
		sb.append(text);
		sb.append("</" + tag + ">");
		return sb.toString();
	}
	
	public static String wrapTagWithClass(String tag, String text, String className) {
		StringBuilder sb = new StringBuilder();
		sb.append("<" + tag + " class=\"" + className + "\">");
		sb.append(text);
		sb.append("</" + tag + ">");
		return sb.toString();
	}
}
