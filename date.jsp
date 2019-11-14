<%@ include file="connect.jsp"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.time.LocalDate"%>
<html>
<body>
<%! Date d=new Date(); %>
<%! LocalDate date=LocalDate.now().plusDays(15);%>
<%!DateFormat df=new SimpleDateFormat("dd/MM/yy");%>

getdate:<%=new Date().toLocaleString()%>
<% out.println(new Date().toLocaleString());%>
<% out.println(date.toString());%>

</body>
</html>