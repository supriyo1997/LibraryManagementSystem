
<%@ include file="connect.jsp"%>
<form method="post" action="update.jsp">
<table border="1">
<tr><th>BNAME</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>
<%
String id=request.getParameter("id");
out.println("<h3>"+id);
int sumcount=0;
try {
String query = "select * from addbooks where bcode="+id;
Statement st=st=con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="bname" value="<%=rs.getString("bname")%>"></td>
<td><input type="text" name="author" value="<%=rs.getString("author")%>"></td>
<td><input type="text" name="doa" value="<%=rs.getString("doa")%>"></td>
<td><input type="text" name="price" value="<%=rs.getString("price")%>"></td>
<td><input type="text" name="rackno" value="<%=rs.getString("rackno")%>"></td>
<td><input type="text" name="nob" value="<%=rs.getString("nob")%>"></td>
<td><input type="text" name="scode" value="<%=rs.getString("scode")%>"></td>
<td><input type="hidden" name="id" value="<%=rs.getString(2)%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
con.close();
}
catch(Exception e){}
%>
</table>
</form>