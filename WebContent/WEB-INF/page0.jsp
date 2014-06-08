<jsp:include page="top.jsp" />
<div class="row marketing">
	<form id="form1" action="page0.do" onsubmit="return validateForm()"
		method="post">
		<div class="content-row">
			<h4>What is the name of your institution? *</h4>
			<p>
				<input type="text" class="form-control" id = "name" name="name"
					data-validation="length" data-validation-length="min4">
			</p>
			<br />

			<h4>What opt out communication methods will you offer? (At
				least one) *</h4>
			<table style="width: 100%">
				<tr>
				<td width="15%"><input type="checkbox" name="opt-out" value="1"> Phone</td>
				<td width="15%"><input type="checkbox" name="opt-out" value="2"> E-mail</td>
				<td width="15%"><input type="checkbox" name="opt-out" value="4"> Mail-in</td>
				<td><input type="checkbox" name="opt-out" value="8"> Third Party Cookie OptOut
				<a href="http://www.allaboutcookies.org/manage-cookies/opt-out-cookies.html"><span class="glyphicon glyphicon-question-sign"></span></a></td>
				<td><input type="checkbox" name="opt-out" value="16"> Do Not Track Plugin
				<a href="http://en.wikipedia.org/wiki/DoNotTrackMe"><span class="glyphicon glyphicon-question-sign"></span></a></td>
				</tr>
			</table>
			<br />

			<h4>Please select
				Yes if any of the following statements is true: *</h4>
			<ul>
				<li>Your organization does not have affiliates</li>
				<li>Your affiliates(if you have any) do not use personal
					information in a manner that requires an opt-out</li>
				<li>Your organization provides the affiliate marketing notice
					separately.</li>
			</ul>
			<table style="width: 40%">
				<tr>
					<td><input type="radio" name="optionsRadio" id="radio1"
						value="notshare" checked> Yes</td>
					<td><input type="radio" name="optionsRadio" id="radio2"
						value="share"> No</td>
				</tr>
			</table>
			<br />
			
			<h4>Two or more financial institutions that jointly provide
				this FTC model form must indicate their full names in the following
				sections. Please select Yes if your organization is going to provide this notice
				jointly with another organization:</h4>
			<table style="width: 40%">
				<tr>
				<td><input type="radio" name="optionsRadio2" id="radio3" value="many"
					checked> Yes </td>
				<td><input type="radio"
					name="optionsRadio2" id="radio4" value="one"> No</td>
				</tr>
			</table>
			<br />

			<p>
				<button type="submit" class="btn btn-default" name="next"
					value="true">Next Page</button>
			</p>
		</div>
	</form>
</div>
<script>
		$(document).ready(function() {
			<%
				Boolean uploadFile = true;
				if(session.getAttribute("uploadFile") != null){
					
				}
				String name = "testCompany";
				if(uploadFile){
			%>
			var name = "<%=name%>";
			var textarea = document.getElementById("name");
			textarea.value = name;
			radiobtn = document.getElementById("radio2");
			radiobtn.checked = true;
			radiobtn2 = document.getElementById("radio4");
			radiobtn2.checked = true;
			<%
				}
			%>
		});
</script>
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
