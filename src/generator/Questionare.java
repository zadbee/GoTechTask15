package generator;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import utility.BoldWrapper;
import utility.UrlWrapper;
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
		BoldWrapper.wrap("For nonaffiliates to market to you")
	};
	
	// ==== Pre Problems ====
	public String companyName = "undefined";
	public boolean opt_phone = false;
	public boolean opt_website = false;
	public boolean opt_mail = false;
	public boolean opt_cookie = false;
	public boolean opt_doNotTrack = false;
	public boolean hasAffiliates = false;
	public boolean hasPartners = false;
	
	// ==== Page 1 ====
	public String lastRevisedDate = "undefined";
	
	public ArrayList<String> sharedInfo = new ArrayList<String>();
	
	public String[] share = {"Yes", "Undef", "Undef", "Undef", "Undef", "Undef", "Undef"};	// 6th valid when hasAffiliates = true
	public String[] limit = {"No", "Undef", "Undef", "Undef", "Undef", "Undef", "Undef"};	// 6th valid when hasAffiliates = true
	
	public int days = 0;
	
	public boolean providePhone = false;
	public String contactPhone = "undefined";		// Valid when providedPhone = true
	public boolean provideWebsite = false;
	public String contactWebsite = "undefined";		// Valid when providedWebsite = true
	
	public String optPhone = "undefined";
	public String optWebsite = "undefined";
	public String optCookie = "undefined";
	public String optDoNotTrack = "undefined";
	
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
	
	public boolean collectFromAffiliates = false;
	
	public boolean stateLaw = false;
	public String lawDescription = "undefined";
	
	public boolean applyToAnyOne = false;			// Valid when hasJointAccounts = true?
	
	public String aff_Financial = "undefined";		// Valid when hasAffiliates = true & share[6] = true
	public String aff_Nonfinancial = "undefined";	// Valid when hasAffiliates = true & share[6] = true
	public String aff_Others = "undefined";			// Valid when hasAffiliates = true & share[6] = true
	
	public String nonAff = "undefined";				// Valid when share[7] = yes
	
	public String jointPartners = "undefined";		// Valid when share[3] = yes
	
	public String otherInfo = "undefined";			// Optional info
	
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
		block.addItem(new ParagraphItem("<p style=\"text-align:right\">Rev. " + lastRevisedDate + "</p>"));
		blocks.add(block);
		
		block = new DocumentBlock();
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
		for (String s : sharedInfo)
			list.addItem(s);
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
		
		block = new DocumentBlock();
		cItem = new ColoredDocItem();
		cItem.setHead("To limit our sharing");
		list = new ContentList();
		if (opt_phone)
			list.addItem("Call " + optPhone + " - our menu will prompt you through your choice");
		if (opt_website)
			list.addItem("Visit " + UrlWrapper.wrap(optWebsite) + " and tell us your preference");
		if (opt_mail)
			list.addItem("Mail the form below");
		if (opt_cookie)
			list.addItem("Visit " + UrlWrapper.wrap(optCookie) + " to opt-out by cookie");
		if (opt_doNotTrack)
			list.addItem("Visit " + UrlWrapper.wrap(optDoNotTrack) + " to opt-out by Do-Not-Track plugin");
		cItem.addItem(list);
		cItem.addItem(new ContentParagraph(BoldWrapper.wrap("Please note:")));
		cItem.addItem(new ContentParagraph("If you are a new customer, we can begin sharing your information " + days + " days from the date we sent this notice. When you are no longer our customer, we continue to share your information as described in this notice."));
		cItem.addItem(new ContentParagraph("However, you can contact us at any time to limit our sharing."));
		block.addItem(cItem);
		cItem = new ColoredDocItem();
		cItem.setHead("Questions?");
		if (providePhone && !provideWebsite) {
			cItem.addItem(new ContentParagraph("Call " + contactPhone + "."));
		} else if (provideWebsite && !providePhone) {
			cItem.addItem(new ContentParagraph("Go to " + UrlWrapper.wrap(contactWebsite) + "."));
		} else if (providePhone && provideWebsite) {
			cItem.addItem(new ContentParagraph("Call " + contactPhone + " or go to " + UrlWrapper.wrap(contactWebsite) + "."));
		}
		block.addItem(cItem);
		blocks.add(block);
		
		// ==== Mail-in Form ====
		
		// ==== Page 2 in Form====
		block = new DocumentBlock();
		BlockTitleItem titleItem = new BlockTitleItem("Who we are");
		block.addItem(titleItem);
		WhiteDocItem wItem = new WhiteDocItem();
		wItem.setHead("Who is providing this notice?");
		list = new ContentList();
		list.addItem(companyName);
		if (hasPartners)
			list.addItem(partners);
		wItem.addItem(list);
		block.addItem(wItem);
		blocks.add(block);
		
		block = new DocumentBlock();
		titleItem = new BlockTitleItem("What we do");
		block.addItem(titleItem);
		wItem = new WhiteDocItem();
		wItem.setHead("How does " + companyName + " protect my personal information?");
		wItem.addItem(new ContentParagraph("To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings."));
		wItem.addItem(new ContentParagraph(howToProtect));
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("How does " + companyName + " collect my personal information?");
		wItem.addItem(new ContentParagraph("We collect your personal information, for example, when you")); // list
		list = new ContentList();
		for (String s : collectedTypes)
			list.addItem(s);
		System.out.println("size " + collectedTypes.size());
		wItem.addItem(list); // choice missing
		if (collectFromAffiliates)
			wItem.addItem(new ContentParagraph("We also collect your personal information from others, such as credit bureaus, affiliates, or other companies."));
		else
			wItem.addItem(new ContentParagraph("We also collect your personal information from other companies."));
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("Why can't I limit all sharing?");
		wItem.addItem(new ContentParagraph("Federal law gives you the right to limit only"));
		list = new ContentList();
		list.addItem("sharing for affiliates' everyday business purposes - information about your creditworthiness");
		list.addItem("affiliates from using your information to market to you");
		list.addItem("sharing for nonaffiliates to market to you");
		wItem.addItem(list);
		if (stateLaw)
			wItem.addItem(new ContentParagraph("State laws and individual companies may give you additional rights to limit sharing."));
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("What happens when I limit sharing for an account I hold jointly with someone else?");
		if (applyToAnyOne)
			wItem.addItem(new ContentParagraph("Your choices will apply individually.")); // choose
		else
			wItem.addItem(new ContentParagraph("Your choices will apply individually - unless you tell us otherwise."));
		block.addItem(wItem);
		blocks.add(block);
		
		block = new DocumentBlock();
		boolean param1 = hasAffiliates && share[5].equals("Yes");
		boolean param2 = share[6].equals("Yes");
		boolean param3 = share[2].equals("Yes");
		titleItem = new BlockTitleItem("Definitions");
		block.addItem(titleItem);
		wItem = new WhiteDocItem();
		wItem.setHead("Affiliates");
		wItem.addItem(new ContentParagraph("Companies related by common ownership or control. They can be financial and nonfinancial companies."));
		list = new ContentList();
		if (param1) {
			list.addItem("Our affiliates include companies with a " + companyName + " name; financial companies such as " + aff_Financial + "; nonfinancial companies, such as " + aff_Nonfinancial + "; and others, such as " + aff_Others + ".");
		} else {
			list.addItem(companyName + "  does not share with our affiliates."); 
		}		
		wItem.addItem(list);
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("Nonaffiliates");
		wItem.addItem(new ContentParagraph("Companies not related by common ownership or control. They can be financial and nonfinancial companies."));
		list = new ContentList();
		if (param2) {
			list.addItem("Nonaffiliates we share with can include " + nonAff);
		} else {
			list.addItem(companyName + " does not share with nonaffiliates so they can market to you");
		}
		wItem.addItem(list);
		block.addItem(wItem);
		wItem = new WhiteDocItem();
		wItem.setHead("Joint marketing");
		wItem.addItem(new ContentParagraph("A formal agreement between nonaffiliated financial companies that together market financial products or services to you."));
		list = new ContentList();
		if (param3) {
			list.addItem("Our joint marketing partners include " + jointPartners);
		} else {
			list.addItem(companyName + " doesn't jointly market.");
		}
		wItem.addItem(list);
		block.addItem(wItem);
		blocks.add(block);
		
		block = new DocumentBlock();
		titleItem = new BlockTitleItem("Other important information");
		block.addItem(titleItem);
		if (stateLaw) {
			ParagraphItem pItem = new ParagraphItem(BoldWrapper.wrap("State laws. ") + lawDescription);
			block.addItem(pItem);
		}
		if (!otherInfo.equals("undefined")) {
			ParagraphItem pItem = new ParagraphItem(otherInfo);
			block.addItem(pItem);
		}
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
			System.out.println(i);
			if (i != 5 || hasAffiliates) {
				ItemTableRow row = new ItemTableRow();
				row.addCell(new ItemTableCell(reasons[i]));
				row.addCell(share[i]);
				row.addCell(limit[i]);
				table.addRow(row);
			}		
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
		//obj.put("opt_out_option", opt_out_option);
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
