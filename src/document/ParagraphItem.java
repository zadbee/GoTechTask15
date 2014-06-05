package document;

import utility.TagWrapper;

public class ParagraphItem implements DocumentItem {
	StringBuilder titie;
	StringBuilder text;
	
	public ParagraphItem(String _text) {
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
