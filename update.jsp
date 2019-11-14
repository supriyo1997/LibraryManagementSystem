<%@ include file="connect.jsp"%>
<%
String ide=request.getParameter("id");
out.println(ide);
String bname=request.getParameter("bname");
String author=request.getParameter("author");
String doa=request.getParameter("doa");
String price=request.getParameter("price");
String rackno=request.getParameter("rackno");
String nob=request.getParameter("nob");
String scode=request.getParameter("scode");
try{
Statement st=null;
st=con.createStatement();
st.executeUpdate("update addbooks set bname='"+bname+"',author='"+author+"',doa='"+doa+"',price='"+price+"',rackno='"+rackno+"',nob='"+nob+"',scode='"+scode+"' where bcode='"+ide+"'");
response.sendRedirect("./application.jsp");
con.close();
}
catch(Exception e){
System.out.println(e);
}
%>