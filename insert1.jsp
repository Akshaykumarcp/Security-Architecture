<%@ page import="java.sql.*,java.util.*,java.lang.*,java.io.*,databaseconnection.*" errorPage="" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String qus1=null,qus2=null,ans1=null,ans2=null,proof=null,code=null;
int userid=(Integer)session.getAttribute("id");

Connection conn=null;
PreparedStatement ps=null;

try
{

conn=databasec.getconnection();
ps=conn.prepareStatement ("insert into securitysp(userid,question1,answer1,question2,answer2,proofnumber,code) values (?,?,?,?,?,?,?)");

qus1=request.getParameter("security");
ans1=request.getParameter("answer");
qus2=request.getParameter("security1");
ans2=request.getParameter("answer1");
proof=request.getParameter("pannumber");
code=request.getParameter("code1");

ps.setInt(1,userid);
ps.setString(2,qus1);
ps.setString(3,ans1);
ps.setString(4,qus2);
ps.setString(5,ans2);
ps.setString(6,proof);
ps.setString(7,code);

int x=ps.executeUpdate();

            if(x==0)
                {
                response.sendRedirect("login.jsp");}
            else
                {
                response.sendRedirect("login.jsp");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
%>

</body>
</html>
