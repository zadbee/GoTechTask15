package document;

import java.util.ArrayList;

import utility.TagWrapper;

public class ItemTableHead implements DocumentItem {
	ArrayList<ItemTableCell> cells;
	
	public ItemTableHead() {
		cells = new ArrayList<ItemTableCell>();
	}
	
	public void addCell(ItemTableCell cell) {
		cells.add(cell);
	}
	
	@Override
	public String getText() {
		StringBuilder sb = new StringBuilder();
		for (ItemTableCell c : cells)
			sb.append(TagWrapper.wrapTag("th", c.getText()));
		
		return TagWrapper.wrapTag("thead", TagWrapper.wrapTag("tr", sb.toString()));
	}

}
