<%@ page  language="java" import="java.sql.*,databaseconnection.*"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Home Page</title>
  <script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>
  <style type="text/css">
  .s1
  {
  background:url(images/comm.jpg) repeat;
  }
  #logo {background:url(images/ccc.jpg) repeat;}
 #menubar {
width: 1500px;
height: 50px;
background: orange;
 }
  </style>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  
  <script type="text/javascript">
	function reg()
	{
	var a = document.f2.name.value;
	if(a=="")
	{
	alert ("Enter a name");
	document.f2.name.focus();
	return false;
	}
	
	if(!isNaN(a))
	{
	alert ("Enter a alphat");
	document.form1.name.select();
	return false;
	}
	
	var b=document.f2.uname.value;
	
	if(b=="")
	{
	alert ("Enter user name");
	document.f2.uname.focus();
	return false;
	}
	
	var z=document.f2.eid.value;
	if(z=="")
	{
	alert ("enter a mail id");
	document.f2.eid.focus();
	return false;
	}
	
	
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
	var c=emailfilter.test(document.f2.eid.value);
	if(c==false)
	{
	alert(" Enter valid Mail ID");
	document.f2.eid.select();
	return false;
	}
	
	var d=document.f2.pass.value;
	if(d=="")
	{
	alert ("Enter a password");
	document.f2.pass.focus();
	return false;
	}
	
	var e=document.f2.cpass.value;
	if(e=="")
	{
	alert ("enter confirm password");
	document.f2.cpass.focus();
	return false;
	}
	if(d!=e)
	{
	alert ("Enter correct password");
	document.f2.cpass.select();
	return false;
	}
	
	var f=document.f2.dob.value;
	if(f=="")
	{
	alert ("Pick date");
	document.f2.dob.focus();
	return false;
	}
	
	
	
	var h=document.f2.mno.value;
	if(h=="")
	{
	alert ("Enter mobile number");
	document.f2.mno.focus();
	return false;
	}
	if(h.length!=10)
	{
	alert ("Enter valid mobile number");
	document.f2.mno.focus();
	return false;
	}
	
	
	var g=document.f2.address.value;
	if(g=="")
	{
	alert ("Enter address");
	document.f2.address.focus();
	return false;
	}
	
	if ( ( document.f2.gender[0].checked == false ) && ( document.f2.gender[1].checked == false ) )
	{
	alert ( "Please choose your Gender: Male or Female" );
	return false;
	}
	}
	
	</script>
  
  
  
  
  
  
</head>

<body>
<form name="f2" action="insert.jsp" method="post" onsubmit="return reg()" class="s1">

<%
Connection con1=null;
Statement st=null;
ResultSet rs=null;

int id=0;
try
{
con1=databasec.getconnection();
st=con1.createStatement();
rs=st.executeQuery("select max(userid) from signup");
while(rs.next())
{
if(rs.getInt(1)==0)
id=1;
else
id=rs.getInt(1)+1;
}

session.setAttribute("id",id);

}

 catch(Exception e)
        {
            out.println(e.getMessage());
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
          <li class="selected"><a href="index.html">Home</a></li>
          <li><a href="login.jsp">User Login</a></li>
          <li><a href="signup.jsp">SignUp</a></li>
          <li><a href="adminlogin.jsp">Admin</a></li>
          
        </ul>
      </div>
    </div>
	
	
    
  <div id="site_content">
    <table  height="122"  width="806" >
      <tr> 
        <td width="296"><p ><img src="images/7.png" width="282" height="450" /> 
          </p></td>
        <td width="258" height="116"  >
		<form>
		<table>
		<tr>
		<td colspan="2" align="center" > <strong><font face="mono"  size="+3" color="#996699">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SIGN UP</font></strong></td>
		
		
		
		</tr>
		<tr>
		<td><font size="+2" face="Helvetica">User Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		<td><input type="text" name="id" value="<%=id%>"></td>
		
		</tr>
		
		</tr>
		<tr>
		<td><font size="+2" face="Helvetica">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		<td><input type="text" name="name"></td>
		
		</tr>
		<tr>
		<td><font size="+2" face="Helvetica">User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		<td><input type="text" name="uname"></td>
		
		</tr>
		
		<tr>
		<td><font size="+2" face="Helvetica">Email-Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		<td><input type="text" name="eid"></td>
		
		</tr>
		
		<tr>
		<td><font size="+2" face="Helvetica">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		<td><input type="password" name="pass"></td>
		
		</tr>
		<tr>
		<td><font size="+2" face="Helvetica">Confirm Password :</font></td>
		<td><input type="password" name="cpass"></td>
		
		</tr>
		<tr>
		<td><font size="+2" face="Helvetica">Data Of Birth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		 <td  ><input id="demo1" type="text" size="20" name="dob"><a href="javascript:NewCal('demo1','ddmmyyyy')"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td></tr>
		
		</tr>
		
		<tr>
		<td><font size="+2" face="Helvetica">Mobile Number &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		<td><input type="text" name="mno"></td>
		
		</tr>
		
		<tr>
		<td><font size="+2" face="Helvetica">Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		<td><input type="text" name="address"></td>
		
		</tr>
		
		<tr>
		<td><font size="+2" face="Helvetica">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</font></td>
		<td><font size="+1" face="mono"><input type="radio" name="gender" value="Male">&nbsp;&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="Female">&nbsp;&nbsp;Female</font></td>
		</tr>
		
		
		<tr>
                    <td></td><td><input type="submit" name="s" value="SUBMIT" size="100"></td>
		
		</tr>
		
		
		
		</table>
		
		
		

		
		
		
		
       

    </table>
    </div>
			</form>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
