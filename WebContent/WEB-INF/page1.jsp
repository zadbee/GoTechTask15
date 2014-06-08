<jsp:include page="top.jsp" />
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"
	type="text/javascript">
	
</script>

<style type="text/css">
.tooltip {
	display: none;
	position: absolute;
	border: 1px solid #333;
	background-color: #161616;
	border-radius: 5px;
	padding: 10px;
	color: #fff;
	font-size: 12px Arial;
}

.leftpad {
	margin-left: 5%
}
</style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						// Tooltip only Text
						$('.masterTooltip')
								.hover(
										function() {
											// Hover over code
											var title = $(this).attr('title');
											alert("A barcode is an optical machine-readable representation of data relating to the object to which it is attached.");
											$(this).data('tipText', title)
													.removeAttr('title');
											$('<p class="tooltip"></p>').text(
													title).appendTo('body')
													.fadeIn('slow');

										},
										function() {
											// Hover out code
											$(this).attr('title',
													$(this).data('tipText'));
											$('.tooltip').remove();
										}).mousemove(function(e) {

									var mousex = e.pageX + 20; //Get X coordinates
									var mousey = e.pageY + 10; //Get Y coordinates

									$('.tooltip').css({
										top : mousey,
										left : mousex
									})

								});
					});

	$(document).ready(
			function() {
				// Tooltip only Text
				$('.masterTooltip1').hover(
						function() {
							// Hover over code
							var title = $(this).attr('title');
							/*  alert("In entertainment, a tagline is a small amount of text which serves to clarify a thought for, or designed with a form of, dramatic effect."); */
							$(this).data('tipText', title).removeAttr('title');
							$('<p class="tooltip"></p>').text(title).appendTo(
									'body').fadeIn('slow');

						}, function() {
							// Hover out code
							$(this).attr('title', $(this).data('tipText'));
							$('.tooltip').remove();
						}).mousemove(function(e) {

					var mousex = e.pageX + 20; //Get X coordinates
					var mousey = e.pageY + 10; //Get Y coordinates

					$('.tooltip').css({
						top : mousey,
						left : mousex
					})

				});
			});
</script>
<script type="text/javascript">
	function showdiv1(ch) {
		if (ch.checked) {
			document.getElementById("optionalInfo").style.display = "block";
		} else {
			document.getElementById("optionalInfo").style.display = "none";
		}
	}
	function showdiv2(ch) {
		if (ch.checked) {
			document.getElementById("jointAccount").style.display = "block";
		} else {
			document.getElementById("jointAccount").style.display = "none";
		}
	}
	function blockdiv2(ch) {
		if (ch.checked) {
			document.getElementById("jointAccount").style.display = "none";
		} else {
			document.getElementById("jointAccount").style.display = "block";
		}
	}
	function showdiv3(ch) {
		if (ch.checked) {
			document.getElementById("jointMarket").style.display = "block";
		} else {
			document.getElementById("jointMarket").style.display = "none";
		}
	}
	function blockdiv3(ch) {
		if (ch.checked) {
			document.getElementById("jointMarket").style.display = "none";
		} else {
			document.getElementById("jointMarket").style.display = "block";
		}
	}
	function showdiv4(ch) {
		if (ch.checked) {
			document.getElementById("selectStatement").style.display = "block";
		} else {
			document.getElementById("selectStatement").style.display = "none";
		}
	}
	function blockdiv4(ch) {
		if (ch.checked) {
			document.getElementById("selectStatement").style.display = "none";
		} else {
			document.getElementById("selectStatement").style.display = "block";
		}
	}
	function showdiv5(ch) {
		if (ch.checked) {
			document.getElementById("choice1").style.display = "block";
		} else {
			document.getElementById("choice1").style.display = "none";
		}
	}
	function showdiv6(ch) {
		if (ch.checked) {
			document.getElementById("choice2").style.display = "block";
		} else {
			document.getElementById("choice2").style.display = "none";
		}
	}
	function showdiv7(ch) {
		if (ch.checked) {
			document.getElementById("choice3").style.display = "block";
		} else {
			document.getElementById("choice3").style.display = "none";
		}
	}
	function showdiv8(ch) {
		if (ch.checked) {
			document.getElementById("choice4").style.display = "block";
			document.getElementById("choice5").style.display = "none";
		} else {
			document.getElementById("choice4").style.display = "none";
			document.getElementById("choice5").style.display = "block";
		}
	}
	function showdiv9(ch) {
		if (ch.checked) {
			document.getElementById("choice5").style.display = "block";
			document.getElementById("choice4").style.display = "none";
		} else {
			document.getElementById("choice5").style.display = "none";
			document.getElementById("choice4").style.display = "block";
		}
	}
	function changeQ1() {
		var myselect = document.getElementById("question1").value;

		if (myselect == "No") {
			document.getElementById("noShare1").selected = "true";
			document.getElementById("noShare1").disabled = false;
			document.getElementById("no1").disabled = "true";
			
			document.getElementById("share1").disabled = "true";
			//document.getElementById("question1b").disabled = "true";
		} else {
			document.getElementById("question1b").disabled = false;
		}

		if (myselect == "Yes") {
			document.getElementById("share1").disabled = false;
			document.getElementById("share1").selected = "true";
			document.getElementById("noShare1").disabled = "true";
			document.getElementById("no1").disabled = false;
			
		}
	}
	function changeQ2() {
		var myselect = document.getElementById("question2").value;

		if (myselect == "No") {
			document.getElementById("noShare2").selected = "true";
			document.getElementById("noShare2").disabled = false;
			document.getElementById("no2").disabled = "true";
			
			document.getElementById("share2").disabled = "true";
			//document.getElementById("question1b").disabled = "true";
		} else {
			document.getElementById("question2b").disabled = false;
		}

		if (myselect == "Yes") {
			document.getElementById("share2").disabled = false;
			document.getElementById("share2").selected = "true";
			document.getElementById("noShare2").disabled = "true";
			document.getElementById("no2").disabled = false;
			
		}
	}
	function changeQ3() {
		var myselect = document.getElementById("question3").value;

		if (myselect == "No") {
			document.getElementById("noShare3").selected = "true";
			document.getElementById("noShare3").disabled = false;
			document.getElementById("no3").disabled = "true";
			
			document.getElementById("share3").disabled = "true";
			//document.getElementById("question1b").disabled = "true";
		} else {
			document.getElementById("question3b").disabled = false;
		}

		if (myselect == "Yes") {
			document.getElementById("share3").disabled = false;
			document.getElementById("share3").selected = "true";
			document.getElementById("noShare3").disabled = "true";
			document.getElementById("no3").disabled = false;
			
		}
	}
	function changeQ4() {
		var myselect = document.getElementById("question4").value;

		if (myselect == "No") {
			document.getElementById("noShare4").selected = "true";
			document.getElementById("noShare4").disabled = false;
			//document.getElementById("no4").disabled = "true";
			
			document.getElementById("share4").disabled = "true";
			//document.getElementById("question1b").disabled = "true";
		} else {
			document.getElementById("question4b").disabled = false;
		}

		if (myselect == "Yes") {
			document.getElementById("share4").disabled = false;
			document.getElementById("share4").selected = "true";
			document.getElementById("noShare4").disabled = "true";
			//document.getElementById("no4").disabled = false;
			
		}
	}
	function changeQ5() {
		var myselect = document.getElementById("question5").value;
		if (myselect == "No") {
			document.getElementById("noShare5").selected = "true";
			document.getElementById("noShare5").disabled = false;
			document.getElementById("share5").disabled = "true";
			//document.getElementById("question5b").disabled = "true";
		} else {
			document.getElementById("question5b").disabled = false;
		}

		if (myselect == "Yes") {
			document.getElementById("share5").disabled = false;
			document.getElementById("share5").selected = "true";
			document.getElementById("noShare5").disabled = "true";
		//	document.getElementById("no5").disabled = false;
			
		}
	}
	function changeQ6() {
		var myselect = document.getElementById("question6").value;
		if (myselect == "No") {
			document.getElementById("noShare6").selected = "true";
			document.getElementById("noShare6").disabled = false;
			document.getElementById("share6").disabled = "true";
			//document.getElementById("question6b").disabled = "true";
		} else {
			document.getElementById("question6b").disabled = false;
		}

		if (myselect == "Yes") {
			document.getElementById("share6").disabled = false;
			document.getElementById("share6").selected = "true";
			document.getElementById("noShare6").disabled = "true";
			//document.getElementById("no6").disabled = false;
			
		}
	}
</script>
<!-- <body onload = "showdiv()"> -->
<body>
	<form id="form2" action="page1.do" onsubmit="return validateForm1()"
		method="post">
		<div>
			<div class="content-section">
				<div class="content-row">
					<h4>Please input the revision date that will appear in the
						privacy form.</h4>
					<input class="form-control" type="text" id="datepicker"
						placeholder="Example : October 2012" name="newDate">
				</div>
				<br />

				<div class="content-row">
					<div id="error5" style="display: none">
						<h5 style="color: red;">You need to select 6 options
							including SSN so only need to select 5 in total besides SSN</h5>
					</div>
					<h4>Please select the types of personal information you
						collect and share depend on the product or service customers have
						with you.</h4>
					<p>Besides SSN, select only 5 more information types</p>
					<div id="addinput" onclick="checkBox()">
						<table>
							<tr>
								<td><input type="checkbox" name="checkbox" value="Income">
									Income</td>
								<td><input type="checkbox" name="checkbox" value="Account Balances">
									Account Balances</td>
								<td><input type="checkbox" name="checkbox" value="Payment History">
									Payment History</td>
								<td><input type="checkbox" name="checkbox" value="Transaction History">
									Transaction History</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox" value="Transaction or Loss History">
									Transaction or Loss History</td>
								<td><input type="checkbox" name="checkbox" value="Credit History">
									Credit History</td>
								<td><input type="checkbox" name="checkbox" value="Credit Scores">
									Credit Scores</td>
								<td><input type="checkbox" name="checkbox" value="Assets">
									Assets</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox" value="Investment Experience">
									Investment Experience</td>
								<td><input type="checkbox" name="checkbox" value="Credit Based Insurance Scores">
									Credit Based Insurance Scores</td>
								<td><input type="checkbox" name="checkbox" value="Insurance Claim History">
									Insurance Claim History</td>
								<td><input type="checkbox" name="checkbox" value="Account Transactions">
									Account Transactions</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox" value="Risk Tolerance">
									Risk Tolerance</td>
								<td><input type="checkbox" name="checkbox" value="Medical Related Debts">
									Medical Related Debts</td>
								<td><input type="checkbox" name="checkbox" value="Credit Card or other debt">
									Credit Card or other debt</td>
								<td><input type="checkbox" name="checkbox" value="Mortgage Rates and Payments">
									Mortgage Rates and Payments</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox" value="Retirement Assets">
									Retirement Assets</td>
								<td><input type="checkbox" name="checkbox" value="Checking account information">
									Checking account information</td>
								<td><input type="checkbox" name="checkbox" value="Employment Information retirement portfolio">
									Employment Information retirement portfolio</td>
								<td><input type="checkbox" name="checkbox" value="Wire Transfer Instructions">
									Wire Transfer Instructions</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<br />

			<div class="content-row">
				<h4>Please select Yes/No or we do not share depending if the
					reason on the left column to share personal information is valid to
					your organization.</h4>
				<table border="0" class="table table-striped"
					style="text-align: left"
					summary="This 3-column table provides information about the reasons why Bank of America can share your personal information.">
					<thead>
						<tr>
							<th scope="col">Information</th>
							<th scope="col">Does ${companyName} share?
							</th>
							<th scope="col">Can you limit this sharing?</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Does your organization share
									information for everyday business purposes? </strong>&mdash; Such as to
								process transactions, maintain customers account(s), respond to
								court orders and legal investigations, or report to credit
								bureaus</td>
							<td class="centered-td">Yes<br /> (Mandatory)
							</td>
							<td class="centered-td">No<br /> (Mandatory)
							</td>
						</tr>
						<tr>
							<td><strong>Does your organization share
									information for marketing purposes </strong>&mdash; to such as to offer
								products and services to customers?</td>
							<td class="centered-td"><select name="question1"
								id="question1" onchange="changeQ1()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select name="question1b"
								id="question1b" readonly="false"><option value="Yes"
										id="share1">Yes</option>
									<option value="No" id="no1">No</option>
									<option value="No" id="noShare1">We do not share</option></select></td>
						</tr>
						<tr>
							<td><strong> Does your organization share
									information to do joint marketing with other financial
									companies?</strong></td>
							<td class="centered-td"><select name="question2"
								id="question2" onchange="changeQ2()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select name="question2b"
								id="question2b" readonly="false"><option value="Yes"
										id="share2">Yes</option>
									<option value="No" id="no2">No</option>
									<option value="No" id="noShare2">We do not share</option></select></td>
						</tr>
						<tr>
							<td><strong>Does your organization share
									information with affiliates&rsquo; for everyday business
									purposes? </strong>&mdash; Information about transactions and
								experiences from customers</td>
							<td class="centered-td"><select name="question3"
								id="question3" onchange="changeQ3()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select name="question3b"
								id="question3b" readonly="false"><option value="Yes"
										id="share3">Yes</option>
									<option value="No" id="no3">No</option>
									<option value="No" id="noShare3">We do not share</option></select></td>
						</tr>
						<tr>
							<td><strong>Does your organization share
									information for affiliates&rsquo; everyday business purposes? </strong>&mdash;
								Information such as creditworthiness</td>
							<td class="centered-td"><select id="question4"
								name="question4" onchange="changeQ4()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select id="question4b"
								name="question4b" readonly="false"><option value="Yes"
										id="share4">Yes</option>
									
									<option value="No" id="noShare4">We do not share</option></select></td>
						</tr>
						<c:if test="${hasAffiliates}">
							<tr>
								<td><strong><span id="optionalQuestion">Will
											the affiliates market to your customers? </span></strong></td>
								<td class="centered-td"><select id="question5"
									name="question5" onchange="changeQ5()"><option
											value="Yes">Yes</option>
										<option value="No">No</option></select></td>
								<td class="centered-td"><select id="question5b"
									name="question5b" readonly="false"><option value="Yes"
											id="share5">Yes</option>
										<option value="No" id="noShare5">we do not share</option></select></td>
							</tr>
						</c:if>

						<tr>
							<td><strong>For nonaffiliates to market to you</strong></td>
							<td class="centered-td"><select id="question6" name="question6"
								onchange="changeQ6()"><option value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select id="question6b" name="question6b"
								readonly="false"><option value="Yes" id="share6">Yes</option>
									<option value="No" id="noShare6">We do not share</option></select></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<br />

		<div class="content-row">
			<h4>How many days can you begin sharing new customer's
				information from the date you sent the notice to the customer?</h4>
			<br />
			<div id="error1" style="display: none">
				<h5 style="color: red;">The number of days need to be larger
					than 30</h5>
			</div>
			<input type="text" class="form-control" id="numberOfDays"
				placeholder="No less than 30 days" name="numOfDays">
		</div>
		<br />

		<div class="content-row">
			<h4>What customer service contact information will you provide?</h4>
			<br />
			<div id="error2" style="display: none">
				<h5 style="color: red;">You need to select at least one of the
					contact method</h5>
			</div>
			<table style="width: 100%">
				<tr>
					<td width="15%"><input name="contactMethod" id="phone1"
						type="checkbox" value="phone" /> Phone</td>
					<td><input type="text" class="form-control"
						placeholder="Phone Number" name="phoneText"></td>
				</tr>
				<tr>
					<td width="15%"><input name="contactMethod" type="checkbox"
						id="website1" value="website" /> Website</td>
					<td><input type="text" class="form-control"
						placeholder="Website Address" name="websiteText"></td>
				</tr>
			</table>
		</div>
		<br />
		<c:if test="${opt_phone}">
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading"><h4>Phone Opt-out</h4></td>
					</tr>
				</table>
				<h4>What's your phone number for opt-out?</h4>
				<input type="text" class="form-control" placeholder="Phone number for opt-out" name="phoneOptOut">
			</div>
			<br/>
		</c:if>
		
		<c:if test="${opt_website}">
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading"><h4>Website Opt-out</h4></td>
					</tr>
				</table>
				<h4>What's your website for opt-out?</h4>
				<input type="text" class="form-control" placeholder="Website for opt-out" name="websiteOptOut">
			</div>
			<br/>
		</c:if>
		
		<c:if test="${opt_cookie}">
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading"><h4>Cookie Opt-out</h4></td>
					</tr>
				</table>
				<h4>What's your link for cookie-based opt-out?</h4>
				<input type="text" class="form-control" placeholder="Link for cookie-base opt-out" name="cookieOptOut">
			</div>
			<br/>
		</c:if>
		
		<c:if test="${opt_doNotTrack}">
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading"><h4>Do Not Track Opt-out</h4></td>
					</tr>
				</table>
				<h4>What's your link for Do-Not-Track-based opt-out?</h4>
				<input type="text" class="form-control" placeholder="Link for Do-Not-Track-based opt-out" name="doNotTrackOptOut">
			</div>
			<br/>
		</c:if>
		
		<br />
		<c:if test="${opt_mail}">
			<div class="content-row" id="mailinForm">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading"><h4>Mail-in Opt-out</h4></td>
					</tr>
				</table>
				<h4>Do you need additional information from customers except
					for customer's name and address?</h4>
				<input name="additionalInfo" type="checkbox" value="yes"
					onclick="showdiv1(this)" /> Yes <br />
				<div id="optionalInfo" class="leftpad" style="display: none">
					<h5>Please select the additional information you need:</h5>
					<input type="radio" name="optionsRadios" id="radio1"
						value="Account Number" checked> Account Number<br /> 
					<input type="radio" name="optionsRadios" id="radio1" value="Opt-out Number">
						Opt-out Number<br /> 
					<input type="radio" name="optionsRadios"
						id="radio1" value="Truncated Account Number"> 
						Truncated Account Number<br />
				</div>
				<br />
				<h4>The mail-in opt-out form should be mailed to:</h4>
				<table style="width:100%">
					<tr>
						<td>Street:</td>
						<td>&nbsp;&nbsp;<input name="street" type="text"></td>
						<td>City:</td>
						<td>&nbsp;&nbsp;<input name="city" type="text"></td>
					</tr>
					<tr>
						<td>State:</td>
						<td>&nbsp;&nbsp; <select name="state">
								<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
						</select>
						</td>
						<td>Zip:</td>
						<td>&nbsp;&nbsp;<input type="text" name="zip"></td>
					</tr>
				</table>
				<br />

				<h4>Will you provide your joint accountholders the choice to
					opt out for only one accountholder?</h4>
				<input type="radio" name="optionsRadios1" id="radio1" value="q3Y"
					onclick="showdiv2(this)">Yes<br /> <input type="radio"
					name="optionsRadios1" id="radio2" value="q3N"
					onclick="blockdiv2(this)" checked>No<br />
					
				<!--<div class="leftpad" id="jointAccount" style="display: none">
					<h5>If you have a joint account, will you apply your choice(s)
						only to yourself?</h5>
					<input type="radio" name="optionsRadios2" id="radio3" value="q3aY">Yes<br />
					<input type="radio" name="optionsRadios2" id="radio4" value="q3aN"
						checked>No<br />
					<h5>Are you a financial institutions that provide insurance
						products or services?</h5>
					<input type="radio" name="optionsRadios3" id="radio5" value="q3bY">Yes<br />
					<input type="radio" name="optionsRadios3" id="radio6" value="q3bN"
						checked>No<br />
				</div>-->
				<br />
				
				<h4>Do you offer an opt-out for your own marketing?</h4>
				<input type="radio" name="optionsRadios7" id="radio13" value="q5Y"
					onclick="showdiv4(this)">Yes<br /> <input type="radio"
					name="optionsRadios7" id="radio14" value="q5N"
					onclick="blockdiv4(this)" checked>No<br />
				<!--<div class="leftpad" id="selectStatement" style="display: none">
					<h5>Please select one of the following two statements:</h5>
					<input type="radio" name="optionsRadios9" id="radio1"
						value="q5a" onclick="showdiv8(this)" checked>Do not share
					my personal information to market to me.<br />
					<div id="choice4" style="display: none">
						<input type="radio" name="optionsRadios8" id="radio15"
							value="q5aY">Yes<br /> <input type="radio"
							name="optionsRadios8" id="radio16" value="q5aN" checked>No<br />
					</div>
					<input type="radio" name="optionsRadios9" id="radio17"
						value="q5b" onclick="showdiv9(this)">Do not use my
					personal information to market to me.<br />
					<div id="choice5" style="display: none">
						<input type="radio" name="optionsRadios10" id="radio18"
							value="q5bY">Yes<br /> <input type="radio"
							name="optionsRadios10" id="radio19" value="q5bN" checked>No<br />
					</div>
				</div>-->
				<br />
				
				<h4>Do you offer an opt-out for joint marketing?</h4>
				<input type="radio" name="optionsRadios11" id="radio20"
					value="q6Y" onclick="showdiv3(this)">Yes<br /> <input
					type="radio" name="optionsRadios11" id="radio21" value="q6N"
					onclick="blockdiv3(this)" checked>No<br />
				<!--<div class="leftpad" id="jointMarket" style="display: none">
					<h5>Will you share your personal information with other
						financial institutions to jointly market to you?</h5>
					<input type="radio" name="optionsRadios12" id="radio22"
						value="q6aY">Yes<br /> <input type="radio"
						name="optionsRadios12" id="radio23" value="q6aN" checked>No<br />
				</div>-->
				<!--
				<br />
				<h4>Do you want to include a barcode and/or "tagline" at the
					bottom of page one?</h4>
				<br /> <label><input name="opt-out" type="checkbox"
					value="q7Barcode" />&nbsp;&nbsp;Barcode</label><a href="default.asp"><img
					src="image/question.png" class="masterTooltip"
					title="Tooltip on image" alt="" /></a><input name="barcodeFile"
					type="file" id="exampleInputFile"> <br /> <label><input
					name="opt-out" type="checkbox" value="q7Tagline" />&nbsp;&nbsp;Tagline
				</label><a href="default.asp"><img src="image/question.png"
					class="masterTooltip" title="Tooltip on image" alt="" /></a><input
					name="toglineText" type="text">-->
			</div>
		</c:if>
		<div class="content-row">
			<br />
			<p align="center">
				<button type="submit" name="next1" class="btn btn-primary btn-primary-lg"
					onclick="validateForm1()">Next Page</button>
			</p>
		</div>
	</form>
<script src="js/jquery.loadJSON.js"></script>
<script>
$(document).ready(function() {
	<%
		Boolean uploadFile = false;
		String json = "";
		//String json = "'{\"optionsRadio\":\"share\",\"optionsRadio2\":\"one\",\"opt-out\":[true],\"name\":\"new comm\"}'";
		if(session.getAttribute("questionare") != null){
			json = "'" + (String)session.getAttribute("questionare") + "'";
			uploadFile = true;
		}
		if(uploadFile){
	%>
		alert(<%=json%>);
		var form1 = jQuery.parseJSON(<%=json%>);
		$('form').loadJSON(form1);
	<%
		}
	%>
});
</script>
<script type="text/javascript">

function checkBox(){
	
var sum1 = 0;
var checkboxes1 = document.getElementsByName('checkbox');

for (var j = 0; j < checkboxes1.length; j++) {
	if (checkboxes1[j].checked) {
		sum1++;
	}
}

if (sum1 > 5) {
	document.getElementById("error5").style.display = "block";
	flag = false;

} else {
	document.getElementById("error5").style.display = "none";
}

}
</script>

	<script type="text/javascript">
		changeQ1();
		changeQ2();
		changeQ3();
		changeQ4();
		changeQ5();
		changeQ6();
		mailinFormShow();
	</script>
	<script type="text/javascript">
		function validateForm1() {
			var flag = true;

			var sum1 = 0;
			var checkboxes1 = document.getElementsByName('contactMethod');

			for (var j = 0; j < checkboxes1.length; j++) {
				if (checkboxes1[j].checked) {
					sum1++;
				}
			}
			if (sum1 < 1) {
				document.getElementById("error2").style.display = "block";
				flag = false;
			} else {
				document.getElementById("error2").style.display = "none";
			}

			var x = document.getElementById('numberOfDays').value;

			if (x < 30) {
				document.getElementById("error1").style.display = "block";
				flag = false;
			} else {
				document.getElementById("error1").style.display = "none";
			}

			var sum1 = 0;
			var checkboxes1 = document.getElementsByName('checkbox');

			for (var j = 0; j < checkboxes1.length; j++) {
				if (checkboxes1[j].checked) {
					sum1++;
				}
			}

			if (sum1 != 5) {
				document.getElementById("error5").style.display = "block";
				flag = false;

			} else {
				document.getElementById("error5").style.display = "none";
			}

			if (flag) {
				return true;
			} else {
				$("html, body").animate({
					scrollTop : 0
				}, "fast");
				return false;
			}
		}
	</script>
</body>
</html>
<jsp:include page="bottom.jsp" />