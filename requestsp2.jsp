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
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "yyyy-MM-dd";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String str = sdf1.format(now);
	 

int reid=(Integer)session.getAttribute("rid1");

String uname=(String)session.getAttribute("uname");
int uid=(Integer)session.getAttribute("userid");
String st="no";
String loc=(String)session.getAttribute("loc1");
Connection conn=null;
PreparedStatement ps=null;





try
{

conn=databasec.getconnection();
ps=conn.prepareStatement ("insert into requestsp(requestid,userid,username,currentlocation,requesttime,status) values (?,?,?,?,?,?)");


ps.setInt(1,reid);
ps.setInt(2,uid);
ps.setString(3,uname);
ps.setString(4,loc);
ps.setString(5,str);
ps.setString(6,st);

int x=ps.executeUpdate();

            if(x==0)
                {
                response.sendRedirect("check2.jsp?message=success");}
            else
                {
                response.sendRedirect("check2.jsp?message=success");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
		
		
		
		
%>

</body>
</html>
