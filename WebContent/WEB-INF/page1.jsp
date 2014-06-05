<jsp:include page="top.jsp" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {

		var addDiv = $('#addinput');
		var i = $('#addinput p').size();

		$('#addNew')
				.live(
						'click',
						function() {
							// aqui tengo decidir lo del select??, osea que quiero hacer?, que si es 21 - 15  - 7 , el usuario tendria que ponder
							// 3 ejercicios para ese?
							// o bien, activar una opcion select que sea
							// diferente repeticiones que disminuyen?
							$(
									'<p><input type="hidden" value='+i+'><l1><select  class="form-control" name="shareType" > <option value="income" >income'
											+ '</option><option value="investment experience" >investment experience</option>'
											+ '<option value="credit based insurance scores" >credit based insurance scores'
											+ '</option><option value="mortgage rates" >mortgage rates</option><option '
					+'value="checking acount information" >checking acount information</option>'
											+ '<option value="assets" >assets</option></select></li>'
											+ '<a href="#" id="remNew">Remove</a></p>')
									.appendTo(addDiv);

							i++;
							//<input type="text"  class="form-control"placeholder="Descripcion de Ejericio 1"
				// required name="description1">

							//<input type="text"  class="form-control"placeholder="Ejercicio 2" name="ej2">
							return false;
						});

		$('#remNew').live('click', function() {
			if (i > 0) {
				$(this).parents('p').remove();
				i--;
			}
			return false;
		});
	});
</script>
<script>
	function changeQ1() {

		var myselect = document.getElementById("question1").value;

		if (myselect == "No") {

			document.getElementById("noShare").selected = "true";
			document.getElementById("question1b").disabled = "true";

		} else {

			document.getElementById("question1b").disabled = false;

		}

	}
	function changeQ2() {

		var myselect = document.getElementById("question2").value;

		if (myselect == "No") {

			document.getElementById("noShare2").selected = "true";
			document.getElementById("question2b").disabled = "true";

		} else {

			document.getElementById("question2b").disabled = false;

		}

	}
	function changeQ3() {

		var myselect = document.getElementById("question3").value;

		if (myselect == "No") {

			document.getElementById("noShare3").selected = "true";
			document.getElementById("question3b").disabled = "true";

		} else {

			document.getElementById("question3b").disabled = false;

		}

	}
	function changeQ4() {

		var myselect = document.getElementById("question4").value;

		if (myselect == "No") {

			document.getElementById("noShare4").selected = "true";
			document.getElementById("question4b").disabled = "true";

		} else {

			document.getElementById("question4b").disabled = false;

		}

	}
	function changeQ5() {

		var myselect = document.getElementById("question5").value;

		if (myselect == "No") {

			document.getElementById("noShare5").selected = "true";
			document.getElementById("question5b").disabled = "true";

		} else {

			document.getElementById("question5b").disabled = false;

		}
		if (myselect == "Yes") {

			document.getElementById("share5").selected = "true";
			document.getElementById("question5b").disabled = "false";

		}

	}
	function changeQ6() {

		var myselect = document.getElementById("question6").value;

		if (myselect == "No") {

			document.getElementById("noShare6").selected = "true";
			document.getElementById("question6b").disabled = "true";

		} else {

			document.getElementById("question6b").disabled = false;

		}

		if (myselect == "Yes") {

			document.getElementById("share6").selected = "true";
			document.getElementById("question6b").disabled = "false";

		}

	}
</script>
<div class="table-module">
	<div>
		<h2 class="cpn-header">U.S. Consumer Privacy Notice</h2>
		<div class="content-section">
			<div class="content-row">
				<div class="content-section">
					<p style="text-align: right">
						Revision Date:<input class="form-control " type="text"
							id="datepicker" placeholder="Example : rev. October 2012"
							name="newDate" style="text-align: right">
					</p>
				</div>
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading">FACTS</td>
						<td class="cpn-details">
							<p>
								WHAT DOES <span id="username"></span> DO WITH YOUR PERSONAL
								INFORMATION?
							</p>
						</td>
					</tr>
				</table>
			</div>
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading">Why?</td>
						<td class="cpn-details">
							<p>Financial companies choose how they share your personal
								information. Under federal law, that means personally
								identifiable information. Federal law gives consumers the right
								to limit some but not all sharing. Federal law also requires us
								to tell you how we collect, share, and protect your personal
								information. Please read this notice carefully to understand
								what we do.</p>
						</td>
					</tr>
				</table>
			</div>
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading">What?</td>
						<td class="cpn-details">
							<p>The types of personal information we collect and share
								depend on the product or service you have with us.</p>
							<p>This information can include:</p>


							<ul>
								<div id="addinput">


									<l1> Social Security(Mandatory) </l1>


								</div>
							</ul> <a href="#" id="addNew">Click Here To add More Items</a>
						</td>
					</tr>
				</table>
			</div>
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td class="cpn-heading">How?</td>
						<td class="cpn-details">
							<p>
								All financial companies need to share customers&rsquo; personal
								information to run their everyday business. In the section
								below, we list the reasons financial companies can share their
								customers&rsquo; personal information; the reasons <span
									id="username2"></span> chooses to share; and whether you can
								limit this sharing.
							</p>
						</td>
					</tr>
				</table>
			</div>
		</div>

		<div class="content-section ">
			<table border="0" class="table table-striped"
				style="text-align: left"
				summary="This 3-column table provides information about the reasons why Bank of America can share your personal information.">
				<thead>
					<tr>
						<th scope="col">Reasons we can share your personal
							information</th>
						<th scope="col">Does <span id="username3"></span> share?
						</th>
						<th scope="col">Can you limit this sharing?</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><strong>For our everyday business purposes </strong>&mdash;
							such as to process your transactions, maintain your account(s),
							respond to court orders and legal investigations, or report to
							credit bureaus</td>
						<td class="centered-td">Yes (Mandatory)</td>
						<td class="centered-td">No (Mandatory)</td>
					</tr>
					<tr>
						<td><strong>For our marketing purposes </strong>&mdash; to
							offer our products and services to you</td>
						<td class="centered-td"><select id="question1"
							onchange="changeQ1()"><option value="Yes">yes</option>
								<option value="No">No</option></select></td>
						<td class="centered-td"><select id="question1b"
							readonly="false"><option value="Yes">yes</option>
								<option value="No">No</option>
								<option value="No" id="noShare">we do not share</option></select></td>
					</tr>
					<tr>
						<td><strong> For joint marketing with other
								financial companies</strong></td>
						<td class="centered-td"><select id="question2"
							onchange="changeQ2()"><option value="Yes">yes</option>
								<option value="No">No</option></select></td>
						<td class="centered-td"><select id="question2b"
							readonly="false"><option value="Yes">yes</option>
								<option value="No">No</option>
								<option value="No" id="noShare2">we do not share</option></select></td>
					</tr>
					<tr>
						<td><strong>For our affiliates&rsquo; everyday
								business purposes </strong>&mdash; Information about your transactions
							and experiences</td>
						<td class="centered-td"><select id="question3"
							onchange="changeQ3()"><option value="Yes">yes</option>
								<option value="No">No</option></select></td>
						<td class="centered-td"><select id="question3b"
							readonly="false"><option value="Yes">yes</option>
								<option value="No">No</option>
								<option value="No" id="noShare3">we do not share</option></select></td>
					</tr>
					<tr>
						<td><strong>For our affiliates&rsquo; everyday
								business purposes </strong>&mdash; Information about your
							creditworthiness</td>
						<td class="centered-td"><select id="question4"
							onchange="changeQ4()"><option value="Yes">yes</option>
								<option value="No">No</option></select></td>
						<td class="centered-td"><select id="question4b"
							readonly="false"><option value="Yes">yes</option>
								<option value="No">No</option>
								<option value="No" id="noShare4">we do not share</option></select></td>
					</tr>
					<tr>
						<td><strong>For our affiliates to market to you </strong></td>
						<td class="centered-td"><select id="question5"
							onchange="changeQ5()"><option value="Yes">yes</option>
								<option value="No">No</option></select></td>
						<td class="centered-td"><select id="question5b"
							readonly="false"><option value="Yes" id="share5">yes</option>
								<option value="No" id="noShare5">we do not share</option></select></td>
					</tr>

					<tr>
						<td><strong>For nonaffiliates to market to you </strong></td>
						<td class="centered-td"><select id="question6"
							onchange="changeQ6()"><option value="Yes">yes</option>
								<option value="No">No</option></select></td>
						<td class="centered-td"><select id="question6b"
							readonly="false"><option value="Yes" id="share6">yes</option>
								<option value="No" id="noShare6">we do not share</option></select></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="col-lg-10">
	<h4>1. What opt out methods will you offer?</h4>
	<label><input name="optoutMethod" id="phone" type="checkbox"
		value="" />Phone </label> <input type="text" id="phoneText"> Is it a
	toll-free phone ?<select name="opt-out">
		<option value="toll-free">Yes</option>
		<option value="toll-free">No</option>
	</select> <br /> <label><input name="optoutMethod" id="website"
		type="checkbox" value="" />Website </label> <input type="text"
		id="websiteText"> <br /> <label><input
		name="optoutMethod" id="mailin" type="checkbox" value=""
		onclick="showdiv(this)" />Mail-in Form</label>
	<h4>2. How many days can you begin sharing new customer's
		information from the date you sent the notice to the customer?</h4>
	<input type="text" id="numberOfDays"> (No less than 30 days.)

	<h4>3. What customer service contact information will you provide?</h4>
	<label><input name="contactMethod" id="phone1" type="checkbox"
		value="" />Phone </label> <input type="text" id="phoneText1"> Is it a
	toll-free phone ?<select name="opt-out">
		<option value="toll-free">Yes</option>
		<option value="toll-free">No</option>
	</select> <br /> <label><input name="contactMethod" type="checkbox"
		id="website1" value="" />Website </label> <input type="text"
		id="websiteText1"> <br />

	<p>
		<button type="submit" id="submitButton1" class="btn btn-default"
			onclick="validateForm1()">Next Page</button>
	</p>
</div>
<div class="col-lg-10" id="mailinForm" style="display: none">
	<br />
	<h4>Mail in opt-out form</h4>
	<br />
	<h4>1. Do you need additional information from customers except
		for customer's name and address?</h4>


	<label><input name="opt-out" type="checkbox" value=""
		onclick="showdiv1(this)" />Additional Information </label>

	<div id="optionalInfo" style="display: none">
		<p>
			<input type="radio" name="optionsRadios" id="radio1" value="share"
				checked>Account Number<br />
		</p>
		<p>
			<input type="radio" name="optionsRadios" id="radio1" value="share">Opt-out
			Number<br />
		</p>
		<p>
			<input type="radio" name="optionsRadios" id="radio1" value="share">Truncated
			Account Number<br />
		</p>
	</div>
	<h4>2. Mail to Address:</h4>
	<br /> Street: <input type="text"> Apt #: <input type="text">
	<br /> City: <input type="text"> State: <select>
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
	</select> Zip: <input type="text"> <br />
	<h4>3. Will you provide your joint accountholders the choice to
		opt out for only one accountholder?</h4>

	<p>
		<input type="radio" name="optionsRadios1" id="radio1" value="share"
			onclick="showdiv2(this)">Yes<br />
	</p>
	<p>
		<input type="radio" name="optionsRadios1" id="radio2" value="share"
			onclick="blockdiv2(this)" checked>No<br />
	</p>
	<div id="jointAccount" style="display: none">
		<h4>If you have a joint account, will you apply your choice(s)
			only to yourself?</h4>
		<p>
			<input type="radio" name="optionsRadios" 2 id="radio3" value="share">Yes<br />
		</p>
		<p>
			<input type="radio" name="optionsRadios2" id="radio4" value="share"
				checked>No<br />
		</p>
		<h4>Are you a financial institutions that provide insurance
			products or services?</h4>
		<p>
			<input type="radio" name="optionsRadios3" id="radio5" value="share">Yes<br />
		</p>
		<p>
			<input type="radio" name="optionsRadios3" id="radio6" value="share"
				checked>No<br />
		</p>
	</div>
	<h4>4. Please select what do you want to limit.</h4>
	<br />
	<p>
		<label><input name="opt-out" type="checkbox" value="" />Do
			not share information about your creditworthiness with your
			affiliates for their everyday business purposes. </label>
	</p>
	<p>
		<input type="radio" name="optionsRadios4" id="radio7" value="share">Yes<br />
	</p>
	<p>
		<input type="radio" name="optionsRadios4" id="radio8" value="share"
			checked>No<br />
	</p>
	<label><input name="opt-out" type="checkbox" value="" />Do not
		allow your affiliates to use your personal information to market to
		you.</label>
	<p>
		<input type="radio" name="optionsRadios5" id="radio9" value="share">Yes<br />
	</p>
	<p>
		<input type="radio" name="optionsRadios5" id="radio10" value="share"
			checked>No<br />
	</p>
	<label><input name="opt-out" type="checkbox" value="" />Do not
		share your personal information with nonaffiliates to market their
		products and services to you.</label>
	<p>
		<input type="radio" name="optionsRadios6" id="radio11" value="share">Yes<br />
	</p>
	<p>
		<input type="radio" name="optionsRadios6" id="radio12" value="share"
			checked>No<br />
	</p>
	<p>
		<h4>5. Do you offer an opt-out for your own marketing?</h4>
					      <p>
						<input type="radio" name="optionsRadios7" id="radio13"
			value="share" onclick="showdiv4(this)">Yes<br />
					    </p>  
					    <p>
						<input type="radio" name="optionsRadios7" id="radio14"
			value="share" onclick="blockdiv4(this)" checked>No<br />
					    </p>
					    <div id="selectStatement" style="display:none"> 
					    <h4>Please select one of the following two statements:</h4>
					    <input type="radio" name="optionsRadios9" id="radio1"
			value="share">Do not share my personal information to market to me.<br />
					    </p> 
					         <p>
						<input type="radio" name="optionsRadios8" id="radio15"
				value="share">Yes<br />
					    </p>  
					    <p>
						<input type="radio" name="optionsRadios8" id="radio16"
				value="share" checked>No<br />
					    </p>
					    
					    <p>
						<input type="radio" name="optionsRadios9" id="radio17"
				value="share">Do not use my personal information to market to me.<br />
					    </p>
					         <p>
						<input type="radio" name="optionsRadios10" id="radio18"
				value="share">Yes<br />
					    </p>  
					    <p>
						<input type="radio" name="optionsRadios10" id="radio19"
				value="share" checked>No<br />
					    </p>
					     </div> 
					    <h4>6. Do you offer an opt-out for joint marketing?</h4>
					      <p>
						<input type="radio" name="optionsRadios11" id="radio20"
			value="share" onclick="showdiv3(this)">Yes<br />
					    </p>  
					    <p>
						<input type="radio" name="optionsRadios11" id="radio21"
			value="share" onclick="blockdiv3(this)" checked>No<br />
					    </p>
					    <div id="jointMarket" style="display:none">
					    <h4>Will you share your personal information with other financial institutions to jointly market to you?</h4>
					      <p>
						<input type="radio" name="optionsRadios12" id="radio22"
				value="share">Yes<br />
					    </p>  
					    <p>
						<input type="radio" name="optionsRadios12" id="radio23"
				value="share" checked>No<br />
					    </p>
					    </div>
					    <h4>7. Do you want to include a barcode and/or "tagline" at the bottom of page one? </h4>
					    <label><input name="opt-out" type="checkbox" value="" />Barcode </label> <input
		type="file" id="exampleInputFile">
					    <br />
					    <label><input name="opt-out" type="checkbox" value="" />Tagline </label><input
		type="text">
						
					    </p>
					    
						
						
						<button type="submit" class="btn btn-default" id="submitButton2"
		onclick="validateForm2()">Next Page</button>
					</p>
				</div>
<script>
	function processForm() {
		var parameters = location.search.substring(1).split("&");
		var temp = parameters[0].split("=");
		l = unescape(temp[1]);

		document.getElementById("username").innerHTML = l.toUpperCase();
		document.getElementById("username2").innerHTML = l.toUpperCase();
		document.getElementById("username3").innerHTML = l.toUpperCase();
	}
	processForm();
	changeQ5();
	changeQ6()
</script>
<script>
		function validateForm1() {
	
			
 		var sum = 0;
			var checkboxes = document.getElementsByName('optoutMethod');
			for (var i = 0; i < checkboxes.length; i++) {
				if (checkboxes[i].checked) {
					
					sum++;
				}
			}
			if (sum < 1) {
				alert("You need to select at least one of the opt-out methods.");
				return false;
			} 
			var phone = document.getElementById('phoneText').value;
			var website = document.getElementById('websiteText').value;
			if ((document.getElementById('phone').checked == true) && (phone == null || phone == "")) {
				alert("Please fill in phone number");
				return false;
			}
			
			if ((document.getElementById('website').checked == true) && (website == null || website == "")) {
				alert("Please fill in website address");
				return false;
			} 
			
			var sum1 = 0;
			var checkboxes1 = document.getElementsByName('contactMethod');
			
		 	for (var j = 0; j < checkboxes1.length; j ++) {
				if (checkboxes1[j].checked) {
					sum1 ++;
				}
			} 
		 	if (sum1 < 1) {
				alert("You need to select at least one of the contact method.");
				return false;
			} 
			var phone1 = document.getElementById('phoneText1').value;
			var website1 = document.getElementById('websiteText1').value;
			if ((document.getElementById('phone1').checked == true) && (phone1 == null || phone1 == "")) {
				alert("Please fill in phone number");
				return false;
			}
			
			if ((document.getElementById('website1').checked == true) && (website1 == null || website1 == "")) {
				alert("Please fill in website address");
				return false;
			} 
			var x = document.getElementById('numberOfDays').value;
			if (x == null || x == "" ) {
				alert("The number of days is needed");
				return false;
			}
			else if (x < 30) {
				alert("The number of days need to be larger than 30");
				return false;
			}

			
			/* if (document.getElementById('opt-out1').checked == false && document.getElementById('opt-out2').checked && document.getElementById('opt-out3').checked == false) {
				alert("You need to select at least one of the opt-out methods.");
				return false;
			} */
		}
		function showdiv(ch){
	        if(ch.checked){
	            document.getElementById("mailinForm").style.display="block";
	        }
	        else{
	            document.getElementById("mailinForm").style.display="none";
	        }
	    }
		function showdiv1(ch){
	        if(ch.checked){
	            document.getElementById("optionalInfo").style.display="block";
	        }
	        else{
	            document.getElementById("optionalInfo").style.display="none";
	        }
	    }
		function showdiv2(ch){
	        if(ch.checked){
	            document.getElementById("jointAccount").style.display="block";
	        }
	        else{
	            document.getElementById("jointAccount").style.display="none";
	        }
	    }
		function blockdiv2(ch){
	        if(ch.checked){
	            document.getElementById("jointAccount").style.display="none";
	        }
	        else{
	            document.getElementById("jointAccount").style.display="block";
	        }
	    }
		function showdiv3(ch){
	        if(ch.checked){
	            document.getElementById("jointMarket").style.display="block";
	        }
	        else{
	            document.getElementById("jointMarket").style.display="none";
	        }
	    }
		function blockdiv3(ch){
	        if(ch.checked){
	            document.getElementById("jointMarket").style.display="none";
	        }
	        else{
	            document.getElementById("jointMarket").style.display="block";
	        }
	    }
		function showdiv4(ch){
	        if(ch.checked){
	            document.getElementById("selectStatement").style.display="block";
	        }
	        else{
	            document.getElementById("selectStatement").style.display="none";
	        }
	    }
		function blockdiv4(ch){
	        if(ch.checked){
	            document.getElementById("selectStatement").style.display="none";
	        }
	        else{
	            document.getElementById("selectStatement").style.display="block";
	        }
	    }
		
		
	     /* $('submitButton1').onclick(function() {
			if($('#mailin').is(':checked')) {
				$('#mailinForm').show();
				return false;
			}
		});  */
		
	</script>
		<jsp:include page="bottom.jsp" />