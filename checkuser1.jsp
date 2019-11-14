<%@ include file="connect.jsp"%>

<% 

String roll=request.getParameter("id");
String psw=request.getParameter("pwd");
try{ 
	PreparedStatement pst=con.prepareStatement("select * from details12 where userid=? and password1=?");
	pst.setString(1,roll);
	pst.setString(2,psw);
	ResultSet rs1=pst.executeQuery();
	if(rs1.next())
	{
		out.println("<h3>SUPRIYO");
		session.setAttribute("roll",roll);
		session.setAttribute("psw",psw);
		session.setAttribute("sname",rs1.getString(2));
		//redirect to menu
		%>
		
		<jsp:forward page="./options1.html"></jsp:forward>
		<%
	}
	else
	{
		//redirect to login
		%>
		
		<%@ include file="login.html"%>
		<center><font color="red" align=center>Invalid userid or password</font></center>
		<%
			
	}
	con.close();
}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>