<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Resume From Backup File</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.file-input.js"></script>

<script>$(document).ready(function(){$('input[type=file]').bootstrapFileInput();});</script>

<body>
	<div class="container">
		<div style="margin: 50px">
			<h1 style="color: #00476B; text-align: center">Online Privacy
				Form Generator</h1>
			<hr />
			<p
				style="color: #66A3C2; font-size: 120%; text-align: center; letter-spacing: 4px">CONSISTENT,
				CORRECT AND FREE ONLINE POLICY FORM GENERATOR.</p>
		</div>

		<div align="center">
			<h3 style="margin-top: 30px">Resume From Backup File</h3>
			<h4 style="color: red">${message}</h4>
			<form action="upload.do" method="post" enctype="multipart/form-data">
				<table>
					<tr>
						<td>
							<div style="margin:30px">
								<input type="file" name="file" title="Select the Backup File" data-filename-placement="inside"/>
							</div>
						</td>
					</tr>
					<tr>
						<td align="center">
							<input type="submit" name="upload" class="btn btn-primary btn-primary-lg"
							value="Upload" />
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		<div style="margin: 50px">
			<p style="color: #00476B; text-align: center">
				Team GoTech @ 2014
			</p>
		</div>
	</div>
</body>
</html>