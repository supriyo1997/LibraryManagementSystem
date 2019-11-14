<%@include file="connect.jsp"%>

<%
		 try
             {
              Statement st=con.createStatement();
              ResultSet rs = st.executeQuery("select * from orderbook");
              out.println("Currently existing books are");
               out.println("<html><head></head><body bgcolor=seagreen><table border=2><tr><th>STUDENT_ID</th><th>S_NAME</th><th>BOOK_ID</th><th>BOOK_NAME</th><th>B_AUTHOR</th><th>ISSUE_DATE</th><th>EXP-DATE</th></tr>");
              while(rs.next())
              {
               out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
              }
              out.println("</table></body></html>");
              st.close();
              rs.close();
			  con.close();
             }
             catch(Exception e){}
            
%>
<center><a href="opt1.html">CLICK HERE FOR HOME PAGE</a>