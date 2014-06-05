package document;

import java.util.ArrayList;

import utility.TagWrapper;

public class ItemTableRow implements DocumentItem {
	ArrayList<ItemTableCell> cells;
	
	public ItemTableRow() {
		cells = new ArrayList<ItemTableCell>();
	}
	
	public void addCell(ItemTableCell cell) {
		cells.add(cell);
	}
	
	@Override
	public String getText() {
		StringBuilder sb = new StringBuilder();
		if (cells.size() > 0) {
			sb.append(TagWrapper.wrapTag("td", cells.get(0).getText()));
			for (int i = 1; i < cells.size(); i++)
				sb.append(TagWrapper.wrapTagWithClass("td", cells.get(i).getText(), "centered-td"));
		}
		
		return TagWrapper.wrapTag("tbody", TagWrapper.wrapTag("tr", sb.toString()));
	}

}
