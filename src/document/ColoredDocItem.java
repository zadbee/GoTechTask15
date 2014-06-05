package document;

import java.util.ArrayList;

import utility.TagWrapper;

public class ColoredDocItem implements DocumentItem {
	String head;
	ArrayList<DocumentItem> contents;
	
	public ColoredDocItem() {
		head = "Undefined";
		contents = new ArrayList<DocumentItem>();
	}
	
	public void setHead(String s) {
		head = s;
	}
	
	public void addItem(DocumentItem _item) {
		contents.add(_item);
	}

	@Override
	public String getText() {
		StringBuilder sb = new StringBuilder();
		sb.append(TagWrapper.wrapTagWithClass("td", head, "cpn-heading"));
		
		StringBuilder content = new StringBuilder();
		for (DocumentItem i : contents)
			content.append(i.getText());
		sb.append(TagWrapper.wrapTagWithClass("td", content.toString(), "cpn-details"));
		
		return TagWrapper.wrapTag("table", TagWrapper.wrapTag("tr", sb.toString()));
	}

}
