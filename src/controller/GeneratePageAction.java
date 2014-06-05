package controller;
import java.util.ArrayList;

import document.*;

import javax.servlet.http.HttpServletRequest;

public class GeneratePageAction extends Action {

	@Override
	public String getName() {
		return "generate.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		ArrayList<DocumentBlock> blocks = new ArrayList<DocumentBlock>();
		
		DocumentBlock block1 = new DocumentBlock();
		ColoredDocItem color1 = new ColoredDocItem();
		color1.setHead("FACTS");
		ContentParagraph para1 = new ContentParagraph("WHAT DOES BANK OF AMERICA DO WITH YOUR PERSONAL INFORMATION?");
		color1.addItem(para1);
		block1.addItem(color1);
		
		DocumentBlock block2 = new DocumentBlock();
		BlockTitleItem title1 = new BlockTitleItem("What we do");
		WhiteDocItem white1 = new WhiteDocItem();
		white1.setHead("How does Bank of America collect my personal information?");
		ContentParagraph para2 = new ContentParagraph("We collect your personal information, for example, when you:");
		ContentList list1 = new ContentList();
		list1.addItem("open an account or perform transactions");
		list1.addItem("apply for a loan or use your credit or debit card");
		list1.addItem("seek advice about your investments");
		ContentParagraph para3 = new ContentParagraph("We also collect your personal information from others, such as credit bureaus, affiliates, or other companies.");
		white1.addItem(para2);
		white1.addItem(list1);
		white1.addItem(para3);
		block2.addItem(title1);
		block2.addItem(white1);
		
		blocks.add(block1);
		blocks.add(block2);
		
		request.setAttribute("blocks", blocks);
		
		return "generated.jsp";
	}

}
