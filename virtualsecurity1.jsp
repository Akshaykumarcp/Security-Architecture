<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String u1=request.getParameter("uname");
String u2=request.getParameter("pwd");
String u3=request.getParameter("dob1");
String u4=request.getParameter("proof");
String u5=request.getParameter("answer");
String u6=request.getParameter("answer1");

int id=(Integer)session.getAttribute("userid");


Connection con=null;
Statement st=null;
ResultSet rs=null;

String x1=null,x2=null,x3=null,x4=null,x5=null,x6=null;

try
{
con=databasec.getconnection();
st=con.createStatement();
rs=st.executeQuery("select * from signup,securitysp where signup.userid='"+id+"'and securitysp.userid='"+id+"'");
while(rs.next())
{
x1=rs.getString("signup.username");
x2=rs.getString("signup.password");
x3=rs.getString("signup.dob");
x4=rs.getString("securitysp.proofnumber");
x5=rs.getString("securitysp.answer1");
x6=rs.getString("securitysp.answer2");
}

if((u1.equals(x1)) && (u2.equals(x2)) && (u3.equals(x3)) && (u4.equals(x4)) && (u5.equals(x5)) && (u6.equals(x6)))  
{
response.sendRedirect("owner.jsp");
}
else
{
out.print("You entered wrong security parameter...so try again..");
}





}
catch(Exception e)
{
out.print(e);
}












%>
</body>
</html>






