
<%@ include file="connect.jsp"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<%! Date d=new Date(); %>

<%!DateFormat df=new SimpleDateFormat("dd/MM/yy");%>

<%
	String bname=(String)session.getAttribute("bname");
	String bid=(String)session.getAttribute("bid");
	String roll=(String)session.getAttribute("roll");
	String bauthor=(String)session.getAttribute("bauthor");
	String sname=(String)session.getAttribute("sname");
	out.println(sname);
	try{
		PreparedStatement pst=con.prepareStatement("insert into orderbook values(?,?,?,?,?,?,?,?)");
		pst.setString(1,roll);
		pst.setString(2,sname);
		pst.setString(3,bid);
		pst.setString(4,bname);
		pst.setString(5,bauthor);
		pst.setString(6,d.toLocaleString());
		pst.setString(7,d.toLocaleString());
		int t=pst.executeUpdate();
		if(t>0)
			out.println("<h3><font color="red">Book ordered Successfully");
		con.close();
	}
	catch(Exception e){}
%>	