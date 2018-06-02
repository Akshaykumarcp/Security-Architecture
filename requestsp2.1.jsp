<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
 <style type="text/css">
  .s1
  {
   background:url(images/fl.jpg) repeat;
  }
  
  </style>

  <title>Home Page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
<script type="text/javascript">
function valid()
{
if(document.f1.location.selectedIndex==0)
{
alert ("Select Your Current Location");
document.f1.location.focus();
return false;
}
}

</script>
</head>


<body>
<form name="f1" class="s1" action="requestsp2.jsp" method="post" onsubmit="return valid()">

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
         
          <li><a href="index.html">Logout</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content">
  <H1>Request Send Service Provider</H1>
  <table>
  <tr>
  <td>User Current Location </td>
  <td><select name="location">
  <option  value="0">--Select Current Location</option>
  <option  value="INDIA">INDIA</option>
  <option  value="ENGLAND">ENGLAND</option>
  <option  value="USA">USA</option>
  <option  value="AUSTRALIA">AUSTRALIA</option>
  
  </select></td>
  
  
  
  </tr>
  <tr>
  <td>  </td>
  </tr>
  <tr>
  <td>  </td>
  <td><input type="submit" value="&nbsp;&nbsp;&nbsp;Ok&nbsp;&nbsp;&nbsp;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="userpage.jsp"><input type="button" value="Cancel"></a> </td>
  </tr>
  </table>
  
  
  
  
  
  
  
  
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
    <div id="footer"></div>
  </div>
  </form>
  

 
  
  
</body>
</html>