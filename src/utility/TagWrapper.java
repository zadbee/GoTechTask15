package utility;

public class TagWrapper {
	public static String wrapTag(String tag, String text) {
		StringBuilder sb = new StringBuilder();
		sb.append("<" + tag + ">");
		sb.append(text);
		sb.append("<" + tag + "/>");
		return sb.toString();
	}
}
