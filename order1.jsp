 <%@ include file="connect.jsp"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.time.LocalDate"%>
<html>
<body>

<%! LocalDate date=LocalDate.now().plusDays(15);%>
<%! LocalDate d=LocalDate.now().plusDays(0);%>
<%!DateFormat df=new SimpleDateFormat("dd/MM/yy");%>


<% out.println(d.toString());%>
<% out.println(date.toString());%>
<% 
String bname=(String)session.getAttribute("bname");
	String bid=(String)session.getAttribute("bid");
	String roll=(String)session.getAttribute("roll");
	String bauthor=(String)session.getAttribute("bauthor");
	String sname=(String)session.getAttribute("sname");
	String p=date.toString();
	String q=d.toString();
	out.println(roll);
	out.println(bauthor);
	try{
		PreparedStatement pst=con.prepareStatement("insert into orderbook values(?,?,?,?,?,?,?)");
		pst.setString(1,roll);
		pst.setString(2,sname);
		pst.setString(3,bid);
		pst.setString(4,bname);
		pst.setString(5,bauthor);
		pst.setString(6,q);
		pst.setString(7,p);
		int t=pst.executeUpdate();
		if(t>0)
			out.println("<h3>Book ordered Successfully");
		con.close();
	}
	catch(Exception e){}
%>
<center><a href="options1.html">CLICK HERE FOR HOME PAGE</a>	
</body>
</html>