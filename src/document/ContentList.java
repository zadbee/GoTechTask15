package document;

import java.util.ArrayList;

import utility.TagWrapper;

public class ContentList implements DocumentItem {
	ArrayList<String> items;
	
	public ContentList() {
		items = new ArrayList<String>();
	}
	
	public void addItem(String _item) {
		items.add(_item);
	}
	
	@Override
	public String getText() {		
		StringBuilder content = new StringBuilder();
		for (String i : items)
			content.append(TagWrapper.wrapTag("li", i));
		
		return TagWrapper.wrapTag("ul", content.toString());
	}

}
