<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer Reegistration</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


<script type="text/javascript">
function validateForm()
{


if(document.forms["myForm"]["username"].value == null || document.forms["myForm"]["username"].value =='')
{
	alert("Enter customer name ");
	return false;
}
if(document.forms["myForm"]["password"].value==null || document.forms["myForm"]["password"].value=='')
{
	alert("Enter Address");
	return false;
}

if(document.forms["myForm"]["emailId"].value == null || document.forms["myForm"]["emailId"].value =='')
{
	alert("Enter valid emailId ");
	return false;
	
}

var x=document.forms["myForm"]["emailId"].value
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }

if(document.forms["myForm"]["phonenum"].value == null || document.forms["myForm"]["phonenum"].value =='')
{
	alert("Enter phone number ");
	return false;
	
}


var re10digit=/^\d{10}$/ //regular expression defining a 5 digit numberfunction validateForm()
if (document.myForm.phonenum.value.search(re10digit)==-1){ //if match failed{
alert("Please enter a valid 10 digit number inside form")
return false;
}

if(document.forms["myForm"]["gender"].value == null || document.forms["myForm"]["gender"].value =='')
{
	alert("Enter gender ");
	return false;
	
}

return true;
}
</script>
</head>
<body>


<nav class="navbar navbar-default">
  <div class="container">
  
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       <li><a href="list.jsp">Customers</a></li>
         <li><a href="#">Vendors</a></li>
        
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
         <li><a href="Login.jsp">Logout</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<br>
<br>
<div align="right">
<a href="customers.html" class="btn btn-primary" role="button">New customer</a>
</div>


<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

    <BODY>
       <%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>

<HTML>
   


       

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3307/dimpy", "root", "theo");

            Statement statement = connection.createStatement();

            String id = request.getParameter("id");  

            ResultSet rs = statement.executeQuery("select * from customers"); %>
            <table>
                <tbody>
                <% while (rs.next()) {%>
                  <tr>
                    <td>
                      <%=rs.getString(1)%>
                    </td>
                    <td>
                      <%=rs.getString(2)%>
                    </td>
                    <td>
                      <%=rs.getString(3)%>
                    </td>
                     <td>
                      <%=rs.getString(4)%>
                    </td>
                     <td>
                      <%=rs.getString(5)%>
                    </td>
                     <td>
                      <%=rs.getString(6)%>
                    </td>
                  </tr>
                <%}%>
            </tbody>
            </table>
    </BODY>
</HTML>
    </BODY>
</HTML>
</body>
</html>