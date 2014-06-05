<jsp:include page="top.jsp" />
		<div class="row marketing">
			<form id="form1" name="form1" onsubmit="return validateForm()"
				method="post">
				<div class="col-lg-10">
					<h4>1.How do you protect personal information? *</h4>
					<p>
					<textarea id = "question1" class="form-control" rows="5" maxlength="100" cols = "10"></textarea>
					</p>
					<br />
					<h4>2. How do you collect the personal information? *</h4>
					<p>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option1"> Open an account
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option2"> Deposit money
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option3"> Pay your bills
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option4"> Apply for a loan
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option5"> Use your credit or debit card
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option6"> Seek financial or tax advice
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option7"> Apply for insurance
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option8"> Pay insurance premiums
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option9"> File an insurance claim
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox"  value="option10"> Seek advice about your investments
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option11"> Buy securities from us
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option12"> Sell securities to us
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option13"> Direct us to buy securities
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option14"> Make deposits or withdrawals from your account
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option15"> Enter into an investment advisory contract
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option16"> Give us your income information
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option17"> Provide employment information
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option18"> Give us your employment history
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option19"> Tell us about your investment or
								retirement portfolio
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option20"> Give us your income information
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option21"> Provide employment information
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option22"> Give us your employment history
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option23"> Tell us about your investment or
								retirement portfolio
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option24"> Tell us about your investment or
								retirement earnings
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option25"> Apply for financing
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option26"> Apply for a lease
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option27"> Provide account information
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option28"> Give us your contact information
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option29"> Pay us by check
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option30"> Give us your wage statements
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option31"> Provide your mortgage information
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option32"> Make a wire transfer
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option33"> Tell us who receives the money
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option34"> Tell us where to send the money
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option35"> Show your government-issued ID
						</label>
						<br/>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option36"> Show your driver's license
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="checkbox" value="option37"> Order a commodity futures or option
								trade
						</label>
						<br/>
					</p>
					<br />
					<h4>3. What is the reason you don't allow user to limit all sharing? *</h4>
					<label>
				    <input type="checkbox" id = "AddFederalLaw" value="" onclick="changeContent(this)">
				    	Click to add federal law
				    </label>
					<p>
						<textarea id="reason" class="form-control" rows="6" maxlength="100"></textarea>
					</p>
					<br />
					<h4>4. What happens when a customer limit sharing for an account he hold jointly with someone else? *</h4>
					<div class="radio">
					  <label>
					    <input type="radio" name="optionsRadios" id="LimitShare1" value="radio1" checked>
					    	"Your choices will apply to everyone on your account."
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input type="radio" name="optionsRadios" id="LimitShare2" value="radio2">
					    "Your choices will apply to everyone on your account-unless you tell us otherwise."
					  </label>
					</div>
					<br />
				</div>
				<div class="col-lg-10">
					<h4>5.Affiliates *</h4>
					<label><input type="checkbox" id = "c1" value="" onclick="show(div1)"/>
				    	I have affiliates.</label>
				    <br/><br/>
				    
				    <div id="div1" style="display:none">
				    <label><input type="checkbox" id = "c2" value="" onclick="show(div2)"/>
				    	I share personal information with the affiliates.</label> <br/><br/>
				    </div>
				    
				    <div id="div2" style="display:none">
					<label>Please list the affiliates you share with below.*</label><br/>
				    <label>Financial companies:</label>
					<p>
						<textarea id = "t11" class="form-control" rows="4"></textarea>
					</p>
					<label>Nonfinancial companies:</label>
					<p>
						<textarea id = "t12" class="form-control" rows="4"></textarea>
					</p>
					<label>Others:</label>
					<p>
						<textarea id = "t13" class="form-control" rows="4"></textarea>
					</p>
					</div>
					
					<br />
					
					<h4>6.Nonaffiliates *</h4>
					<label><input type="checkbox" id = "c3" value="" onclick="show(div3)"/>
				    	I share with nonaffiliated third parties.</label>
				    <br/><br/>
				    
				    <div id="div3" style="display:none">
				    <label>Please list the nonaffiliates you share with below.*</label><br/>
				    <p>
						<textarea id = "t2" class="form-control" rows="4"></textarea>
					</p>
					</div>
					
					<br />
					
					<h4>7.Joint Marketing *</h4>
					<label><input type="checkbox" id= "c4" value="" onclick="show(div4)"/>
				    	I shares personal information for joint marketing.</label>
				    <br/><br/>
				    
				    <div id="div4" style="display:none">
				    <label>Please list the joint marketing partners below.*</label><br/>
				    <p>
						<textarea id = "t3" class="form-control" rows="4"></textarea>
					</p>
					</div>
					<br />
					
					<h4>8.Other important informations </h4>
					<label>
					This section is optional. Only the following types of information can appear in this box.<br/>
				    (1) State and/or international privacy law information; and/or <br/>
					(2) Acknowledgment of receipt form.</label><br/>
				    <p>
						<textarea id = "t4" class="form-control" rows="5"></textarea>
					</p>
					<br />
					
					<br />
					<p>
						<button type="submit" class="btn btn-default">Generate</button>
					</p>
				</div>
			</form>
		</div>
				<script>
		    var d1 = document.getElementById('div1');
		    var d2 = document.getElementById('div2');
		    var d3 = document.getElementById('div3');
		    var d4 = document.getElementById('div4');
			document.getElementById('c1').onchange = function() {
			    d1.style.display = this.checked ? 'block' : 'none';
			};
			document.getElementById('c2').onchange = function() {
			    d2.style.display = this.checked ? 'block' : 'none';
			};
			document.getElementById('c3').onchange = function() {
			    d3.style.display = this.checked ? 'block' : 'none';
			};
			document.getElementById('c4').onchange = function() {
			    d4.style.display = this.checked ? 'block' : 'none';
			};
	</script>
	<script>
		function changeContent(cb){
			if(cb.checked == true){
				document.getElementById("reason").value = "Federal law gives you the right to limit only:\n1. Sharing for"
				+ " affiliates' everyday business purposes-information about your creditworthiness\n"
				+ "2. Affiliates from using your information to market to you\n"
				+ "3. Non affiliates to market to you\n";
			}else{
				document.getElementById("reason").value = "";
			}
		}
	</script>
	<script>
		function validateForm() {
			var text = document.getElementById('question1').value;
			var len = text.split(" ");
			if(len > 30){
				alert("Question1 is limited to 30 words");
				return false;
			}
			var sum = 0;
			var checkboxes = document.getElementsByName('checkbox');
			for (var i = 0; i < checkboxes.length; i++) {
				if (checkboxes[i].checked) {
					//vals += ","+checkboxes[i].value;
					sum++;
				}
			}
			if (sum < 5) {
				alert("At least five methods to collect information");
				return false;
			}
			var c1 = document.getElementById('c1');
			var c2 = document.getElementById('c2');
			var c3 = document.getElementById('c3');
			var c4 = document.getElementById('c4');
			
			var q11 = document.getElementById('t11').value.length;
			var q12 = document.getElementById('t12').value.length;
			var q13 = document.getElementById('t13').value.length;
			var q2 = document.getElementById('t2').value.length;
			var q3 = document.getElementById('t3').value.length;
			
			if ((c1.checked) & (c2.checked)){
				if ((q11==0)&(q12==0)&(q13==0)){
					alert("Please fill in the names of the affiliates you share with.");
					return false;
				}
			}
			
			if (c3.checked){
				if (q2==0){
					alert("Please fill in the names of the nonaffiliates you share with.");
					return false;
				}
			}
			
			if (c4.checked){
				if (q3==0){
					alert("Please fill in the names of the joint marketing partners.");
					return false;
				}
			}
		}
	</script>
<jsp:include page="bottom.jsp" />	
