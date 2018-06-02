<%@ page import="java.sql.*,java.util.*,java.lang.*,java.io.*,databaseconnection.*" errorPage="" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
 <style type="text/css">
  .s1
  {
 background:url(images/cm1.jpg) repeat;
  }
  
  .tble
  {
  border-style:solid;
  border-width:10px;
  border-color:#CAE1FF;
  }
  #logo {background:url(images/ccc.jpg) repeat;}
  
  </style>

  <title>Home Page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

<body>
<form name="f1" action="skey2.jsp" class="s1">

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
		   <li><a href="addtional1.jsp">File Upload</a></li>
          <li><a href="index.html">Logout</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content">
  <a href="userpage.jsp"><h1 align="right"><img src="images/PenguinWelcome2.png" height="47" width="136" align="absmiddle"><font face="Courier new" size="+3" color="#FF82AB" ><strong><%=s1%></font></strong></h1></a>
  
  
  
      <h1 align="left"><strong><font color="#63B8FF" size="+2" face="Courier New, Courier, mono">MYFILES LIST</font></strong><img src="images/Crystal_Clear_app_file-manager.png" width="148" height="125" align="absmiddle"></h1>
      <table height="91" width="644" class="tble">
        <tr class="tble"> 
          <td width="121" height="46" class="tble"><strong><font color="#003399" size="+2" face="Courier New, Courier, mono">FILE 
            ID</font></strong></td>
          <td width="165"  class="tble"><strong><font color="#003399" size="+2" face="Courier New, Courier, mono">FILE 
            NAME</font></strong></td>
          <td width="342" class="tble"><strong><font color="#003399" size="+2" face="Courier New, Courier, mono">DownLoad 
            Link</font></strong></td>
        </tr>
        <%
  Connection con1=null;
  Statement st=null;
  ResultSet rs=null;
  int x=(Integer)session.getAttribute("userid");
	int y=0;
	String filename=null;
	String algoname=null;
	String skey1=null;
	
			
	
  
  try
  {
  con1=databasec.getconnection();
  st=con1.createStatement();
  rs=st.executeQuery("select * from fileupload where userid='"+x+"'");
 while(rs.next())
  {
   
  y=rs.getInt("fileid");
  filename=rs.getString("filename");
  
    algoname=rs.getString("algo");
   skey1=rs.getString("securekey");
   session.setAttribute("fidx",y);
   session.setAttribute("fnme",filename);
   session.setAttribute("falgo",algoname);
   session.setAttribute("fseckey",skey1);
  
  %>
        <tr class="tble"> 
          <td height="37" class="tble"><div align="center"><strong><font color="#333300" size="+2" face="Courier New, Courier, mono"><%= y%></font></strong></div></td>
          <td class="tble"><div align="center"><strong><font color="#333300" size="+2" face="Courier New, Courier, mono"><%= filename%></font></strong></div></td>
          <td class="tble"><strong><font size="+2" face="Courier New, Courier, mono"><a href="skey2.jsp"> 
            <img src="images/images.jpeg" width="350" height="94"></a></font></strong></td>
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
	  <div class="img">
	 
	  </div>
  
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
