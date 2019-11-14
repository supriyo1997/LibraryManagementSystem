<%@include file="connect.jsp"%>

<%
		 try
             {
              Statement st=con.createStatement();
              ResultSet rs = st.executeQuery("select * from details12");
              out.println("Currently existing members are");
               out.println("<html><head></head><body bgcolor=seagreen><table border=2><tr><th>L_CARD_ID</th><th>CARD_HOLDER_NAME</th><th>JOD_OF_LIBRARY</th><th>MAIL_ID</th><th>ADDRESS</th><th>DEPT_ID</th><th>PH_NO</th></tr>");
              while(rs.next())
              {
               out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td></tr>");
              }
              out.println("</table></body></html>");
			  
              st.close();
              rs.close();
			  con.close();
             }
             catch(Exception e){}
            
%>
<center><a href="opt1.html">CLICK HERE FOR HOME PAGE</a>