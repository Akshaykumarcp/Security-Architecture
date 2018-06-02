<%@ page import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<body>
<% 
String n1=request.getParameter("name");
String un1=request.getParameter("username");
String e1=request.getParameter("eid");
String d1=request.getParameter("dob");
String add1=request.getParameter("address");
String mno1=request.getParameter("mno");
String g=request.getParameter("gender");

int idy=(Integer)session.getAttribute("userid");
Connection conn3=null;
PreparedStatement pstmt1=null;

try
{

conn3=databasec.getconnection();
pstmt1 = conn3.prepareStatement ("update signup set name='"+n1+"',username='"+un1+"',emailid='"+e1+"',dob='"+d1+"',address='"+add1+"',mobilenumber='"+mno1+"',gender='"+g+"'where userid='"+idy+"'");

int x=pstmt1.executeUpdate();
response.sendRedirect("userpage.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}





%>









</body>
</html>
