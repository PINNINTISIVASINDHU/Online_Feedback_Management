<%@ page import = "java.sql.*"%>
<%
String username, passwd;
	username=request.getParameter("username");
	passwd=request.getParameter("passwd");
        session.setAttribute("username",username);
	Class.forName("com.mysql.jdbc.Driver");
 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
	Statement s =con.createStatement();
	ResultSet rs=s.executeQuery("select * from teacher where username='"+username+"' and passwd='"+passwd+"'");
	if(rs.next())
	{
         %>
          <jsp:forward page="teacherhome.jsp"/>
	 <%
         }
        else
{
%>
<jsp:forward page="teacherlogin.jsp"/>
<%
}
con.close();
s.close();
%>
