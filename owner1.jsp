<%@ page import="java.sql.*,java.util.*,java.lang.*,java.io.*,databaseconnection.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Home Page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  
  <style type="text/css">
  .s1
  {
  background-color:#7D9EC0;
  }
  
  </style>
  <script type="text/javascript">

  
  if(document.f1.datafile.value=="")
  {
  alert ("Select a file");
  document.f1.datafile.focus();
  return false;
  }
  
  
  
  }
  
  </script>
  
</head>

<body>


<form name="f1"  class="s1"action="indiaupload.jsp" ENCTYPE="multipart/form-data"  method="post" onsubmit="return valid()">
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
		 
		  
		   
		  
		   
          <li><a href="login.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    
    <div id="site_content"> 
      <div align="center"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#0099CC" size="+2" face="Courier New, Courier, mono"><strong>&nbsp;FILE 
        UPLOAD</strong></font> </div>
		<%
		
		String fn=request.getParameter("filename");
String dc=request.getParameter("dwnloadcost");
String fp=request.getParameter("datafile");
String cardtype1=request.getParameter("card");
String cardnumber1=request.getParameter("cardnumber");
String cardpwd=request.getParameter("cpwd");
session.setAttribute("fn",fn);
session.setAttribute("fp",fp);
session.setAttribute("cardtype1",cardtype1);
session.setAttribute("cardnumber1",cardnumber1);
session.setAttribute("dc",dc);
session.setAttribute("cardpwd",cardpwd);
String securekey=request.getParameter("skey");
session.setAttribute("securekey",securekey);
String a1=(String)session.getAttribute("resource1");
String sk1=(String)session.getAttribute("sk1");
String fk1=(String)session.getAttribute("fk1");
		%>
		
      <table width="842"><tr>
          <td width="405" height="498"><div align="left"><img src="images/file-upload.jpg" width="386" height="460"> 
              <font size="+2" face="Courier New, Courier, mono"><strong>Your Security<img src="images/key-pete-blau.jpg" width="47" height="49" align="absmiddle">
<input   type="text" name="skey" value="SK<%=(int)(Math.random()*100000)%>"></strong></font></div></td>
		<td width="425">
		
    <table width="429" height="486" >

     
      <tr> 
          <td width="160"><font color="#990000" size="+1" face="Courier New, Courier, mono">File ID </font></td>
        <td width="257"><%=securekey%></td>
      </tr>
      <tr> 
          <td><font color="#990000" size="+1" face="Courier New, Courier, mono">File Name </font></td>
        <td><%=fn%></td>
      </tr>
      
	  <tr> 
          <td><font color="#990000" size="+1" face="Courier New, Courier, mono">Algorithm</font></td>
        <td><%=a1%></td>
      </tr>
	  
      <tr> 
          <td><font color="#990000" size="+1" face="Courier New, Courier, mono">File Key </font></td>
        <td><%=fk1%></td>
      </tr>
      <tr> 
	  
	  
	  <tr> 
          <td><font color="#990000" size="+1" face="Courier New, Courier, mono">Card Type </font></td>
        <td><%=cardtype1%></td>
      </tr>
      <tr> 
	  
	  <tr> 
          <td><font color="#990000" size="+1" face="Courier New, Courier, mono">Card Number </font></td>
        <td><%=cardnumber1%></td>
      </tr>
      <tr> 
	  
	  
	  <tr> 
          <td><font color="#990000" size="+1" face="Courier New, Courier, mono">Password</font></td>
        <td><%=cardpwd%></td>
      </tr>
      <tr> 
	  
	  
	  
	  
	  
	  
	  
          <td><font color="#990000" size="+1" face="Courier New, Courier, mono">File</font></td>
        <td><input type="file" name="datafile" /></td>
      </tr>
      
      <tr> 
        <td height="107"> </td>
        <td><input name="submit" type="submit" value="UPLOAD" /> <a href="#"><IMG src="images/Upload1.png" width="67" height="46" ></a></td>
      </tr>
    </table>
	
	</td></tr></table>
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>

