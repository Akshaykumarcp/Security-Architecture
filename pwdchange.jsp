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
  background:url(images/l.jpg) repeat;
  }
   #logo {background:url(images/ccc.jpg) repeat;}
   * {
margin: 0;
}
  </style>
  <script type="text/javascript">
  function valid1()
  {
  if(document.f1.npwd.value=="")
  {
  alert ("Enter a new password");
  document.f1.npwd.focus();
  return false;
  }
  
  if(document.f1.cpwd.value=="")
  {
  alert ("Enter a new password");
  document.f1.cpwd.focus();
  return false;
  }
  
  var a=document.f1.npwd.value;
  var b=document.f1.cpwd.value;
  
  
  if(a!=b)
  {
  alert ("Enter a correct Confirm password");
  document.f1.cpwd.focus();
  return false;
  }
  
  
  }
  
  </script>
  	
</head>

<body>
<form action="pwdchange1.jsp" name="f1" class="s1" onsubmit="return valid1()">


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
          <li><a href="userpage.jsp">Back</a></li>   
          <li><a href="index.html">Logout</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content">
 	
	  <h1 align="left">&nbsp;&nbsp;&nbsp;&nbsp;</h1>
      <h1 align="left">&nbsp;</h1>
      <table width="783">
	
	  <tr>
	  <td width="422" height="420">
	    <h1 align="left"><strong><font color="#0066CC"> CHANGE THE PASSWORD </font></strong></h1>
      <table height="216" width="412">
  
  
  <tr >
        <td width="206" height="94" ><font color="#CC66CC" size="+1" face="Courier New, Courier, mono">NEW PASSWORD</font></td>
    <td width="194" ><input type="password" name="npwd" size="30"  ></td></tr>
  

  <tr >
        <td height="63" ><font color="#CC66CC" size="+1" face="Courier New, Courier, mono">CONFIRM PASSWORD</font></td>
    <td ><input type="password" name="cpwd" size="30" ></td></tr>
	
	<tr>
	<td height="48"></td>
	<td><input type="submit" name="submit" value="UPDATE"></td>
	</tr>
	
	
	
	
  </table>  
  </td>
  
  <td width="1044"><img src="images/ChangePassword.png" height="359" width="351"></td>
   </tr>
   </table>
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
