
<%@ include file="connect.jsp"%>
<%
	String bauthor=request.getParameter("pwd");
	String bname=request.getParameter("id");
	PreparedStatement pst=con.prepareStatement("select *from addbooks where bname=? and author=?");
	pst.setString(1,bname);
	pst.setString(2,bauthor);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("bname",bname);
		session.setAttribute("bauthor",bauthor);
		response.sendRedirect("userhome.jsp");
	}
	else
	{
	%>
	<%@include file="login1.html"%>
	<font color="red">No book Available</font>
	<%
	}
	con.close();

	
%>	