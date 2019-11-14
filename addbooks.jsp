<%@include file="connect.jsp"%>
<%
	try{
			String str1 = request.getParameter("bn");
            String str2 = request.getParameter("bc");
            String str3 = request.getParameter("aut");
            String str4 = request.getParameter("doa");
            String str5 = request.getParameter("pr");
            String str6 = request.getParameter("rn");
            String str7 = request.getParameter("nob");
            String str8 = request.getParameter("sc");
			PreparedStatement pst=con.prepareStatement("insert into addbooks values(?,?,?,?,?,?,?,?)");
			pst.setString(1,str1);
			pst.setString(2,str2);
			pst.setString(3,str3);
			pst.setString(4,str4);
			pst.setString(5,str5);
			pst.setString(6,str6);
			pst.setString(7,str7);
			pst.setString(8,str8);
			int t=pst.executeUpdate();
			if(t>0)
				out.println("<h3>Book update successfully");
			else
				out.println("Not update successfully");
			con.close();
			}
				catch(Exception e){
				}
				%>
			