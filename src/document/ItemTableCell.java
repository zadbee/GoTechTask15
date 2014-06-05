package document;

public class ItemTableCell implements DocumentItem {

	StringBuilder text;
	
	public ItemTableCell() {
		text = new StringBuilder();
	}
	
	public ItemTableCell(String _text) {
		text = new StringBuilder(_text);
	}
	
	public void append(String _text) {
		text.append(_text);
	}
	
	@Override
	public String getText() {
		return text.toString();
	}

}
