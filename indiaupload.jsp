<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>	 


<%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "yyyy-MM-dd";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String str = sdf1.format(now);
	 
	
String providername1=(String)session.getAttribute("providername");
String providerid1=(String)session.getAttribute("providerid");
int n=(Integer)session.getAttribute("fid");
String fn=(String)session.getAttribute("fn");
String dc=(String)session.getAttribute("dc");
String a1=(String)session.getAttribute("resource1");
int xid=(Integer)session.getAttribute("userid");
String uname1=(String)session.getAttribute("uname");
String fp=(String)session.getAttribute("fp");
String fk=(String)session.getAttribute("fk1");
String ax1="AES";
//String ax1=(String)session.getAttribute("resource1");
String ax2=(String)session.getAttribute("resource2");
String cardtype1=(String)session.getAttribute("cardtype1");
String cardnumber1=(String)session.getAttribute("cardnumber1");
String cardpwd=(String)session.getAttribute("cardpwd");
String securekey=(String)session.getAttribute("securekey");

String status="ondatabase";


String saveFile="";
//String contentType1=request.getAttribute("file");
String contentType = request.getContentType();




if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

FileInputStream fis;
fis=new FileInputStream(ff);

Connection con=null;
PreparedStatement ps=null;


out.print(securekey);

if(ax1.equals("AES"))
{
try{



		
		
					



	Class.forName("com.mysql.jdbc.Driver");	
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/securitycloud","root","admin"); 

			 ps=con.prepareStatement("insert into fileupload (fileid,filename,algo,file,uploadtime,providername,providerid,userid,username,resourcename,filekey,cardtype,cardnum,cardpassword,securekey) values(?,?,?,AES_ENCRYPT(?,'key'),?,?,?,?,?,?,?,?,?,?,?)");


ps.setInt(1,n);
ps.setString(2,fn);
ps.setString(3,a1);
ps.setBinaryStream(4, (InputStream)fis, (int)(ff.length()));
ps.setString(5,str);
ps.setString(6,providername1);
ps.setString(7,providerid1);
ps.setInt(8,xid);
ps.setString(9,uname1);
ps.setString(10,ax2);
ps.setString(11,fk);
ps.setString(12,cardtype1);
ps.setString(13,cardnumber1);
ps.setString(14,cardpwd);
ps.setString(15,securekey);







ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("login.jsp");


}
catch(Exception e1)
{
out.println(e1.getMessage());
}
}



if(ax1.equals("DES"))
{
try
{


con=databasec.getconnection();

ps=con.prepareStatement("insert into fileupload (fileid,filename,algo,file,uploadtime,providername,providerid,userid,username,resourcename,filekey,cardtype,cardnum,cardpassword,securekey) values(?,?,?,AES_ENCRYPT(?,'key'),?,?,?,?,?,?,?,?,?,?,?)");

ps.setInt(1,n);
ps.setString(2,fn);
ps.setString(3,a1);
ps.setBinaryStream(4, (InputStream)fis, (int)(ff.length()));
ps.setString(5,str);
ps.setString(6,providername1);
ps.setString(7,providerid1);
ps.setInt(8,xid);
ps.setString(9,uname1);
ps.setString(10,ax2);
ps.setString(11,fk);
ps.setString(12,cardtype1);
ps.setString(13,cardnumber1);
ps.setString(14,cardpwd);
ps.setString(15,securekey);









ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("login.jsp");


}
catch(Exception e1)
{
out.println(e1.getMessage());
}
}


if(ax1.equals("FILEKEY"))
{
try
{


con=databasec.getconnection();

ps=con.prepareStatement("insert into fileupload (fileid,filename,algo,file,uploadtime,providername,providerid,userid,username,resourcename,filekey,cardtype,cardnum,cardpassword,securekey) values(?,?,?,AES_ENCRYPT(?,'key'),?,?,?,?,?,?,?,?,?,?,?)");
ps.setInt(1,n);
ps.setString(2,fn);
ps.setString(3,a1);
ps.setBinaryStream(4, (InputStream)fis, (int)(ff.length()));
ps.setString(5,str);
ps.setString(6,providername1);
ps.setString(7,providerid1);
ps.setInt(8,xid);
ps.setString(9,uname1);
ps.setString(10,ax2);
ps.setString(11,fk);
ps.setString(12,cardtype1);
ps.setString(13,cardnumber1);
ps.setString(14,cardpwd);
ps.setString(15,securekey);









ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("login.jsp");


}
catch(Exception e1)
{
out.println(e1.getMessage());
}
}


}





%>

