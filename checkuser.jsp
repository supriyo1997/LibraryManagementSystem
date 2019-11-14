

<% 
String adid=(String)request.getParameter("id");
String psw=(String)request.getParameter("pwd");
session.setAttribute("roll",adid);
out.println("<h3>"+adid+","+psw);
String s1="system",s2="12345";
try{ 
	
	if(adid.equals(s1)&&psw.equals(s2))
	{
		%>
		<jsp:forward page="./opt1.html"></jsp:forward>
		<%
		
	}
	else
	{
		%>
		//redirect to login
		
		<jsp:forward page="./login1.html"></jsp:forward>
		<%
		
	}
}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>