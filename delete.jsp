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
  .d1
  {
  color:#FFB5C5;
  font-weight:bold;
  }
  .d1:hover
  {
  color:#EE3A8C;
  }
  
  .f1
  {
  color:#27408B;
  font-weight:bold;
  }
    .x2
{
background:url(images/dele.jpg) repeat;
}

  
  </style>

</head>

<body>
<form name="f3" class="x2">
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
		     
		   
		   <li><a href="admin.jsp">Back</a></li>

		   
          <li><a href="adminlogin.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content1"> 
    <h1 align="center" class="d1"><strong><font  size="+2" face="Courier New, Courier, mono">USER 
      LIST</font></strong></h1>
    <font face="Courier New, Courier, mono" size="+1" color="#FFB5C5">
<table height="112" width="717" border="1">
  <tr>
        <td width="72" class="d1" height="71">USER ID</td>
  <td  class="d1"width="71">USER NAME</td>
  <td class="d1" width="82">EMAIL ID</td>
  <td  class="d1"width="45">DOB</td>
  <td class="d1" width="133">MOBILENUMBER</td>
  <td class="d1" width="90">LOCATION</td>
  <td  class="d1" width="66">GENDER</td>
  <td  class="d1" width="122">DELETE</td>
  
  
  
  </tr>
  
  <%
  Connection con=null;
  Statement st=null;
  ResultSet rs=null;
  
  
  int id=0;
  String name=null,eid=null,dob=null,mno=null,loc=null,gender=null;
  try
  {
  con=databasec.getconnection();
  st=con.createStatement();
  rs=st.executeQuery("select * from signup");
  
  while(rs.next())
  {
  id=rs.getInt("userid");
  name=rs.getString("username");
  eid=rs.getString("emailid");
  dob=rs.getString("dob");
  mno=rs.getString("mobilenumber");
  loc=rs.getString("address");
  gender=rs.getString("gender");
  
  %>
  <tr>
  <td    class="f1"height="33"><%=id%></td>
    <td class="f1"><%=name%></td>
	  <td class="f1"><%=eid%></td>
	    <td class="f1"><%=dob%></td>
		  <td class="f1"><%=mno%></td>
		    <td class="f1"> <%=loc%></td>
			  <td class="f1"><%=gender%></td>
			  
			  
			  <%
			  		session.setAttribute("uid1",id);
			  %>
			  <td width="122" class="f1"><a href="delete1.jsp?<%=id%>">delete</a></td>
		

			  
  
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
  </font>
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
