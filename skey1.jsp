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
<form name="f1" action="file_download1.jsp" class="s1">

<%
String s1=(String)session.getAttribute("uname");
int ax=(Integer)session.getAttribute("fidx");
Connection con=null;
Statement st=null;
ResultSet rs=null;
String key1=null;

try
{
con=databasec.getconnection();
st=con.createStatement();
rs=st.executeQuery("select securekey from fileupload where fileid='"+ax+"'");
while(rs.next())
{
key1=rs.getString("securekey");
}
}
catch(Exception e)
{
out.print(e);
}




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
       
        <table width="633" height="256" align="center">
          <tr> 
            <td width="199"><img src="images/key-pete-blau.jpg" width="243" height="225"></td><td width="228" height="119"> <h1>&nbsp; </h1>
              <h1 align="center">
                <p align="center"> <font color="#996600" size="+2" face="Courier New, Courier, mono"><strong>Enter 
                  Security Key </strong></font></p>
              </h1></td>
            <td width="180"> <input  align="absmiddle" type="text" name="skeyn" /></td>
          </tr>
          <tr> 
		  	<td height="40"><font size="+1" face="Courier New, Courier, mono"><strong> 
              &nbsp;&nbsp;&nbsp;&nbsp;Security key is</strong></font></td>
            <td><font size="+1" face="Courier New, Courier, mono" color="#3399CC"><strong><%=key1%></strong></font></td>
            <td><input name="submit" type="submit" value="OK" /> &nbsp;&nbsp;&nbsp;&nbsp; 
              <input name="reset" type="reset" /></td>
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
