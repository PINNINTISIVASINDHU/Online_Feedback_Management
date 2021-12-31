<%@page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String A=request.getParameter("A");
String B=request.getParameter("B");
String C=request.getParameter("C");
String D=request.getParameter("D");
String E=request.getParameter("E");
String F=request.getParameter("F");
String G=request.getParameter("G");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
PreparedStatement ps=con.prepareStatement("insert into studentfeedback values(?,?,?,?,?,?,?,?)");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from teacher where username='"+username+"'");
ps.setString(1,username);
ps.setString(2,A);
ps.setString(3,B);
ps.setString(4,C);
ps.setString(5,D);
ps.setString(6,E);
ps.setString(7,F);
ps.setString(8,G);
if(rs.next())
{
int r=ps.executeUpdate();
out.println("feedback successfully submitted");
}
else
{
out.println("enter valid teacher name");
}
con.close();
ps.close();
%>
<html>
<body>
<a href="studentfeedbackform.html"><h3>BACK TO FORM</h3></a>
<a href="studentlogin.html"><h3>BACK TO STUDENT LOGIN</h3></a>
</body>
</html>