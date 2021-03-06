package document;

import utility.TagWrapper;

public class ContentParagraph implements DocumentItem {

	StringBuilder text;
	
	public ContentParagraph() {
		text = new StringBuilder();
	}
	
	public ContentParagraph(String _text) {
		text = new StringBuilder(_text);
	}
	
	public void append(String _text) {
		text.append(_text);
	}
	
	@Override
	public String getText() {
		return TagWrapper.wrapTag("p", text.toString());
	}

}
