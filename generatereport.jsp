<%@page import="java.sql.*"%>
<h1 align="center">FINAL REPORT</h1>
<h2>1 - Excellent</h2>
<h2>2 - Very good</h2>
<h2>3 - Average</h2>
<h2>4 - Bad</h2>
<%
String username=(String)session.getAttribute("username");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
%>
<h4>A. Communication skills (i.e. Teacher's ability to communicate the subject clearly and audibly):</h4>
  <% 
     Statement st1=con.createStatement();
     ResultSet rs1=st1.executeQuery("select avg(A) from studentfeedback where username='"+username+"'");
     rs1.next();

   %>
      <%=rs1.getString(1)%>
<h4>B. Ability to explain subject matter and clear doubts<br><br></h4>
  <%
     Statement st2=con.createStatement();
     ResultSet rs2=st2.executeQuery("select avg(B) from studentfeedback where username='"+username+"'");
     rs2.next();
  %>
      
      <%=rs2.getString(1)%>
<h4>C. Presentation (viz. the Blackboard/Power point/OHP <u><b>whichever</b></u> used while teaching) is clear, organised and easily readable.<br><br></h4>
  <%
     Statement st3=con.createStatement();
     ResultSet rs3=st3.executeQuery("select avg(C) from studentfeedback where username='"+username+"'");
     rs3.next();
  %>
      
      <%=rs3.getString(1)%>
<h4>D. Teaching Methodology (i.e. teaching pace, examples and illustrations used and handling of topics)</h4><br><br>
  
  <%
     Statement st4=con.createStatement();
     ResultSet rs4=st4.executeQuery("select avg(C) from studentfeedback where username='"+username+"'");
     rs4.next();
  %>
        <%=rs4.getString(1)%>
<h4>E. Overall Interest created in the subject<br><br></h4>
   
  <%
     Statement st5=con.createStatement();
     ResultSet rs5=st5.executeQuery("select avg(C) from studentfeedback where username='"+username+"'");
     rs5.next();
  %>
        <%=rs5.getString(1)%>
<h4>F. Regular and Punctual in conducting classes<br><br></h4>
   <%
     Statement st6=con.createStatement();
     ResultSet rs6=st6.executeQuery("select avg(C) from studentfeedback where username='"+username+"'");
     rs6.next();
  %>
        <%=rs6.getString(1)%>
<h4>G. Firm and Maintains class Discipline<br><br></h4>
    
   <%
     Statement st7=con.createStatement();
     ResultSet rs7=st7.executeQuery("select avg(C) from studentfeedback where username='"+username+"'");
     rs7.next();
  %>
        <%=rs7.getString(1)%>
<a href="teacherlogin.html">Back to home page</a>