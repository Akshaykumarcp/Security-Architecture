<%@ page import="java.sql.*,java.util.*,java.lang.*,java.io.*,databaseconnection.*" errorPage="" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
 <style type="text/css">
  .s1
  {
  background-color:#7D9EC0;
  }
  
  </style>

  <title>Home Page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

<body>
<form name="f1" class="s1">

<%
String s1=(String)session.getAttribute("uname");


%>
  <div id="main">
    <div id="links"></div>
    <div id="header">
      
      <div id="logo"> 
        <div id="logo_text"> 
          <!-- class="green", allows you to change the colour of the text - other classes are: "blue", "orange", "red", "purple" and "yellow" -->
          <h1>Security Architecture For Cloud Computing </h1>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="userpage.jsp">Home</a></li>
          <li><a href="viewaccount.jsp">View Account</a></li>
          <li><a href="editaccount.jsp">Edit Account</a></li>
          <li><a href="pwdchange.jsp">Change Password</a></li>
		   <li><a href="requestsp1.jsp">File Upload</a></li>
          <li><a href="index.html">Logout</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content">
  <a href="userpage.jsp"><h1><img src="images/PenguinWelcome2.png" height="64" width="136" align="absmiddle"><font face="Courier new" size="+3" color="#FF82AB" ><strong><%=s1%></font></strong></h1></a>
  
      <h1 align="left"><strong><font color="#990099" size="+2" face="Courier New, Courier, mono">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  &nbsp;&nbsp;&nbsp;FILELIST</font></strong></h1>
      <table height="91" width="540">
        <tr> 
          <td height="46"><font size="+2">FILE ID</font></td>
          <td><font size="+2">FILE NAME</font></td>
          <td><font size="+2">DownLoad Link</font></td>
        </tr>
        <%
  Connection con1=null;
  Statement st=null;
  ResultSet rs=null;
  int x=(Integer)session.getAttribute("userid");
	int y=0;
	String filename=null;
	
  
  try
  {
  con1=databasec.getconnection();
  st=con1.createStatement();
  rs=st.executeQuery("select * from fileupload where userid='"+x+"'");
  while(rs.next())
  {
  y=rs.getInt("fileid");
  filename=rs.getString("filename");
  %>
        <tr> 
          <td height="37"><strong><font size="+2" face="Courier New, Courier, mono"><%= y%></font></strong></td>
          <td><strong><font size="+2" face="Courier New, Courier, mono"><%= filename%></font></strong></td>
          <td><strong><font size="+2" face="Courier New, Courier, mono"><a href="#">Download</a></font></strong></td>
          <%
  
  }
  }
  catch(Exception e)
  {
  out.print(e);
  }
  %>
        </tr>
      </table>
  
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
