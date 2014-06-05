package utility;

public class BoldWrapper {
	public static String wrap(String text) {
		return TagWrapper.wrapTag("b", text);
	}
}
