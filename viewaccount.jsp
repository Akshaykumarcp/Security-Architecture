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
  background:url(images/im1.jpg) repeat;
  }
   #logo {background:url(images/ccc.jpg) repeat;}
  </style>
</head>

<body>
<form name="f1" class="s1">
<%


String s1=(String)session.getAttribute("uname");

Connection con1=null;
Statement st=null;
ResultSet rs=null;
int idy=(Integer)session.getAttribute("userid");




String name=null,username=null,emailid=null,dob1=null,address=null,mno1=null,cry1=null,gender=null,utype=null;



try
{
con1=databasec.getconnection();
st=con1.createStatement();
rs=st.executeQuery("select * from signup where userid='"+idy+"'");
while(rs.next())
{
name=rs.getString("name");
username=rs.getString("username");
emailid=rs.getString("emailid");
dob1=rs.getString("dob");
address=rs.getString("address");
mno1=rs.getString("mobilenumber");
gender=rs.getString("gender");



}

}

 catch(Exception e)
        {
            out.println(e.getMessage());
        }
       


%>


<%


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
    <h1><font color="#71C671">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="+3" face="Courier New, Courier, mono"><strong>ACCOUNT 
      INFORMATION</strong> </font></font>&nbsp;<img align="absmiddle" src="images/aa.png" height="150" width="189" /></h1>
	
	
    <table height="524" width="413">
  
  
  <tr >
        <td width="152" ><font color="#666699" size="+1" face="Courier New, Courier, mono">User Id</font></td>
    <td width="249" ><input type="text" name="id" size="30" value="<%=idy %>" disabled ></td></tr>
  

  <tr >
        <td ><font size="+1" color="#666699" face="Courier New, Courier, mono">Name</font></td>
    <td ><input type="text" name="name" size="30" disabled  value="<%=name%>"></td></tr>
	
	<tr >
        <td ><font color="#666699" size="+1" face="Courier New, Courier, mono">User Name</font></td>
    <td><input type="text" name="username" size="30" disabled value="<%=username%>"></td></tr>
	
	<tr >
        <td ><font size="+1" color="#666699" face="Courier New, Courier, mono">Email id</font></td>
    <td ><input type="text" name="eid" size="30" disabled value="<%=emailid%>"  ></td></tr>
	
	
	
	
	<tr >
        <td ><font size="+1" color="#666699" face="Courier New, Courier, mono">Dob</font></td>
    <td  ><input type="text" name="dob" size="30" disabled value="<%=dob1%>"  >
	
	<tr >
        <td><font size="+1" color="#666699" face="Courier New, Courier, mono">Address</font></td>
    <td ><input type="text" name="address" size="30" disabled value="<%=address%>" ></td></tr>
	
	<tr >
        <td ><font size="+1" color="#666699" face="Courier New, Courier, mono">Mobile Num</font>&nbsp;&nbsp;</td>
    <td ><input type="text" name="mno"size="30" disabled value="<%=mno1%>" ></td></tr>
	
	
	<tr >
        <td><font size="+1" color="#666699" face="Courier New, Courier, mono">Gender</font></td>
    <td ><input type="text" name="gen" size="30" disabled value="<%=gender%>" ></td></tr>
		
	
	 
  
  </table>  
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
