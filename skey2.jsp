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
  
  .button {
	display: inline-block;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em; 
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.button:hover {
	text-decoration: none;
}
.button:active {
	position: relative;
	top: 1px;
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
  
  if(document.f1.skeyn.value=="")
  {
  alert ("Enter a Security Key");
  document.f1.skeyn.focus();
  return false;
  }
  }
  
  </script>
</head>

<body>
<form name="f1" action="file_download1.jsp" class="s1" onsubmit="return valid()">

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
        	<li><a href="userpage.jsp">Back</a></li>
          <li><a href="index.html">Logout</a></li>
        </ul>
      </div>
    </div>
    
    <div id="site_content"> 
      <div align="left"><br>
        <br>
        <br>
        <table width="828" height="274" align="center">
          <tr> 
            <td width="243"><img src="images/key-pete-blau.jpg" width="221" height="186" /></td>
            <td width="268" height="201">
<h1><font color="#996600" size="+2" face="Courier New, Courier, mono"><strong>Enter 
                Security Key </strong></font></h1>
              </td>
            <td width="301"> <input  align="absmiddle" type="text" name="skeyn" /><br><br>
		
			<input name="submit" type="submit" value="OK" class="button" /> &nbsp;&nbsp;&nbsp;&nbsp; 
              <input name="reset" type="reset" class="button" /> </td>
			
          </tr>
          <tr> 
            <td height="40"></td>
            <td><strong><font color="#006666" size="+1" face="Courier New, Courier, mono">Have 
              you forget the Security key?</font></strong></td>
            <td><a href="skey1.jsp"><font size="+1" face="Courier New, Courier, mono"><img src="images/key.jpg" width="123" height="63"></font></a></td>
          </tr>
        </table>
      </div>
      <p align="left">&nbsp;</p>
      <p>&nbsp;</p>
    </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
