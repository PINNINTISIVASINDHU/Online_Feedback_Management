<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("sid");
String sname=request.getParameter("sname");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,sname);
ps.setString(3,branch);
ps.setString(4,year);
ps.setString(5,pwd);
int r=ps.executeUpdate();
con.close();
ps.close();
%>
<html>
<a href="home.html">BACK TO LOGIN</a>
</html>