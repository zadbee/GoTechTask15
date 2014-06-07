<jsp:include page="top.jsp" />
<div class="row marketing">
	<form id="form1" name="form1" onsubmit="return validateForm()"
		method="post" action="generate.do">
		
	<div class="content-row">
		<%
		Boolean onlyone = true;
		if(session.getAttribute("onlyone") != null){
			onlyone = (Boolean)session.getAttribute("onlyone");
		}
		if(!onlyone){
		%>
		
		<h4>Please list the financial institutions that jointly provide this notice.*</h4>
			<div id="error0" style="display: none">
				<h5 style="color: red;">The field could not be empty</h5>
			</div>

			<div id="div3">
				<p>
					<textarea id="question0" name="question0" class="form-control" rows="4"></textarea>
				</p>
			</div>
			<br/>
			
		<%
			};
			%>
	</div>
		<div class="content-row">
			<h4>How do you protect personal information? * (<font size="3sp"><a href="http://en.wikipedia.org/wiki/Personal_Information_Protection_and_Electronic_Documents_Act" target = "_blank" style="color: #707070">Reference</a></font>)</h4>
			<div id="error1" style="display: none">
				<h5 style="color: red;">The field could not be empty and the
					number of word is limited to 30</h5>
			</div>
			<p>
				<textarea id="question1" name = "question1" class="form-control" rows="5"
					maxlength="100" cols="10" placeholder="You may only provide additional information pertaining to your safeguards practices following the designated response to this question. Such information may include information about the use of cookies or other measures you use to safeguard personal information. Limited to a maximum of 30 additional words."></textarea>
			</p>
			<br />
			
			
			<h4>How do you collect the personal information?* (At least five
				methods)</h4>
			<div id="error2" style="display: none">
				<h5 style="color: red;">The field need at least five methods</h5>
			</div>
			<table>
			<tr>
			<td height="66">
			<div align="right">     
			<select name="locs" size="10" multiple style="width:25em" ondblclick="addItemAll(document.all.locs,document.all.mylocs)">
				<option>Open an account</option>
				<option>Deposit money</option>
				<option>Make deposits or withdrawals from your account</option>
				<option>Pay your bills</option>
				<option>Apply for a loan</option>
				<option>Use your credit or debit card</option>
				<option>Seek financial or tax advice</option>
				<option>Seek advice about your investments</option>
				<option>Apply for insurance</option>
				<option>Pay insurance premiums</option>
				<option>File an insurance claim</option>
				<option>Buy securities from us</option>
				<option>Sell securities to us</option>
				<option>Direct us to buy securities</option>
				<option>Direct us to sell your securities</option>
				<option>Enter into an investment advisory contract</option>
				<option>Give us your income information</option>
				<option>Provide employment information</option>
				<option>Give us your employment history</option>
				<option>Tell us about your investment or retirement portfolio</option>
				<option>Tell us about your investment or retirement earnings</option>
				<option>Apply for financing</option>
				<option>Apply for a lease</option>
				<option>Provide account information</option>
				<option>Give us your contact information</option>
				<option>Pay us by check</option>
				<option>Give us your wage statements</option>
				<option>Provide your mortgage information</option>
				<option>Make a wire transfer</option>
				<option>Tell us who receives the money</option>
				<option>Tell us where to send the money</option>
				<option>Show your government-issued ID</option>
				<option>Show your driver's license</option>
				<option>Order a commodity futures or option trade</option>
			</select>
			</div>
			</td>
			<td><p style="visibility:hidden;">aaa</p></td>
			<td>
			<p align="center">
			<input name="Submit3" type="button"  value=">>" onClick="addItem(document.all.locs,document.all.mylocs)">
			</p>
			<p align="center">
			<input name="Submit3" type="button"  value=">>>" onClick="addItemAll(document.all.locs,document.all.mylocs)">
			</p>
			<p align="center">
			<input name="Submit3" type="button"  value="<<<" onClick="delItemAll(document.all.locs,document.all.mylocs)">
			</p>
			<p align="center">
			<input name="Submit4" type="button"  value="<<" onClick="delItem(document.all.locs,document.all.mylocs)">
			</p></td>
			<td><p style="visibility:hidden;">aaa</p></td>
			<td height="66">
			<div align="left"> 
			<select name="mylocs" size="10" multiple  style="width:25em" ondblClick="delItem(document.all.locs,document.all.mylocs)">
			</select>
			</div>
			</td>
			</tr>
			</table>
			<br />
			
			
			<h4>What is the reason you don't allow user to limit all
				sharing? *</h4>
			<p>
				<textarea id="reason" name = "question3" class="form-control" rows="6" maxlength="100" placeholder="Hint: if the state privacy law provisions are described in &quot;Other Important Information&quot;, you must add the sentence: &quot;See below for more on your rights under state law.&quot;"></textarea>
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
		
		<div class="content-row">
		<%
		Boolean param1 = false;
		if(session.getAttribute("param1") != null){
			param1 = (Boolean)session.getAttribute("param1");
		}
		if(param1){
		%>
			<h4>Please list the affiliates you share with below.*</h4>
			<div id="error3" style="display: none">
				<h5 style="color: red;">The field could not be empty</h5>
			</div>
			<div id="div1">
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
			</div><br />
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
			
			<h4>Please list the nonaffiliates you share with below.*</h4>
			<div id="error4" style="display: none">
				<h5 style="color: red;">The field could not be empty</h5>
			</div>

			<div id="div2">
				<p>
					<textarea id="t2" name="question6" class="form-control" rows="4"></textarea>
				</p>
			</div><br />
			<%
			};
			%>
			<%
		Boolean param3 = false;
		if(session.getAttribute("param3") != null){
			param3 = (Boolean)session.getAttribute("param3");
		}
		if(param3){
		%>
			
			<h4>Please list the joint marketing partners below.*</h4>
			<div id="error5" style="display: none">
				<h5 style="color: red;">The field could not be empty</h5>
			</div>

			<div id="div3">
				<p>
					<textarea id="t3" name="question7" class="form-control" rows="4"></textarea>
				</p>
			</div>
			<br />
		<%
			};
			%>
			<h4>Do you have other important informations? (<font size="3sp"><a href="http://www.privacy.va.gov/docs/plregulations_po_book.pdf" target = "_blank" style="color: #707070">Reference</a></font>)</h4> 
			<p>
				<textarea id="t4" name="question8" class="form-control" rows="5" placeholder="Hint: This section is optional. Only the following types of information can appear in this box. 
(1) State and/or international privacy law information; and/or 
(2) Acknowledgment of receipt form."></textarea>
			</p>
			
			<br />
			<p>
				<button type="submit" class="btn btn-default" name="next" value="true">Generate Privacy Form</button>
			</p>
		</div>
	</form>
</div>
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
		var sum = document.all.mylocs.length+1;
		if (sum < 5) {
			flag = false;
			document.getElementById("error2").style.display = "block";
		} else {
			document.getElementById("error2").style.display = "none";
		}
		<%
		if(!onlyone){
		%>
		var q0 = document.getElementById('question0').value.length;
		if (q0 == 0) {
			flag = false;
			document.getElementById("error0").style.display = "block";
		} else {
			document.getElementById("error0").style.display = "none";
		}
		<%
		}
		%>
		<%
		if(param1){
		%>
		var q11 = document.getElementById('t11').value.length;
		var q12 = document.getElementById('t12').value.length;
		var q13 = document.getElementById('t13').value.length;
		if ((q11 == 0) & (q12 == 0) & (q13 == 0)) {
			flag = false;
			document.getElementById("error3").style.display = "block";
		} else {
			document.getElementById("error3").style.display = "none";
		}
		<%
		}
		%>
		<%
		if(param2){
		%>
		var q2 = document.getElementById('t2').value.length;
		if (q2 == 0) {
			flag = false;
			document.getElementById("error4").style.display = "block";
		} else {
			document.getElementById("error4").style.display = "none";
		}
		<%
		}
		%>
		<%
		if(param3){
		%>
		var q3 = document.getElementById('t3').value.length;
		if (q3 == 0) {
			flag = false;
			document.getElementById("error5").style.display = "block";
		} else {
			document.getElementById("error5").style.display = "none";
		}
		<%
		}
		%>
		return flag;
	}
</script>
<script>
		function addItemAll(source,target){
          for(var x=0;x<source.length;x++){
            var opt = source.options[x];
            target.options[target.options.length] = new Option(opt.text, opt.value,0,0);
          }
          for(var x=source.length-1;x>=0;x--){
                    source.options[x] = null;
          }
        }
		function delItemAll(source,target){
		  for(var x=0;x<target.length;x++){
            var opt = target.options[x];
            source.options[source.options.length] = new Option(opt.text, opt.value,0,0);
          }
          for(var x=target.length-1;x>=0;x--){
                    target.options[x] = null;
          }
        }
        
		function addItem(source,target){
		  var count = 0;
          for(var x=0;x<source.length;x++){
                var opt = source.options[x];
                if (opt.selected){
                  target.options[target.options.length] = new Option(opt.text, opt.value, 0, 0);
                  source.options[x].value=0;
                  count++;
                }
          }
         
          for (var y=count;y>0;y--){
          	for(var z=0;z<source.length;z++){
                if (source.options[z].value==0){
                  source.options[z]=null;
                }
          	}
          }
        }
		
    	function delItem(source,target){
    		var count = 0;
          for(var x=target.length-1;x>=0;x--){
                var opt = target.options[x];
                if (opt.selected){
                  source.options[source.options.length] = new Option(opt.text, opt.value, 0, 0);
                  target.options[x].value=0;
                  count++;
                  target.options[x] = null;
                }
          }
          
          for (var y=count;y>0;y--){
          	for(var z=0;z<target.length;z++){
                if (target.options[z].value==0){
                  target.options[z]=null;
                }
          	}
          }
        }
</script>
<jsp:include page="bottom.jsp" />
