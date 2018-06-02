<%@ page import="java.sql.*,java.util.*,java.lang.*,java.io.*,databaseconnection.*" errorPage="" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String name1=null,username1=null,emailid1=null,password1=null,confirmpassword1=null,dob1=null,address1=null;
String country1=null,gender1=null,mobilenum1=null,utype=null;
int id1=(Integer)session.getAttribute("id");

Connection conn=null;
PreparedStatement ps=null;

name1=request.getParameter("name");
username1=request.getParameter("uname");
emailid1=request.getParameter("eid");
password1=request.getParameter("pass");
confirmpassword1=request.getParameter("cpass");
dob1=request.getParameter("dob");
mobilenum1=request.getParameter("mno");
address1=request.getParameter("address");
gender1=request.getParameter("gender");

out.print(gender1);

try
{

conn=databasec.getconnection();
ps=conn.prepareStatement ("insert into signup(userid,name,username,emailid,password,confirmpassword,dob,mobilenumber,address,gender) values (?,?,?,?,?,?,?,?,?,?)");





ps.setInt(1,id1);
ps.setString(2,name1);
ps.setString(3,username1);
ps.setString(4,emailid1);
ps.setString(5,password1);
ps.setString(6,confirmpassword1);
ps.setString(7,dob1);
ps.setString(8,mobilenum1);
ps.setString(9,address1);
ps.setString(10,gender1);

int x=ps.executeUpdate();

            if(x==0)
                {
                response.sendRedirect("securitysp.jsp?message=success");}
            else
                {
                response.sendRedirect("securitysp.jsp?message=success");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
%>

</body>
</html>
