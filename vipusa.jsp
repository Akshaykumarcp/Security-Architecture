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
<form name="f1" class="s1">

<%
String s1=(String)session.getAttribute("uname");
String s5="VIPUSA";
session.setAttribute("providername",s5);
String s6="VIPUSA005";
session.setAttribute("providerid",s6);

String s2="AES";
String s3="DES";
String s4="FILEKEY";

String s7="NEW YORK";
String s8="CALIFORNIA";
String s9="NEW MEXICO";







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
          <li><a href="viewaccount.jsp">View Account</a></li>
          <li><a href="editaccount.jsp">Edit Account</a></li>
          <li><a href="pwdchange.jsp">Change Password</a></li>
		   <li><a href="requestsp1.jsp">File Upload</a></li>
          <li><a href="index.html">Logout</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content">
  <table width="1010" height="409">
  <tr> 
    <td width="1002" >
<ul>
              <li> 
                <p><strong><font color="#999999" size="+3">VIRTUAL PROVIDER USA</font><font color="#999999" size="+4"> 
                  </font></strong><img src="images/virtual-data-room.jpg" align="absmiddle" width="268" height="184" /></p>
        </li>
        <li> 
                <p><font size="+2" face="Courier New, Courier, mono"><strong>Virtual 
                  ID : VIPUSA005</strong></font></p>
              </li>
              <li> 
                 <p><strong><font size="+2" face="Courier New, Courier, mono">Virtual 
                  </font></strong><img src="images/resources.png" width="185" height="121"></p>
          <ul>
            <li> 
              <p><font size="+2" face="Courier New, Courier, mono"><a href="virtualsecurity.jsp?<%=s2+","+s7%>">NEW YORK</a></font></p>
			  <ul><li>
			            <p><font size="+1">Encryption Algorithm : AES (Advance Encryption 
                          Standard)</font></p>
                      </li>
                      <li>
                        <p><font size="+1">Stroage Size:75 GB</font></p>
                      </li>
                      <li>
                        <p><font size="+1">File Cost :$25 (1GB Data) </font></p>
                      </li>
			  
			  </ul>
			  
			  
            </li>
            <li> 
              <p><font size="+2" face="Courier New, Courier, mono"><a href="virtualsecurity.jsp?<%=s3+","+s8%>">CALIFORNIA</a></font></p>
			  <ul><li>
			            <p><font size="+1">Encryption Algorithm : DES (Data Encryption 
                          Standard)</font></p>
                      </li>
                      <li>
                        <p><font size="+1">Stroage Size:25GB</font></p>
                      </li>
                      <li>
                        <p><font size="+1">File Cost :$35 (1GB Data) </font></p>
                      </li>
                    </ul>
            </li>
            <li> 
              <p><font size="+2" face="Courier New, Courier, mono"><a href="virtualsecurity.jsp?<%=s4+","+s9%>">

NEW MEXICO
</a></font></p>
			  <ul>
                      <li> 
                        <p><font size="+1">File stored without Encryption</font></p>
                      </li>
                      <li>
                        <p><font size="+1">Stroage Size:50 GB</font></p>
                      </li>
                      <li>
                        <p><font size="+1">File Cost :$15 (1GB Data) </font></p>
                      </li>
			  
			  </ul>
            </li>
          </ul>
        </li>
      </ul> 


</td></tr></table>
  
  
  
  
  
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>

