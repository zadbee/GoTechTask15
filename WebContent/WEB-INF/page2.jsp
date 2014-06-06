<jsp:include page="top.jsp" />
<div class="row marketing">
	<form id="form1" name="form1" onsubmit="return validateForm()"
		method="post" action="generate.do">
		<div class="col-lg-10">
			<h4>How do you protect personal information? *(<font size="3sp"><a href="http://en.wikipedia.org/wiki/Personal_Information_Protection_and_Electronic_Documents_Act" target = "_blank" style="color: #707070">Reference</a></font>)</h4>
			<div id="error1" style="display: none">
				<h5 style="color: red;">The field could not be empty and the
					number of word is limited to 30</h5>
			</div>
			<p>
				<textarea id="question1" name = "question1" class="form-control" rows="5"
					maxlength="100" cols="10"></textarea>
			</p>
			<br />
			<h4>How do you collect the personal information? (At least five
				methods)*</h4>
			<div id="error2" style="display: none">
				<h5 style="color: red;">The field need at least five methods</h5>
			</div>
			<p>
				<label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option1"> Open an account
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option2"> Deposit money
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option3"> Pay your bills
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option4"> Apply for a loan
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option5"> Use your
					credit or debit card
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option6"> Seek financial or tax
					advice
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option7"> Apply for insurance
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option8"> Pay
					insurance premiums
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option9"> File an insurance claim
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option10"> Seek advice about your
					investments
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option11"> Buy
					securities from us
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option12"> Sell securities to us
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option13"> Direct us to buy
					securities
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option14"> Make
					deposits or withdrawals from your account
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option15"> Enter into an investment
					advisory contract
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option16"> Give us
					your income information
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option17"> Provide employment
					information
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option18"> Give us
					your employment history
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option19"> Tell us about your
					investment or retirement portfolio
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option20"> Give us
					your income information
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option21"> Provide employment
					information
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option22"> Give us
					your employment history
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option23"> Tell us about your
					investment or retirement portfolio
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option24"> Tell us
					about your investment or retirement earnings
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option25"> Apply for financing
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option26"> Apply for
					a lease
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option27"> Provide account
					information
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option28"> Give us
					your contact information
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option29"> Pay us by check
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option30"> Give us
					your wage statements
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option31"> Provide your mortgage
					information
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option32"> Make a
					wire transfer
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option33"> Tell us who receives the
					money
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option34"> Tell us
					where to send the money
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option35"> Show your
					government-issued ID
				</label> <br /> <label class="checkbox-inline"> <input
					type="checkbox" name="checkbox" value="option36"> Show your
					driver's license
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="checkbox" value="option37"> Order a commodity futures
					or option trade
				</label>
			</p>
			<br />
			<h4>What is the reason you don't allow user to limit all
				sharing? *</h4>
			<p>
				<textarea id="reason" name = "question3" class="form-control" rows="6" maxlength="100">Hint: if the state privacy law provisions are described in "Other important information", you must add the sentence:"See below for more on your rights under state law."</textarea>
			</p>
			<br />
			<h4>What happens when a customer limit sharing
			for an account he hold <br/>jointly with someone else? *</h4>
			<div class="radio">
				<label> <input type="radio" name="radios"
					id="LimitShare1" value="radio1" checked> "Your choices will
					apply to everyone on your account."
				</label>
			</div>
			<div class="radio">
				<label> <input type="radio" name="radios"
					id="LimitShare2" value="radio2"> "Your choices will apply
					to everyone on your account-unless you tell us otherwise."
				</label>
			</div>
			<br />
		</div>
		<div class="col-lg-10">
		<%
		Boolean param1 = false;
		if(session.getAttribute("param1") != null){
			param1 = (Boolean)session.getAttribute("param1");
		}
		if(param1){
		%>
			<h4>Do you share personal information with the affiliates? *</h4>
			<div id="error3" style="display: none">
				<h5 style="color: red;">The field could not be empty</h5>
			</div>
			<p>
				<input type="radio" name="r1" id="r11" value="0"
					onclick="block1(this)" checked>No<br />
			</p>
			<p>
				<input type="radio" name="r1" id="r12" value="1"
					onclick="show1(this)">Yes<br />
			</p>

			<div id="div1" style="display: none">
				<label>Please list the affiliates you share with below.*</label><br />
				<label>Financial companies:</label>
				<p>
					<textarea id="t11" name = "question5_1" class="form-control" rows="4"></textarea>
				</p>
				<label>Nonfinancial companies:</label>
				<p>
					<textarea id="t12" name = "question5_2"class="form-control" rows="4"></textarea>
				</p>
				<label>Others:</label>
				<p>
					<textarea id="t13" name = "question5_3"class="form-control" rows="4"></textarea>
				</p>
			</div>
			<%
			};
			%>
			<%
		Boolean param2 = false;
		if(session.getAttribute("param2") != null){
			param2 = (Boolean)session.getAttribute("param2");
		}
		if(param2){
		%>
			<br />
			<h4>Do you share with nonaffiliated third parties? *</h4>
			<div id="error4" style="display: none">
				<h5 style="color: red;">The field could not be empty</h5>
			</div>
			<p>
				<input type="radio" name="r2" id="r21" value="0"
					onclick="block2(this)" checked>No<br />
			</p>
			<p>
				<input type="radio" name="r2" id="r22" value="1"
					onclick="show2(this)">Yes<br />
			</p>

			<div id="div2" style="display: none">
				<label>Please list the nonaffiliates you share with below.*</label><br />
				<p>
					<textarea id="t2" name="question6" class="form-control" rows="4"></textarea>
				</p>
			</div>
			<%
			};
			%>
			<br />
			
			<h4>Do you shares personal information for joint marketing? *</h4>
			<div id="error5" style="display: none">
				<h5 style="color: red;">The field could not be empty</h5>
			</div>
			<p>
				<input type="radio" name="r3" id="r31" value="0"
					onclick="block3(this)" checked>No<br />
			</p>
			<p>
				<input type="radio" name="r3" id="r32" value="1"
					onclick="show3(this)">Yes<br />
			</p>

			<div id="div3" style="display: none">
				<label>Please list the joint marketing partners below.*</label><br />
				<p>
					<textarea id="t3" name="question7" class="form-control" rows="4"></textarea>
				</p>
			</div>
			<br />

			<h4>Other important informations(<font size="3sp"><a href="http://www.privacy.va.gov/docs/plregulations_po_book.pdf" target = "_blank" style="color: #707070">Reference</a></font>)</h4> 
			<label> Hint: This section is optional. Only the following types of
				information can appear in this box.<br /> (1) State and/or
				international privacy law information; and/or <br /> (2)
				Acknowledgment of receipt form.
			</label><br />
			<p>
				<textarea id="t4" name="question8" class="form-control" rows="5">Hint: This section is optional. Only the following types of information can appear in this box.
(1) State and/or international privacy law information; and/or
(2)Acknowledgment of receipt form.</textarea>
			</p>
			<br /> <br />
			<p>
				<button type="submit" class="btn btn-default" name="next" value="true">Generate</button>
			</p>
		</div>
	</form>
</div>
<script>
	var d1 = document.getElementById('div1');
	var d2 = document.getElementById('div2');
	var d3 = document.getElementById('div3');
	var d4 = document.getElementById('div4');
	function show1(ch) {
		if (ch.checked) {
			document.getElementById("div1").style.display = "block";
		} else {
			document.getElementById("div1").style.display = "none";
		}
	}
	function show1(ch) {
		if (ch.checked) {
			document.getElementById("div1").style.display = "block";
		} else {
			document.getElementById("div1").style.display = "none";
		}
	}
	function block1(ch) {
		if (ch.checked) {
			document.getElementById("div1").style.display = "none";
		} else {
			document.getElementById("div1").style.display = "block";
		}
	}

	function show2(ch) {
		if (ch.checked) {
			document.getElementById("div2").style.display = "block";
		} else {
			document.getElementById("div2").style.display = "none";
		}
	}
	function block2(ch) {
		if (ch.checked) {
			document.getElementById("div2").style.display = "none";
		} else {
			document.getElementById("div2").style.display = "block";
		}
	}

	function show3(ch) {
		if (ch.checked) {
			document.getElementById("div3").style.display = "block";
		} else {
			document.getElementById("div3").style.display = "none";
		}
	}
	function block3(ch) {
		if (ch.checked) {
			document.getElementById("div3").style.display = "none";
		} else {
			document.getElementById("div3").style.display = "block";
		}
	}
</script>
<script>
	function validateForm() {
		var flag = true;
		var text = document.getElementById('question1').value;
		var len = text.split(" ");
		if (len == 0 || len > 30) {
			flag = false;
			document.getElementById("error1").style.display = "block";
		} else {
			document.getElementById("error1").style.display = "none";
		}
		var sum = 0;
		var checkboxes = document.getElementsByName('checkbox');
		for (var i = 0; i < checkboxes.length; i++) {
			if (checkboxes[i].checked) {
				sum++;
			}
		}
		if (sum < 5) {
			flag = false;
			document.getElementById("error2").style.display = "block";
		} else {
			document.getElementById("error2").style.display = "none";
		}
		var r1 = document.getElementById('r12');
		var r2 = document.getElementById('r22');
		var r3 = document.getElementById('r32');

		var q11 = document.getElementById('t11').value.length;
		var q12 = document.getElementById('t12').value.length;
		var q13 = document.getElementById('t13').value.length;
		var q2 = document.getElementById('t2').value.length;
		var q3 = document.getElementById('t3').value.length;

		if (r1.checked) {
			if ((q11 == 0) & (q12 == 0) & (q13 == 0)) {
				flag = false;
				document.getElementById("error3").style.display = "block";
			} else {
				document.getElementById("error3").style.display = "none";
			}
		}

		if (r2.checked) {
			if (q2 == 0) {
				flag = false;
				document.getElementById("error4").style.display = "block";
			} else {
				document.getElementById("error4").style.display = "none";
			}
		}

		if (r3.checked) {
			if (q3 == 0) {
				flag = false;
				document.getElementById("error5").style.display = "block";
			} else {
				document.getElementById("error5").style.display = "none";
			}
		}
		return flag;
	}
</script>
<jsp:include page="bottom.jsp" />
