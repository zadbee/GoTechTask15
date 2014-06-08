package generator;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

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
	public String companyName = "undefined";
	public int opt_out_option = 0;
	public boolean hasAffiliates = false;
	public boolean hasPartners = false;
	
	// ==== Page 1 ====
	public String lastRevisedDate = "undefined";
	
	public ArrayList<String> sharedInfo = new ArrayList<String>();
	
	public ArrayList<String> share = new ArrayList<String>();	// 6th valid when hasAffiliates = true
	public ArrayList<String> limit = new ArrayList<String>();	// 6th valid when hasAffiliates = true
	
	public int days = 0;
	
	public boolean providePhone = false;
	public String contactPhone = "undefined";		// Valid when providedPhone = true
	public boolean provideWebsite = false;
	public String contactWebsite = "undefined";		// Valid when providedWebsite = true
	
	// ==== Mail-in Form ====						// Valid when opt_out_option contains mail-in
	public boolean additionalInfo = false;
	public int additionalInfoType = 0;
	
	public String streetAddr = "undefined";
	public String aptNumber = "undefined";
	public String city = "undefined";
	public String state = "undefined";
	public String zipCode = "undefined";
	
	public boolean hasJointAccounts = false;
	public boolean applyToSelf = false;				// Valid when hasJointAccounts = true
	public boolean isInsurance = false;				// Valid when hasJointAccounts = true
	
	public boolean optOwnMarketing = false;
	
	public boolean optJointMarketing = false;
	
	// ==== Page 2 ====
	public String partners = "undefined";			// Valid when hasPartners = true
	
	public String howToProtect = "undefined";
	
	public ArrayList<String> collectedTypes = new ArrayList<String>();
	
	public String whyNotLimitAll = "undefined";		// Valid when?
	
	public boolean applyToAnyOne = false;			// Valid when hasJointAccounts = true?
	
	public String aff_Financial = "undefined";		// Valid when hasAffiliates = true
	public String aff_Nonfinancial = "undefined";	// Valid when hasAffiliates = true
	public String aff_Others = "undefined";			// Valid when hasAffiliates = true
	
	public String nonAff = "undefined";				// Valid when?
	
	public String jointPartners = "undefined";		// Valid when?
	
	public String otherInfo = "undefined";
	
	private Questionare() {
		
	}
	
	public static Questionare getInstance() {
		if (instance == null)
			instance = new Questionare();
		return instance;
	}
	
	public ArrayList<DocumentBlock> generateDoc() {
		ArrayList<DocumentBlock> blocks = new ArrayList<DocumentBlock>();
		
		// ==== Page 1 in Form ====
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
		
		// ==== Mail-in Form ====
		
		// ==== Page 2 in Form====
		block = new DocumentBlock();
		BlockTitleItem titleItem = new BlockTitleItem("Who we are");
		block.addItem(titleItem);
		WhiteDocItem wItem = new WhiteDocItem();
		wItem.setHead("Who is providing this notice?");
		wItem.addItem(new ContentParagraph(companyName));
		block.addItem(wItem);
		blocks.add(block);
		
		block = new DocumentBlock();
		titleItem = new BlockTitleItem("What we do");
		block.addItem(titleItem);
		wItem = new WhiteDocItem();
		wItem.setHead("How does " + companyName + " protect my personal information?");
		wItem.addItem(new ContentParagraph(howToProtect));
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("How does " + companyName + " collect my personal information?");
		wItem.addItem(new ContentParagraph(companyName)); // list
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("Why can't I limit all sharing?");
		wItem.addItem(new ContentParagraph(whyNotLimitAll));
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("What happens when I limit sharing for an account I hold jointly with someone else?");
		wItem.addItem(new ContentParagraph(companyName)); // choose
		block.addItem(wItem);
		blocks.add(block);
		
		block = new DocumentBlock();
		titleItem = new BlockTitleItem("Definitions");
		block.addItem(titleItem);
		wItem = new WhiteDocItem();
		wItem.setHead("Affiliates");
		wItem.addItem(new ContentParagraph("Companies related by common ownership or control. They can be financial and nonfinancial companies."));
		list = new ContentList();
		list.addItem(aff_Financial);
		wItem.addItem(list);
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("Nonaffiliates");
		wItem.addItem(new ContentParagraph("Companies not related by common ownership or control. They can be financial and nonfinancial companies."));
		list = new ContentList();
		list.addItem(aff_Nonfinancial);
		wItem.addItem(list);
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("Joint marketing");
		wItem.addItem(new ContentParagraph("A formal agreement between nonaffiliated financial companies that together market financial products or services to you."));
		list = new ContentList();
		list.addItem(aff_Others);
		wItem.addItem(list);
		block.addItem(wItem);
		blocks.add(block);
		
		block = new DocumentBlock();
		titleItem = new BlockTitleItem("Other important information");
		block.addItem(titleItem);
		ParagraphItem pItem = new ParagraphItem(otherInfo);
		block.addItem(pItem);
		blocks.add(block);
		
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
	
	public static class Definition {
		String title;
		String content;
		public Definition(String _title, String _content) {
			title = _title;
			content = _content;
		}
	}

	@SuppressWarnings("unchecked")
	public String generateJson() {
		JSONObject obj = new JSONObject();
		obj.put("companyName", companyName);
		obj.put("opt_out_option", opt_out_option);
		obj.put("hasAffiliates", hasAffiliates);
		obj.put("hasPartners", hasPartners);
		obj.put("lastRevisedDate", lastRevisedDate);
		JSONArray sharedInfoArray = new JSONArray();
		for(String s: sharedInfo){
			sharedInfoArray.add(s);
		}
		obj.put("sharedInfo", sharedInfoArray);
		JSONArray shareArray = new JSONArray();
		for(String s: share){
			shareArray.add(s);
		}
		obj.put("share", shareArray);
		JSONArray limitArray = new JSONArray();
		for(String s: limit){
			limitArray.add(s);
		}
		obj.put("limit", limitArray);
		obj.put("days", days);
		obj.put("providePhone", providePhone);
		obj.put("contactPhone", contactPhone);
		obj.put("provideWebsite", provideWebsite);
		obj.put("contactWebsite", contactWebsite);
		obj.put("additionalInfo", additionalInfo);
		obj.put("additionalInfoType", additionalInfoType);
		obj.put("streetAddr", streetAddr);
		obj.put("aptNumber", aptNumber);
		obj.put("city", city);
		obj.put("state", state);
		obj.put("zipCode", zipCode);
		obj.put("hasJointAccounts", hasJointAccounts);
		obj.put("isInsurance", isInsurance);
		obj.put("optJointMarketing", optJointMarketing);
		obj.put("optOwnMarketing", optOwnMarketing);
		obj.put("partners", partners);
		obj.put("howToProtect", howToProtect);
		JSONArray collectedTypesArray = new JSONArray();
		for(String s: limit){
			collectedTypesArray.add(s);
		}
		obj.put("collectedTypes", collectedTypesArray);
		obj.put("applyToAnyOne", applyToAnyOne);
		obj.put("aff_Financial", aff_Financial);
		obj.put("aff_Nonfinancial", aff_Nonfinancial);
		obj.put("aptNumber", aff_Others);
		obj.put("nonAff", nonAff);
		obj.put("otherInfo", otherInfo);
		obj.put("jointPartners", jointPartners);
		return obj.toString();
		
	}

	public void populate(String jsonString) throws ParseException {
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(jsonString);
		JSONObject jsonObject = (JSONObject) obj;
		companyName = (String) jsonObject.get("companyName");
		opt_out_option = (Integer) jsonObject.get("opt_out_option");
		hasAffiliates = (Boolean) jsonObject.get("hasAffiliates");
		hasPartners =  (Boolean) jsonObject.get("hasPartners");
		lastRevisedDate = (String) jsonObject.get("lastRevisedDate");
		JSONArray array1 = (JSONArray) jsonObject.get("sharedInfo");
		for(int i = 0; i < array1.size(); i++){
			sharedInfo.add((String) array1.get(i));
		}
		JSONArray array2 = (JSONArray) jsonObject.get("share");
		for(int i = 0; i < array2.size(); i++){
			share.add((String) array2.get(i));
		}
		JSONArray array3 = (JSONArray) jsonObject.get("limit");
		for(int i = 0; i < array3.size(); i++){
			limit.add((String) array3.get(i));
		}
		days = (Integer) jsonObject.get("days");
		providePhone = (Boolean) jsonObject.get("providePhone");
		contactPhone = (String) jsonObject.get("contactPhone");
		provideWebsite = (boolean) jsonObject.get("provideWebsite");
		contactWebsite = (String) jsonObject.get("contactWebsite");
		additionalInfo = (boolean) jsonObject.get("additionalInfo");
		streetAddr = (String) jsonObject.get("streetAddr");
		aptNumber = (String) jsonObject.get("aptNumber");
		city = (String) jsonObject.get("city");
		state = (String) jsonObject.get("state");
		zipCode = (String) jsonObject.get("zipCode");
		hasJointAccounts = (boolean) jsonObject.get("hasJointAccounts");
		isInsurance = (boolean) jsonObject.get("isInsurance");
		optJointMarketing = (boolean) jsonObject.get("optJointMarketing");
		optOwnMarketing = (boolean) jsonObject.get("optOwnMarketing");
		partners = (String) jsonObject.get("partners");
		howToProtect = (String) jsonObject.get("howToProtect");
		JSONArray array4 = (JSONArray) jsonObject.get("collectedTypes");
		for(int i = 0; i < array3.size(); i++){
			collectedTypes.add((String) array3.get(i));
		}
		applyToAnyOne = (boolean) jsonObject.get("applyToAnyOne");
		aff_Financial= (String) jsonObject.get("aff_Financial");
		aff_Nonfinancial = (String) jsonObject.get("aff_Nonfinancial");
		aff_Others = (String) jsonObject.get("aff_Others");
		nonAff = (String) jsonObject.get("nonAff");
		otherInfo = (String) jsonObject.get("otherInfo");
		jointPartners = (String) jsonObject.get("jointPartners");
	}
}
