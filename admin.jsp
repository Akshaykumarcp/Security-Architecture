<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Home Page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  <style type="text/css">
  .x2
{
 background:url(images/ad.jpg) repeat;
}
 #logo {background:url(images/ccc.jpg) repeat;}
</style>
  
</head>

<body>
<form name="f1" class="x2">
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
          <li class="selected"><a href="admin.jsp">Home</a></li>
		   <li><a href="userlist.jsp">User List</a>
		   		   <li><a href="delete.jsp">Delete User</a>
		  
		   
		   <li><a href="virtual1.jsp">VIP</a></li>
		   
		    <li><a href="servicelist.jsp">Service List</a></li>

		   
          <li><a href="adminlogin.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content">
  <table height="500" width="820">
  <tr>
  <td width="499"><h1 align="center"><font color="#003399" size="+2" face="Courier New, Courier, mono"><strong>Security 
            Approach</strong></font></h1>
          <img src="images/securityapproach.PNG" width="480" height="624">
  </td>
        <td width="309"><p align="center"><font color="#003399" size="+1" face="Courier New, Courier, mono">The virtual infrastructure 
            provider needs to commit his list of security parameters describing 
            his security functionality to the service provider. The service provider 
            stores for each virtual infrastructure provider he has contact to 
            such a list of security parameters. Besides this, he also stores additional 
            information on functionalities and available resources. When a service user 
			wants to have a virtual resource, e.g., cheap storage, he sends a request to the 
			service provider.Together with the request for virtual 
            resources he sends a list of security parameters which needs to be 
            followed. In the next step the service provider compares these security 
            parameters with the security parameters of virtual infrastructure 
            providers.</font></p></td>
  </tr>
  
  
  
  </table>  
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
