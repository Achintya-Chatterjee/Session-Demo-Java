<%
	HttpSession session2 = request.getSession(false);
	String email= (String)session.getAttribute("email");
	if (email==null)
	{
		RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
		request.setAttribute("msg","Sorry Invalid Id Or Password");
		rd1.forward(request, response);
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	div
	{
	    background-color:#117A65;
		border-radius: 25px;
		border:2px;
		height:200px;
		width:30%;
		
		margin-left: 35%;
		padding:20px;
		margin-top:15%;
		
		color:white;
	}
</style>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<div>
		<h2>Welcome ${requestScope['id']}</h2>
		<a href="profile.jsp">profile</a>
		<a href = "logout">logout</a>
	</div>
</body>
</html>