package document;

import java.util.ArrayList;

import utility.TagWrapper;

public class DocumentBlock {
	ArrayList<DocumentItem> items;
	
	public DocumentBlock() {
		items = new ArrayList<DocumentItem>();
	}
	
	public void addItem(DocumentItem _item) {
		items.add(_item);
	}
	
	public String getText() {		
		StringBuilder content = new StringBuilder();
		for (DocumentItem i : items)
			content.append(TagWrapper.wrapTagWithClass("div", i.getText(), "content-row"));
		return TagWrapper.wrapTagWithClass("div", content.toString(), "content-section");
	}
}
