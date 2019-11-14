<%@ include file="options1.html"%>
<%@ include file="connect.jsp"%>
<%
	String bname=(String)session.getAttribute("bname");
	String bid=(String)session.getAttribute("bid");
	String roll=(String)session.getAttribute("roll");
	String bauthor=(String)session.getAttribute("bauthor");
	out.println(bauthor);
	try
	{
		PreparedStatement pst=con.prepareStatement("select bname,bcode,author,doa,price,rackno,nob,scode from addbooks where bname=? and bcode=?");
		pst.setString(1,bname);
		pst.setString(2,bid);
		ResultSet rs=pst.executeQuery();
		 out.println("<html><head></head><body bgcolor=white><center><table border=2 bgcolor=white ><tr><th>BNAME</th><th>BCODE</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>");
              if(rs.next())
              {
               out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td></tr>");
              
              out.println("</table></body></html>");%>
			  <center><a href="./order1.jsp">ORDER NOW</a>
			  <%
              pst.close();
              rs.close();
			  con.close();
			  }
			  else
			  {
				  out.println("<h3><center>The book is not available");
			  }
	}
		catch(Exception e){}
%>
