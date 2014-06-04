package document;

import java.util.ArrayList;

public class DocumentTable implements DocumentItem {
	
	ItemTableHead head;
	ArrayList<ItemTableRow> rows;
	
	public DocumentTable() {
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
		// TODO Auto-generated method stub
		return null;
	}

}
