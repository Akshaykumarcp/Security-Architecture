
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>INFYCLOUD</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%
	
         try{
		 
		Blob ba= (Blob)session.getAttribute("resumeBlob");

		if(ba != null)
		{
	
			String filename="filename";
			filename+=".doc";
			byte[] ba1 = ba.getBytes(1, (int)ba.length());
			response.setContentType("application/msword");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba1);
			os.close();
			ba = null;
		
			session.removeAttribute("budget");
			}
	
			}
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		
		
		
%>

</body>
</html>