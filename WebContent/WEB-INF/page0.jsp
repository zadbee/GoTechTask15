<jsp:include page="top.jsp" />
		<div class="row marketing">
			<form id="form1" action="page0.do" onsubmit="return validateForm()" method="post">
				<div class="col-lg-10">
					<h4>1.What is the name of your institution? *</h4>
					<p>
						<input type="text" class="form-control" name="name"
							data-validation="length" data-validation-length="min4">
					</p>
					<br/>

					<h4>2. What opt out communication methods will you offer? (At least one) *</h4>
					<p>
						<input type="checkbox" name="opt-out" value="1"> Phone<br/>
						<input type="checkbox" name="opt-out" value="2"> E-mail<br/>
						<input type="checkbox" name="opt-out" value="4"> Mail-in<br/>
						<input type="checkbox" name="opt-out" value="5"> Third Party Cookie OptOut<br/>
						<a href="http://www.allaboutcookies.org/manage-cookies/opt-out-cookies.html" target="_blank">What is Cookie OptOut</a><br>
						<input type="checkbox" name="opt-out" value="6"> Do Not Track Plugin<br/><a href="http://en.wikipedia.org/wiki/DoNotTrackMe" target="_blank">What is Do Not Track</a>
					</p>

					<h4>3. If any of the following statements is true please select Yes: *</h4>
					<ul>
						<li>Your organization does not have affiliates</li>
						<li>Your affiliates(if you have any) do not use personal information in a manner that requires an optout</li>
						<li>Your organization provides the affiliate marketing notice separately.</li>
					</ul>
					<table style="width: 100%">
						<tr>
							<td><input type="radio" name="optionsRadio" id="radio1" value="notshare"
							checked> Yes</td>
							<td><input type="radio" name="optionsRadio" id="radio2" 
							value="share"> No</td>
						</tr>
					</table>
					<br/>
					<p>
						<button type="submit" class="btn btn-default" name="next" value="true">Next Page</button>
					</p>
				</div>
			</form>
		</div>
		<script>
		function validateForm() {
			var sum = 0;
			var checkboxes = document.getElementsByName('opt-out');
			for (var i = 0; i < checkboxes.length; i++) {
				if (checkboxes[i].checked) {
					sum++;
				}
			}
			if (sum < 1) {
				alert("You must select at least one opt-out method.");
				return false;
			}
		}
	</script>
<jsp:include page="bottom.jsp" />		