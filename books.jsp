<%@include file="connect.jsp"%>

<%
		 try
             {
              Statement st=con.createStatement();
              ResultSet rs = st.executeQuery("select * from addbooks");
              out.println("Currently existing books are");
               out.println("<html><head></head><body bgcolor=seagreen><table border=2><tr><th>BNAME</th><th>BCODE</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>");
              while(rs.next())
              {
               out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td></tr>");
              }
              out.println("</table></body></html>");
              st.close();
              rs.close();
			  con.close();
             }
             catch(Exception e){}
            
%>
<center><a href="opt1.html">CLICK HERE FOR HOME PAGE</a>