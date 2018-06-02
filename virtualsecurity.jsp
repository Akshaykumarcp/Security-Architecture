<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
 <style type="text/css">
  .s1
  {
 background:url(images/sec.jpg) repeat;
  }
   #logo {background:url(images/ccc.jpg) repeat;}
  </style>

  <title>Home Page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  
   <script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>
<script type="text/javascript">
function valid()
{

if(document.f1.uname.value=="")
{
alert("Enter User Name");
document.f1.uname.focus();
return false;
}

if(document.f1.pwd.value=="")
{
alert("Enter Password");
document.f1.pwd.focus();
return false;
}

if(document.f1.dob1.value=="")
{
alert("Pick Date");
document.f1.dob1.focus();
return false;
}

if(document.f1.proof.value=="")
{
alert("Type your proof number");
document.f1.proof.focus();
return false;
}

if(document.f1.security.selectedIndex==0)
{
alert ("Select Your Security Question 1");
document.f1.security.focus();
return false;
}
if(document.f1.answer.value=="")
{
alert("Type your answer");
document.f1.answer.focus();
return false;
}


if(document.f1.security1.selectedIndex==0)
{
alert ("Select Your Security Question 2");
document.f1.security1.focus();
return false;
}
if(document.f1.answer1.value=="")
{
alert("Type your answer");
document.f1.answer1.focus();
return false;
}



}

</script>


</head>


<body>









<%
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

<%
Connection cn=null;
PreparedStatement ps=null;
String stq="Grant";
int z=(Integer)session.getAttribute("userid");
try
{
cn=databasec.getconnection();
ps=cn.prepareStatement("update requestsp set status='"+stq+"' where userid='"+z+"'");
ps.executeUpdate();
}
catch(Exception e)
{
out.print(e);
}


%>


<form name="f1" class="s1" action="virtualsecurity1.jsp" method="post" onsubmit="return valid()">

<%
String s1=(String)session.getAttribute("uname");
//String x2=request.getQueryString();
//session.setAttribute("resource",x2);


String b=request.getQueryString();

String x1=null,x2=null;
String temp[]=null;
temp=b.split(",",2);
for(int i=0; i<temp.length; i++)
{
x1=temp[0];
x2=temp[1];
}
session.setAttribute("resource2",x2);

session.setAttribute("resource1",x1);





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
      <strong><H1>&nbsp;</H1>
      <p align="left"><font color="#996633" size="+1" face="Times New Roman, Times, serif"><strong>Fill 
        the following Security Parameters:</strong></font></p>
      <table height="678">
        <tr> 
          <td><font color="#008B00" size="+1" face="Courier New, Courier, mono"><strong>UserName 
            </strong></font></td>
          <td><input type="text" name="uname" /></td>
        </tr>
        <tr> 
          <td><font color="#008B00" size="+1" face="Courier New, Courier, mono">Password</font> </td>
          <td><input type="password" name="pwd" /></td>
        </tr>
        <tr> 
          <td><font color="#008B00" size="+1" face="Courier New, Courier, mono">DOB</font> </td>
          <td  ><input id="demo1" type="text" size="20" name="dob1" placeholder="choose your birthday?"><a href="javascript:NewCal('demo1','ddmmyyyy')"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
		
        </tr>
        <tr> 
          <td><font color="#008B00" size="+1" face="Courier New, Courier, mono">Liscense/PAN/Voter ID Number </font></td>
          <td><input type="text" name="proof" /></td>
        </tr>
        <tr> 
          <td ><font color="#008B00" size="+1" face="Courier New, Courier, mono">Select your Security Questions1?</font></td>
          <td > <select name="security">
              <option value="0">--Select Your Security Questions-----</option>
              <option value="What town were you born in?">What town were you born 
              in?</option>
              <option value="what town was your father born in?">what town was 
              your father born in?</option>
              <option value="What is first name of your best friend childhood?">What 
              is first name of your best friend childhood?</option>
            </select> </td>
        </tr>
        <tr> 
          <td width="374"><font color="#008B00" size="+1" face="Courier New, Courier, mono">Type Your answer here</font></td>
          <td ><input  type="text" name="answer" size="50" /></td>
        </tr>
        <tr> 
          <td width="374"><font color="#008B00" size="+1" face="Courier New, Courier, mono">Select your Security Questions2?</font></td>
          <td width="352"> <select name="security1">
              <option value="0">--Select Your Security Questions-----</option>
              <option value="what was your favourite food as a child?">what was 
              your favourite food as a child?</option>
              <option value="what is favourite author??">what is favourite author?</option>
              <option value="what was your favourite childhood game?">what was 
              your favourite childhood game?</option>
            </select> </td>
        </tr>
        <tr> 
          <td width="374"><font color="#008B00" size="+1" face="Courier New, Courier, mono">Type Your answer here</font></td>
          <td ><input  type="text" name="answer1" size="50" /></td>
        </tr>
        <tr> 
          <td> </td>
          <td><input name="submit" type="submit" value="&nbsp;&nbsp;&nbsp;Ok&nbsp;&nbsp;&nbsp;" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="userpage.jsp">
            <input name="button" type="button" value="Cancel" />
            </a> </td>
        </tr>
      </table>
      </strong>
      <p>&nbsp;</p>
    </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
	