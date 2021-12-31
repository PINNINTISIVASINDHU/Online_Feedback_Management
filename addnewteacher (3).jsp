<%@ page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String branch=request.getParameter("branch");
String passwd=request.getParameter("passwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
PreparedStatement ps=con.prepareStatement("insert into teacher values(?,?,?)");
ps.setString(1,username);
ps.setString(3,branch);
ps.setString(2,passwd);
ps.executeUpdate();
con.close();
ps.close();
%>
<html>
<h1>Teacher successfully added</h1>
<a href="adminlogin.html">BACK TO ADMIN HOME PAGE</a>
</html>