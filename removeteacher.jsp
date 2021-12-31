<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>

<%
	String username=request.getParameter("username");
	Class.forName("com.mysql.jdbc.Driver");
 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
	PreparedStatement ps=con.prepareStatement("delete from teacher where username=?");
       ps.setString(1,username);
       ps.executeUpdate();
       con.close();
       ps.close();      
%>
<html>
<body>
<h1>Teacher successfully removed</h1>
<center>
<a href="adminlogin.html">BACK TO ADMIN LOGIN</a>
</center>
</body>
</html>