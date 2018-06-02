<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>File Upload</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "yyyy-MM-dd";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String str = sdf1.format(now);
	 
	 String providername1=(String)session.getAttribute("providername");
	 String providerid1=(String)session.getAttribute("providerid");

int n=(Integer)session.getAttribute("fid");
String fn=request.getParameter("filename");
String dc=request.getParameter("dwnloadcost");
String a1=(String)session.getAttribute("resource1");
int xid=(Integer)session.getAttribute("userid");
String uname1=(String)session.getAttribute("uname");
String fp=request.getParameter("datafile");
String fk=(String)session.getAttribute("fk1");
String ax1=(String)session.getAttribute("resource1");
String ax2=(String)session.getAttribute("resource2");
String a="D:\\File\\";
String fname=a+fp;
File image=new File(fname);
FileInputStream fis=null;


out.print(ax1);

/*Connection con=null;
PreparedStatement ps=null;
try
{
fis=new FileInputStream(image);

con=databasec.getconnection();

ps=con.prepareStatement("insert into fileupload (fileid,filename,algo,file,uploadtime,providername,providerid,userid,username,resourcename,filekey) values(?,?,?,AES_ENCRYPT(?,'key'),?,?,?,?,?,?,?)");

ps.setInt(1,n);
ps.setString(2,fn);
ps.setString(3,a1);
ps.setBinaryStream(4, (InputStream)fis, (int)(image.length()));
ps.setString(5,str);
ps.setString(6,providername1);
ps.setString(7,providerid1);
ps.setInt(8,xid);
ps.setString(9,uname1);
ps.setString(10,ax2);
ps.setString(11,fk);
ps.executeUpdate();
//out.print(Successfully Registered);
response.sendRedirect("login.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}*/

session.removeAttribute(ax1);
session.removeAttribute(ax2);
%>
</body>
</html>
