<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<html>
<head>
<title>TEACHER REPORT</title>
<script language="javascript" >
function fun1()
{
	var username=document.teacherreport.username.value;
	if(username=="")
	{
		alert("First Details must be filled");
		return false;
	}
}
</script>
</head>
<body style="background-color:cyan">
<center>
<br>
<br>
<h2>TEACHER REPORT GENERATION</h2>
</center>
<br>
<br>
<br>
<form name="teacherreport" action="teacherreport1.jsp" onSubmit="return fun1()" method="post">
<table border="0" cellspacing="0" cellpadding=10 >
<tr>
	<th colspan=2 align=left> Name of teacher :</th>
	<th colspan=2 align=left><input type="text" name="username"></th>
</tr>
<tr>
	<th colspan=2 align=center><input type="RESET" value=RESET></th>
	<th colspan=2 align=center><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</form>
</body>
</html>