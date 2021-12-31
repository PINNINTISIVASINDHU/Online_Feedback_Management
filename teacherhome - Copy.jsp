<%@ page import = "java.sql.*"%>
<%
String name;
name=request.getParameter("username");
%>
<html>
<head>
<title>Teacher Home</title>
</head>
<body bgcolor="Green Bay">
<form name="teacherhome">
<center>
<img src="logo.png" width="780" height="151" alt="logo">
<marquee bgcolor="yellow" behavior=alternate direction="right" width="100%">TEACHER HOME PAGE</marquee>
<br>
<br><br><br>
<h3>
<a href="generatereport.jsp" >GENERATE REPORT</a><br><br>
</h3>
</center>
</form>
</body>
</html>