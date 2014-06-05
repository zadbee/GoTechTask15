package document;

import utility.TagWrapper;

public class BlockTitleItem implements DocumentItem {
	String title;
	
	public BlockTitleItem(String _title) {
		title = _title;
	}

	@Override
	public String getText() {
		return TagWrapper.wrapTag("h3", title);
	}

}
