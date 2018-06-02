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
String location=(String)session.getAttribute("loc1");
String l1="INDIA",l2="ENGLAND",l3="USA",l4="AUSTRALIA";

if(l1.equals(location))
{
response.sendRedirect("vipindia.jsp");
}
if(l2.equals(location))
{
response.sendRedirect("vipengland.jsp");
}
if(l3.equals(location))
{
response.sendRedirect("vipusa.jsp");
}
if(l4.equals(location))
{
response.sendRedirect("vipaustralia.jsp");
}

%>




</body>
</html>
