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
  background-color:#7D9EC0;
  }
  
  </style>
  <script type="text/javascript">
  function valid()
  {
   if(document.f1.filename.value=="")
  {
  alert ("Type Your file name");
  document.f1.filename.focus();
  return false;
  }
  
   if(document.f1.dwnloadcost.value=="")
  {
  alert ("Type download file cost");
  document.f1.dwnloadcost.focus();
  return false;
  }
  
  if(document.f1.datafile.value=="")
  {
  alert ("Select a file");
  document.f1.datafile.focus();
  return false;
  }
  
  
  
  }
  
  </script>
  
</head>

<body>
<%



String a1=(String)session.getAttribute("resource1");


Connection con1=null;
Statement st=null;
ResultSet rs=null;
String v=null;

if(a1.equals("AES"))
{
v="Not Valid";
}
if(a1.equals("DES"))
{
v="Not Valid";
}
if(a1.equals("FILEKEY"))
{
int t=(int)(Math.random()*200000);
v=Integer.toString(t);

}

session.setAttribute("fk1",v);


int id=0;
try
{
con1=databasec.getconnection();
st=con1.createStatement();
rs=st.executeQuery("select max(fileid) from fileupload");
while(rs.next())
{
if(rs.getInt(1)==0)
id=1;
else
id=rs.getInt(1)+1;
}

session.setAttribute("fid",id);


}

 catch(Exception e)
        {
            out.println(e.getMessage());
        }
       


%>
<form name="f1"  class="s1"action="owner1.jsp" method="post" onsubmit="return valid()">
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
		 
		  
		   
		  
		   
          <li><a href="login.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    
    <div id="site_content"> 
      <div align="center"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#0099CC" size="+2" face="Courier New, Courier, mono"><strong>&nbsp;FILE 
        UPLOAD</strong></font> </div>
      <table width="842"><tr>
          <td width="405" height="498"><div align="left"><img src="images/file-upload.jpg" width="386" height="460"> 
              <font size="+2" face="Courier New, Courier, mono"><strong>Your Security<img src="images/key-pete-blau.jpg" width="47" height="49" align="absmiddle">
<input   type="text" name="skey" value="SK<%=(int)(Math.random()*100000)%>"></strong></font></div></td>
		<td width="425">
		
    <table width="429" height="486" >
              <tr> 
                <td width="160"><font color="#990000" size="+1" face="Courier New, Courier, mono">File 
                  ID </font></td>
                <td width="257"><input type="text" name="fileid"  value="<%=id%>"></td>
              </tr>
              <tr> 
                <td><font color="#990000" size="+1" face="Courier New, Courier, mono">File 
                  Name </font></td>
                <td><input type="text" name="filename" /></td>
              </tr>
              <tr> 
                <td><font color="#990000" size="+1" face="Courier New, Courier, mono">Algorithm</font></td>
                <td><input type="text" name="algo" value="<%=a1%>"/></td>
              </tr>
              <tr> 
                <td><font color="#990000" size="+1" face="Courier New, Courier, mono">File 
                  Key </font></td>
                <td><input type="text" name="filekey" value="<%=v%>" /></td>
              </tr>
              <tr> 
                <td><font color="#990000" size="+1" face="Courier New, Courier, mono">Card 
                  Type </font></td>
                <td><input type="text" name="card"  placeholder="Eg:Debit(OR)Credit " /></td>
              </tr>
              <tr> 
                <td><font color="#990000" size="+1" face="Courier New, Courier, mono">Card 
                  Number </font></td>
                <td><input type="text" name="cardnumber"   /></td>
              </tr>
              <tr> 
                <td><font color="#990000" size="+1" face="Courier New, Courier, mono">Password</font></td>
                <td><input type="password" name="cpwd"   /></td>
              </tr>
              <tr> 
                <td height="107"> </td>
                <td><input name="submit" type="submit" value="Continue" /> <a href="#"><IMG src="images/Upload1.png" width="67" height="46" ></a></td>
              </tr>
            </table>
	
	</td></tr></table>
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
