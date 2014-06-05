package document;

import java.util.ArrayList;

import utility.TagWrapper;

public class TableItem implements DocumentItem {
	
	ItemTableHead head;
	ArrayList<ItemTableRow> rows;
	
	public TableItem() {
		head = null;
		rows = new ArrayList<ItemTableRow>();
	}
	
	public void setHead(ItemTableHead _head) {
		head = _head;
	}
	
	public void addRow(ItemTableRow _row) {
		rows.add(_row);
	}
	
	@Override
	public String getText() {
		StringBuilder sb = new StringBuilder();
		if (head != null)
			sb.append(head.getText());
		for (ItemTableRow r : rows)
			sb.append(r.getText());
		return TagWrapper.wrapTag("table", sb.toString());
	}

}
