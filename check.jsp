<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
 <%
		
		
		
		String username1=null,uname1=null,utype=null;
		String password1=null,pword1=null,utype1=null;
		username1=request.getParameter("uname");
		password1=request.getParameter("pass");
		

		
		session.setAttribute("uname",username1);
		session.setAttribute("pwd",password1);

		
		
		
		
		String u1="admin";
		String u2="admin";
		
		String o1="OWNER";
		String o2="OWNER";
		
		if(username1.equals(u1) && password1.equals(u2))
		{
		response.sendRedirect("admin.jsp");
               
		}
		
		if(username1.equals(o1) && password1.equals(o2))
		{
		response.sendRedirect("owner.jsp");
                 
		}
		
		
		else{
		int n=0;
		try
		{
				
		Connection conn2=databasec.getconnection();
		Statement stmt1=conn2.createStatement();
		ResultSet rs1=stmt1.executeQuery("select * from signup where username='"+username1+"' AND password='" +password1+"'");
		if(rs1.next())
		{
		n=rs1.getInt("userid");
		session.setAttribute("userid",n);

		response.sendRedirect("userpage.jsp");
		
		}
		
		else{
		
		out.print("Enter a correct username and password");
		
		}
		
		}

		catch(Exception e)
		{
		out.println(e);
		}
		}
               

	  %>
	  
</body>
</html>
