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
  
  .c1
  
  {
  font-face:courier;
  color :#FF69B4;
  font-weight:Bolod;
  font-size:14px;
  }
   #logo {background:url(images/ccc.jpg) repeat;}
  </style>
  <script type="text/javascript">
  function valid1()
  {
  if(document.f1.security.selectedIndex==0)
  {
  alert ("Select your first Security Question");
  document.f1.security.focus();
  }
  
  if(document.f1.answer.value=="")
  {
  alert ("Type a your answer");
  document.f1.answer.focus();
  return false;
  }
  
   if(document.f1.security1.selectedIndex==0)
  {
  alert ("Select your second Security Question");
  document.f1.security1.focus();
  }
  
  if(document.f1.answer1.value=="")
  {
  alert ("Type a your answer");
  document.f1.answer1.focus();
  return false;
  }
  
  if(document.f1.pannumber.value=="")
  {
  alert ("Type a your Proof Number");
  document.f1.pannumber.focus();
  return false;
  }
  
  if(document.f1.code1.value=="")
  {
  alert ("Type a given CODE");
  document.f1.code1.focus();
  return false;
  }
  alert("Sign Up Successfull");
  }
  </script>
  
  
</head>

<body>
<form name="f1" action="insert1.jsp" method="post"  onsubmit="valid1()">
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
         <li><a href="login.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    
  <div id="site_content">
  <br>
<br>
  
  <p align="left" class="c1">This following questions are security Issuse so fill all fields !....</p>
  <table height="123" width="597">
  
  <tr>
  <td width="256">Select your Security Questions1?</td>
  <td width="329">
  <select name="security"><option value="0">--Select Your Security Questions-----</option>
  <option value="What town were you born in?">What town were you born in?</option>
  <option value="what town was your father born in?">what town was your father born in?</option>
  <option value="What is first name of your best friend childhood?">What is first name of your best friend childhood?</option>
  </select>
	</td>
	<tr>
 <td width="256">Type Your answer here</td>
 <td ><input  type="text" name="answer" size="50"></td>
 </tr>
	
<tr>
  <td width="256">Select your Security Questions2?</td>
  <td width="329">
  <select name="security1"><option value="0">--Select Your Security Questions-----</option>
  <option value="what was your favourite food as a child?">what was your favourite food as a child?</option>
  <option value="what is favourite author??">what is favourite author?</option>
  <option value="what was your favourite childhood game?">what was your favourite childhood game?</option>
  </select>
	</td>
	<tr>
 <td width="256">Type Your answer here</td>
 <td ><input  type="text" name="answer1" size="50"></td>
 </tr>
 
 <tr>
 <td width="256">Type your License / PAN / VoterId Number</td>
 <td><input type="text" name="pannumber" ></td>
 </tr>	
 
 
 <tr>
 <td width="256">Type the Code Shown</td>
 <td><input type="text" name="code" value="Code<%=(int)(Math.random()*1000) %>"></td>
 </tr>	
 
 <tr>
 <td width="256"></td>
 <td><input type="text" name="code1"></td>
 </tr>
 

 <tr>
  <td width="256">Dont forget this answer because that all answer must need to do user Actions !...</td>
 <td><input type="submit" name="suubmit" value="SUBMIT"></td>
 </tr>
	

  
  
  
 
  
  
  </table>  
  </div>
    <div id="footer"></div>
  </div>
  </form>
</body>
</html>
