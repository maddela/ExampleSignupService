<html>
<head>
<script type="text/javascript">
function validateForm()
{


if(document.forms["myForm"]["userName"].value == null || document.forms["myForm"]["userName"].value =='')
{
	alert("Enter valid userName ");
	return false;
}
if(document.forms["myForm"]["password"].value==null || document.forms["myForm"]["password"].value=='')
{
	alert("Enter password");
	return false;
}
return true;
}
</script>
</head>
<body>



<form name="myForm" action="signup" onsubmit="return validateForm();" method="get">
<br><br>
<table align="center"><tr><td><h2>Login Authentication</h2></td></tr></table>
<table width="300px" align="center" style="border:1px solid #000000;background-color:#efefef;">
<tr><td colspan=2></td></tr>
<tr><td colspan=2>&nbsp;</td></tr>
  <tr>
    <td><b>Login Name</b></td>
    <td><input type="text" name="userName" value=""></td>
  </tr>
  <tr>
    <td><b>Password</b></td>
    <td><input type="password" name="password" value=""></td>
  </tr>
  
  <tr>
    <td></td>
    <td><input type="submit" name="Submit" value="Submit"></td>
  </tr>
  <tr><td colspan=2>&nbsp;</td></tr>
</table>
</form>
</body>
</html>