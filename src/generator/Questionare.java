package generator;

import java.util.ArrayList;

import utility.BoldWrapper;
import document.*;

public class Questionare {
	private static Questionare instance;
	private static final String[] reasons = {
		BoldWrapper.wrap("For our everyday business purpose - ") + "such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus", 
		BoldWrapper.wrap("For our marketing purposes - ") + "to offer our products and services to you",
		BoldWrapper.wrap("For joint marketing with other financial companies"),
		BoldWrapper.wrap("For our affiliates' everyday business purposes - ") + "information about your transactions and experiences",
		BoldWrapper.wrap("For our affiliates' everyday business purposes - ") + "information about your creditworthiness",
		BoldWrapper.wrap("For our affiliates to market to you"),
		BoldWrapper.wrap("For our affiliates to market to you")
	};
	
	// ==== Pre Problems ====
	String companyName = "Bank of America";
	String opt_out_option;
	
	// ==== Page 1 ====
	String lastRevised;
	ArrayList<String> infotypes;
	String[] share;
	String[] limit;
	
	// ==== Page 2 ====
	String phone;
	String website;
	ArrayList<Definition> definitions;
	ArrayList<String> infos;
	
	private Questionare() {
		
	}
	
	public static Questionare getInstance() {
		if (instance == null)
			instance = new Questionare();
		return instance;
	}
	
	public ArrayList<DocumentBlock> generateDoc() {
		ArrayList<DocumentBlock> blocks = new ArrayList<DocumentBlock>();
		
		// ==== Page 1 ====
		DocumentBlock block = new DocumentBlock();
		ColoredDocItem cItem = new ColoredDocItem();
		cItem.setHead("FACTS");
		cItem.addItem(new ContentParagraph("WHAT DOES " + companyName + " DO WITH YOUR PERSONAL INFORMATION?"));
		block.addItem(cItem); // FACTS
		cItem = new ColoredDocItem();
		cItem.setHead("Why?");
		cItem.addItem(new ContentParagraph("Financial companies choose how they share your personal information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do."));
		block.addItem(cItem); // Why
		cItem = new ColoredDocItem();
		cItem.setHead("What?");
		cItem.addItem(new ContentParagraph("The types of personal information we collect and share depend on the product or service you have with us. This information can include:"));
		ContentList list = new ContentList();
		list.addItem("Social Security Number");
		cItem.addItem(list);
		block.addItem(cItem); // What
		cItem = new ColoredDocItem();
		cItem.setHead("How?");
		cItem.addItem(new ContentParagraph("All financial companies need to share customers' personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customers' personal information; the reasons " + companyName + " chooses to share; and whether you can limit this sharing."));
		block.addItem(cItem); // How
		blocks.add(block);
		
		DocumentBlock tableBlock = new DocumentBlock();
		tableBlock.addItem(generateTable());
		blocks.add(tableBlock);
		
		// ==== Page 2 ====
		
		return blocks;
	}
	
	private TableItem generateTable() {
		TableItem table = new TableItem();
		ItemTableHead head = new ItemTableHead();
		head.addCell("Reasons we can share your personal information");
		head.addCell("Does " + companyName + " share?");
		head.addCell("Can you limit this sharing?");
		table.setHead(head);
		for (int i = 0; i < 7; i++) {
			ItemTableRow row = new ItemTableRow();
			row.addCell(new ItemTableCell(reasons[i]));
			row.addCell("Yes");
			row.addCell("No");
			table.addRow(row);
		}
		return table;
	}
	
	static class Definition {
		String title;
		String content;
		public Definition(String _title, String _content) {
			title = _title;
			content = _content;
		}
	}
}
