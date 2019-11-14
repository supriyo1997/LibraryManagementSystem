<%@ include file="options.html"%>
<%@ include file="connect.jsp"%>
<%
	String bid=request.getParameter("id");
	String bname=request.getParameter("pwd");
	PreparedStatement pst=con.prepareStatement("select *from addbooks where bname=? and bcode=?");
	pst.setString(1,bname);
	pst.setString(2,bid);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("bname",bname);
		session.setAttribute("bid",bid);
		session.setAttribute("bauthor",rs.getString(3));
		session.setAttribute("nob",rs.getString(7));
		response.sendRedirect("userhome1.jsp");
	}
	else
	{
	%>
	<%@include file="login.html"%>
	<font color="red">Invalid userid or password</font>
	<%
	}
	con.close();

	
%>	