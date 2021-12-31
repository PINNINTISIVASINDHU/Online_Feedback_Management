<%@ page import = "java.sql.*"%>
<%@ page import="java.sql.*"%>
<%
try{
	String str,str1,str2,str3,str4,str5,sql;
	int flag=0, flag1=0;
	str1=request.getParameter("Name");
	str2=request.getParameter("passwd");
	str3=request.getParameter("passwd2");
	str4=request.getParameter("passwd1");
	if(str3.compareTo(str4)==0)
	{
		Class.forName("com.mysql.jdbc.Driver");
	 	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
		Statement s =c.createStatement();
		sql = "select * from admin";
		ResultSet rs=s.executeQuery(sql);
		while(rs.next())
		{
			str=rs.getString("adminusername");	
			str5=rs.getString("adminpwd");
			if(str1.compareTo(str)==0)
			{
				flag=1;
				if(str2.compareTo(str5)==0)
				{
					flag1=1;	
				}
				break;
			}
			
		}
		if(flag==1 && flag1==1)
		{
			sql = "update admin set adminpwd='"+str3+"' where adminusername='"+str1+"'";
			s.execute(sql);
			%><jsp:forward page="adminloginform.html"/> <%
		}
		else if(flag==0)
		{
			out.println("No Entry Found For This User Name");
		}
		else if(flag1==0)
		{
			out.println("User name and password didnot match");
		}
	}
	else
	{
		out.println("New Password Doesn't Match With Confirmation password");
	}
}catch(Exception e ){}
%>

