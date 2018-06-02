<%@ page import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<body>
<% 
String n1=request.getParameter("npwd");
String un1=request.getParameter("cpwd");

int idy=(Integer)session.getAttribute("userid");
Connection conn3=null;
PreparedStatement pstmt1=null;

try
{

conn3=databasec.getconnection();
pstmt1 = conn3.prepareStatement ("update signup set password='"+n1+"',confirmpassword='"+un1+"'where userid='"+idy+"'");

int x=pstmt1.executeUpdate();
response.sendRedirect("login.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}





%>









</body>
</html>
