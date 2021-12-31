<%@ page import = "java.sql.*"%>
<%
String str, str1, name, pwd,sid,t2;
        sid=request.getParameter("sid");
	pwd=request.getParameter("pwd");
	Class.forName("com.mysql.jdbc.Driver");
 	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
	Statement s =c.createStatement();
	ResultSet rs=s.executeQuery("select * from student where id='"+sid+"' and pwd='"+pwd+"'");
        if(rs.next())
        {
        %>
         <jsp:forward page="studentfeedbackform.html"/>
        <%
        }
        else
        {
        %>
         <jsp:forward page="home1.html"/>
        <%
         }

%>