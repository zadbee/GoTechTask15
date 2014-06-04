<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Privacy Policy Generator</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
</head>
<body>
	<div class="container">

		<div class="header">
			<h1>Generate</h1>
			<h4>Privacy Policy</h4>
			<p class="lead">Free privacy policy generator, provides you with
				consistent and correct privacy policy</p>
		</div>
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
		<div class="footer">
			<p>Company 2014</p>
		</div>

	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script>
		function validateForm() {
			var x = $("form1.username").value;
			if (x == null || x == "") {
				alert("The institution name is needed");
				return false;
			}
		}
	</script>
</body>
</html>