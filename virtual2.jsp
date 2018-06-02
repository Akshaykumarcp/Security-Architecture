<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Home Page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
<style type="text/css">
.b1
{
background-color:#87CEFA;
}

</style>

</head>

<body>

<%
String loc=request.getParameter("location");
session.setAttribute("loc1",loc);


%>
<form  class="b1">
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
          
          <li><a href="virtual1.jsp">Back</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content">
      <h1 align="center"><font color="#669933" size="+2" face="Courier New, Courier, mono"><strong>SERVICE 
        PROVIDER OFFER THE TYPES OF VIRTUAL PROVIDER TO SERVICE USER</strong></font></h1>
  <table height="791" width="788">
  <tr>
        <td width="365" > <ul>
            <li> 
              <p><font color="#999999" size="+2">VIRTUAL PROVIDER INDIA </font><img src="images/indian-flag-24.jpg" align="absmiddle" width="275" height="159" /></p>
            </li>
            <li>
              <p><font size="+1" face="Courier New, Courier, mono">Virtual ID : VIPINDIA001</font></p>
            </li>
            <li> 
              <p><font size="+1" face="Courier New, Courier, mono">Virtual Resources</font></p>
              <ul>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">CHENNAI</font></p>
                </li>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">HYDERBAD</font></p>
                </li>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">BANGALORE</font></p>
                </li>
              </ul>
            </li>
          </ul> </td>
         <td width="411"> <ul>
            <li> 
              <p><font color="#999999" size="+2"> VIRTUAL PROVIDER ENGLAND </font><img src="images/England-Flag.jpg" align="absmiddle" width="326" height="161" /></p>
            </li>
            <li> 
              <p><font size="+1" face="Courier New, Courier, mono">Virtual ID 
                : VIPENGLAND009</font></p>
            </li>
            <li> 
              <p><font size="+1" face="Courier New, Courier, mono">Virtual Resources</font></p>
              <ul>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">RUTLAND</font></p>
                </li>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">SOMERSET</font></p>
                </li>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">SOUTH YORKSHIRE</font></p>
                </li>
              </ul>
            </li>
          </ul> </td>
  </tr>
  
  <tr>
        <td width="365"> <ul>
            <li> 
              <p><font color="#999999" size="+2">VIRTUAL PROVIDER USA </font><img src="images/usa-flags.gif" align="absmiddle" width="257" height="147" /></p>
            </li>
            <li>
              <p><font size="+1" face="Courier New, Courier, mono">Virtual ID : VIPUSA005</font></p>
            </li>
            <li> 
              <p><font size="+1" face="Courier New, Courier, mono">Virtual Resources</font></p>
              <ul>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">NEW YORK</font></p>
                </li>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">CALIFORNIA</font></p>
                </li>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">NEW MEXICO</font></p>
                </li>
              </ul>
            </li>
          </ul> </td>
        <td width="411"> <ul>
            <li> 
              <p><font color="#999999" size="+2">VIRTUAL PROVIDER AUSTRALIA </font><img src="images/australia.gif" align="absmiddle" width="329" height="134" /></p>
            </li>
            <li>
              <p><font size="+1" face="Courier New, Courier, mono">Virtual ID : VIPAUS017</font></p>
            </li>
            <li> 
              <p><font size="+1" face="Courier New, Courier, mono">Virtual Resources</font></p>
              <ul>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">QUEENSLAND</font></p>
                </li>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">SOUTH WALES</font></p>
                </li>
                <li> 
                  <p><font size="+1" face="Courier New, Courier, mono">TASMANIA</font></p>
                </li>
              </ul>
            </li>
          </ul> </td>
  </tr>
  
  
  </table>  
  
    </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
