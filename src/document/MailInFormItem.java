package document;

import utility.TagWrapper;
import generator.Questionare;

public class MailInFormItem implements DocumentItem {
	static final String leaveBlank = "Leave blank.";
	static final String leftText = "If you have a joint account, your choice(s) will apply to everyone on your account unless you mark below";
	static final String leftChoice = "[ ] Apply my choices only to me";
	
	static final String rightText = "Mark any/all you want to limit:";
	static final String rightChoice1 = "[ ] Do not share information about my creditworthiness with your affiliates for their everyday business purposes.";
	static final String rightChoice2 = "[ ] Do not allow your affiliates to use my personal information to market to me.";
	static final String rightChoice3 = "[ ] Do not share my personal information with nonaffiliates to market their products and services to me.";
	static final String rightChoice4 = "[ ] Do not share my personal information to market to me.";
	static final String rightChoice5 = "[ ] Do not share my personal information with other financial institutions to jointly market to me.";
	
	Questionare q;
	
	public MailInFormItem(Questionare _q) {
		q = _q;
	}
	
	@Override
	public String getText() {		
		StringBuilder left = new StringBuilder();
		if (q.optOnlyOne) {
			left.append(TagWrapper.wrapTag("p", leftText));
			left.append(TagWrapper.wrapTag("p", leftChoice));
		} else {
			left.append(TagWrapper.wrapTag("p", leaveBlank));
		}
		
		StringBuilder choices = new StringBuilder();
		choices.append(TagWrapper.wrapTagWithClass("p", rightText, "padding-5px"));
		boolean opt1 = q.share[4].equals("Yes");
		boolean opt2 = q.hasAffiliates && q.share[5].equals("Yes");
		boolean opt3 = q.share[6].equals("Yes");
		if (opt1)
			choices.append(TagWrapper.wrapTagWithClass("p", rightChoice1, "padding-5px"));
		if (opt2)
			choices.append(TagWrapper.wrapTagWithClass("p", rightChoice2, "padding-5px"));
		if (opt3)
			choices.append(TagWrapper.wrapTagWithClass("p", rightChoice3, "padding-5px"));
		if (q.optOwnMarketing)
			choices.append(TagWrapper.wrapTagWithClass("p", rightChoice4, "padding-5px"));
		if (q.optJointMarketing)
			choices.append(TagWrapper.wrapTagWithClass("p", rightChoice5, "padding-5px"));
			
		String part1 = "<table> <tr> <td class=\"mail-addr-heading\">Name</td> <td class=\"mail-addr-details\"></td> <td class=\"mail-addr-mailto\" rowspan=\"5\"> <p><strong>Mail To:</strong></p> <p>";
		String part2 = q.companyName + "<br/>"
				+ q.streetAddr + "<br/>"
				+ q.city + "<br/>"
				+ q.state + " " + q.zipCode;
		String part3 = "</p> </td> </tr> <tr> <td class=\"mail-addr-heading\" rowspan=\"3\">Address</td><td class=\"mail-addr-details\">&nbsp;</td> </tr> <tr> <td class=\"mail-addr-details\">&nbsp;</td> </tr> <tr> <td class=\"mail-addr-details\">&nbsp;</td> </tr> <tr> <td class=\"mail-addr-heading\">"
						+ q.additionalInfoType
						+ "</td><td class=\"mail-addr-details\"></td> </tr> </table>";
		String form = part1 + part2 + part3;
		
		String headStr = "<h3>Mail-in Form</h3> <table> <tr>";
		String p1 = TagWrapper.wrapTagWithClass("td", left.toString(), "mailin-heading");
		String p2 = TagWrapper.wrapTagWithClass("td", choices.toString() + form, "mailin-details");
		String tailStr = "</tr></table>";
		
		return headStr + p1 + p2 + tailStr;
	}
}
