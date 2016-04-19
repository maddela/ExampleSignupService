<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register</title>
<script type="text/javascript">
function validateForm()
{


if(document.forms["myForm"]["username"].value == null || document.forms["myForm"]["username"].value =='')
{
	alert("Enter userName ");
	return false;
}
if(document.forms["myForm"]["password"].value==null || document.forms["myForm"]["password"].value=='')
{
	alert("Enter password");
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Signup</title>
</head>
<body>





<form name="myForm" action="signup"onsubmit="return validateForm();" method="post">

<br><br>
<table align="center">
<table width="300px" align="center" style="border:1px solid #000000;background-color:#efefef;">
<tr><td colspan=2></td></tr>
<tr><td colspan=2>&nbsp;</td></tr>
<tr>
	<td><b>UserName:</b></td> 
	<td><input type="text" name="username"></td>
	</tr>
	<tr> 
	 <td><b>passWord:</b></td> 
	 <td><input type="password" name="password"></td> 
	 </tr>
	<tr>
	<td><b>Emaild:</b></td>
	<td><input type="text" name="emailId"></td> 
	</tr>
	<tr>
	 <td><b>phonenum:</b></td>
	 <td><input type="text" name="phonenum"></td>
	</tr>
		<tr>
				<td><b>Gender</b></td>
				<td>
					<select name="gender">
						<option value="">select</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						
					</select> 
				</td>
			</tr> 
			<tr>
			<td></td>
			<td><input type="submit" value="Submit"  ></td>
			</tr>
			<tr><td colspan=2>&nbsp;</td></tr>
</table>
</form>
</body>
</html>