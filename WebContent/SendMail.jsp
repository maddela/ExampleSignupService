<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Sucess</title>
</head>
<body>


<%@ page import="com.dunithd.jmail.*" %>
<%@ page import="org.rafi.db.Connector"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String emaiId = request.getParameter("emailId");

String phonenum = request.getParameter("phonenum");
String gender = request.getParameter("gender");
System.out.println("username is " +username);
System.out.println("password is " +password);
System.out.println("emailId is " +emaiId);
System.out.println("phonenum is " +phonenum);
System.out.println("gender is " +gender);



if(Connector.insertUser(username,password, emaiId,phonenum,gender))
{
	out.println("Login successfull !!!");
	out.print("The userName is "+username+" pasword is "+password);
	GmailSender.send(emaiId,username,password);

}
else
{
	out.println("Authentication Failed Boss!!!");
}



%>


</body>
</html>