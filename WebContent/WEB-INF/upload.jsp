<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Upload XML File</title>
</head>
<body>
	<h3>Upload Generated XML File</h3>
	<h4 style="color:red">${message}</h4>
	<form action="upload.do" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>File description:</td>
				<td><input type="text" name="description" /></td>
			</tr>
			<tr>
				<td>Select a file:</td>
				<td><input type="file" name="file" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" name="upload" value="Upload"/></td>
			</tr>
		</table>
	</form>	
</body>
</html>