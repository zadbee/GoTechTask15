<jsp:include page="top.jsp" />
		<div class="row marketing">
			<form id="form1" onsubmit="return validateForm()" method="post">
				<div class="col-lg-10">
					<h4>1.What is the name of your institution? *</h4>
					<p>
						<input type="text" class="form-control" name="username"
							data-validation="length" data-validation-length="min4">
					</p>
					<br />
					<h4>2. What opt out communication methods will you offer? *</h4>

					<p>
						<select name="optouts" multiple class="form-control">
							<option value="Phone">Phone</option>
							<option value="Email">Email</option>
							<option value="Mail">Mail</option>
						</select>
					</p>
					<br />
					<h4>3. Is the institution planning to share information with
						its affiliates? *</h4>
					<p>
						<input type="radio" name="optionsRadios" id="radio1" value="share"
							checked>Yes<br />
					</p>
					<p>
						<input type="radio" name="optionsRadios" id="radio2"
							value="notshare">No<br />
					</p>
					<br/>
					<p>
						<button type="submit" class="btn btn-default">Next Page</button>
					</p>
				</div>
			</form>
		</div>
<jsp:include page="bottom.jsp" />		