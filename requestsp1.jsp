<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
 <style type="text/css">
  .s1
  {
background:url(images/co.jpg) repeat;
  }
   #logo {background:url(images/ccc.jpg) repeat;}
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

<%
int x=(Integer)session.getAttribute("userid");
Connection cn=null;
Statement stx=null;
ResultSet rsx=null;
int o=0;



Connection con1=null;
Statement st=null;
ResultSet rs=null;

int rid=0;
try
{
con1=databasec.getconnection();
st=con1.createStatement();
rs=st.executeQuery("select max(requestid) from requestsp");
while(rs.next())
{
if(rs.getInt(1)==0)
rid=1;
else
rid=rs.getInt(1)+1;
}

session.setAttribute("rid1",rid);

}

 catch(Exception e)
        {
            out.println(e.getMessage());
        } 
       


%> 


 

<form name="f1" class="s1" action="additional2.jsp" method="post" onsubmit="return valid()">

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
      
  <table height="570">
  
        <tr> 
          <td width="347" height="505">
<h1 align="center">
              <p align="center"><font color="#9933CC" size="+2" face="Courier New, Courier, mono"><strong>Service 
                Request Send to Service Provider by Service User</strong></font></h1>
            </p>
            <img src="images/dataSharingFull.gif" width="337" height="304" /></td>
		  
  <td width="379">
  <table width="366" height="107"><tr>
                <td width="192"> <div align="justify"><font color="#006699"><strong><font size="+2" face="Courier New, Courier, mono">User 
                    Current Location </font></strong></font></div></td>
  <td width="162"><select name="location" >
  <option  value="0">--Select Current Location</option>
  <option  value="INDIA">INDIA</option>
  <option  value="ENGLAND">ENGLAND</option>
  <option  value="USA">USA</option>
  <option  value="AUSTRALIA">AUSTRALIA</option>
  
  </select>
  </td>
 </tr>
 <tr>
  <td>  </td>
  <td><input type="submit" value="&nbsp;&nbsp;&nbsp;Ok&nbsp;&nbsp;&nbsp;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="userpage.jsp"><input type="button" value="Cancel"></a> </td>
  </tr></table>
 </td>
 
  
  
 
 
    
  </tr>
  
  
  </table>
  
  
  
  
  
  
  
  
      
      
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
    <div id="footer"></div>
  </div>
  </form>
  

 
  
  
</body>
</html>
