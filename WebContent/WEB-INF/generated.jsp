<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="content-type" content="text/html;charset=utf-8">

<title>U.S. Consumer Privacy Notice from Bank of America</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<style>
body {
  font-family: "Trebuchet MS", Helvetica, sans-serif
}

table {
  width: 100%;
  border-collapse: collapse;
}

table, td, th
{
  border-top: 1px solid #80B2CC;
  border-bottom: 1px solid #80B2CC;
}

th {
  background-color: #006699;
  color: white;
  padding: 5px;
}

td {
  padding: 5px 10px;
}

h3 {
  width: 100%;
  background-color: #006699;
  color: white;
  padding: 5px;
}

.preview {
	width: 90%;
	margin-bottom: 5%;
	margin-left: 5%;
	margin-right: 5%;
	border: 3px inset #80B2CC;
}

.content-section {
  width: 70%;
  margin-left: 15%;
  padding-top: 10px;
  padding-bottom: 10px;
}

.content-row {
  width: 100%;
}

.cpn-heading {
  width: 20%;
  padding: 5px;
  background-color: #006699;
  color: white;
  vertical-align: center;
  font-weight: bold;
}

.cpn-heading-white {
  width: 20%;
  padding: 5px;
  vertical-align: center;
  border-right: 1px solid #80B2CC;
  font-weight: bold;
}

.cpn-details {
  width: 75%;
  padding: 5px 15px;
}

.cpn-header {
  width: 70%;
  color: #006699;
  text-align: center;
  margin-left: 15%;
}

.centered-td {
  text-align: center;
  border-left: 1px solid #80B2CC;
}

.bottom-border {
  border-bottom: 1px solid #80B2CC;
}

.mailin-heading {
  width: 20%;
  padding: 5px;
  vertical-align: center;
  border-left: 1px solid #80B2CC;
  border-right: 1px solid #80B2CC;
}

.mailin-details {
  padding: 0px;
  width: 80%;
  border-right: 1px solid #80B2CC;
}

.padding-5px {
  padding: 5px;
}

.mail-addr-heading {
  width: 25%;
  padding: 5px;
  background-color: #006699;
  color: white;
  vertical-align: center;
  font-weight: bold;
}

.mail-addr-details {
  width: 50%;
  border-left: 1px solid #80B2CC;
  border-right: 1px solid #80B2CC;
}

.mail-addr-mailto {
  width: 25%;
}

</style>

</head>

<body>
	<div align="center">
		<h4>Download HTML Page</h4>
		<form action="download.do" method="post">
			<input type="submit" class="btn btn-primary" name="download" value="Download File"/>
		</form>
	</div>
	<br/>
	<br/>
	<h4 align="center">Privacy Form Preview</h4>
	<div class="preview">
		<div>
			<h2 class="cpn-header">U.S. Consumer Privacy Notice</h2>
			<c:forEach var="block" items="${blocks}"> 
	            ${block.text} 
	        </c:forEach>
		</div>
	</div>
</body>