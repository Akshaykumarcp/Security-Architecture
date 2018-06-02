<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String id=request.getQueryString();

String sql="delete from signup where userid='"+id+"'";
PreparedStatement ps1=null;


try
{


Connection conn3=databasec.getconnection();
ps1=conn3.prepareStatement(sql);

int x=ps1.executeUpdate();
//valid();
response.sendRedirect("admin.jsp");

conn3.close();
ps1.close();
}
catch(Exception e)
{
out.print(e);
}
%>

</body>
</html>
