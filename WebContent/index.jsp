
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
input[type="text"],input[type="password"]{
	background-color:#2A8201;
	height:30px;
	color:white;
}
table
{
	background-color:#B14305;
	border-radius: 25px;
	height:200px;
	width:30%;
	margin-left: 35%;
	padding:20px;
	margin-top:15%;
	color:white;
</style>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
	<form action="login" method="post">
		<table>
			<tr>
				<td class="inp">Enter Id</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td class="inp">Enter Password</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"name="login"value="login"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">${requestScope['msg']}</td>
			</tr>
		</table>
	</form>
</body>
</html>