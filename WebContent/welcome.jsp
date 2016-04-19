<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dimpy Page</title>
</head>
<body>

<%@ page import="org.rafi.db.Connector"%>
<%@ page import="com.LogOutController"%>

<div align="right">
 <a href="Login.jsp">Logout</a>

</div>



<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");


if(userName == null)
{
	out.println("The userName you entered is wrong");
}
if(password ==  null)
{
	out.println("Wrong password");
}
String name = (String) session.getAttribute("userName");
if (userName == null || userName.trim().length() <= 0) {
	response.sendRedirect("Login.html");
}


//Get the DB connection Validation here 




%>
</body>
</html>