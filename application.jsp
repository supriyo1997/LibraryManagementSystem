<%@ include file="connect.jsp"%>
<html>
<head>
<script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?id='+id;
    f.submit();
}
</script>
</head>
<body>

<br><br>
<form method="post" name="form">
<table border="1">
<tr><th>BNAME</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>

<%

Statement st;
try{
String query = "select * from addbooks";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>

<td><input type="button" name="edit" value="Edit" style="background-color:green;font-weight:bold;color:white;"  onclick="editRecord(<%=rs.getString("bcode")%>);" ></td>
</tr>
<%
}
con.close();
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>
<center><a href="opt1.html">CLICK HERE FOR HOME PAGE</a>
</body>
</html>
