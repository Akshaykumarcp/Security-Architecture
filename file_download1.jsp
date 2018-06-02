<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page import = "java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
	String a1=request.getParameter("skeyn");
	String a2=(String)session.getAttribute("fseckey");
	int a3=(Integer)session.getAttribute("fidx");
	String sql=null;
	
	
	
	
	/*String b=request.getQueryString();
	
	
	String sql=null;
	String x1=null,x2=null;
	String temp[]=null;
	temp=b.split(",",2);
	for(int i=0; i<temp.length; i++)
	{
	x1=temp[0];
	x2=temp[1];
	}*/
	
	
	
	if(a1.equals(a2))
	{
		
			
	Blob file= null;
	
	Connection con = null;
	PreparedStatement ps = null;
	Statement st=null;
	ResultSet rs = null;
	
	
		
	sql = "select AES_DECRYPT(file,'key') from fileupload where fileid='"+a3+"'";
	
	try
	{
		
        con=databasec.getconnection();
		st=con.createStatement();
		//ps = con.prepareStatement();
		rs = st.executeQuery(sql);
		rs.next();
		file = rs.getBlob(1);
		session.setAttribute("resumeBlob",file);
	}
	catch(Exception e)
	{
	out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
			 

	}
	
response.sendRedirect("file_download2.jsp");

}
else
{
out.print("enter a correct security key");
}

%>

</body>
</html>
