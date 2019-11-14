<%@include  file="connect.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String userid="";
		try
		{
			
		userid=request.getParameter("id");
		System.out.println(userid);
		String username=request.getParameter("name");
		System.out.println(username);
		String password1=request.getParameter("password");
		System.out.println(password1);
		String day=request.getParameter("dob");
		System.out.println(day);
		String mail=request.getParameter("emid");
		System.out.println(mail);
		String addres=request.getParameter("addr");
		System.out.println(addres);
		String phone=request.getParameter("pho");
		//System.out.println(phone);
		String dept=request.getParameter("deptid");
		System.out.println(dept);
		PreparedStatement pst=con.prepareStatement("insert into details12 values(?,?,?,?,?,?,?,?)");
	    pst.setString(1,userid);
	    pst.setString(2,username);
		pst.setString(3,password1);
		pst.setString(4,day);
		pst.setString(5,mail);
		pst.setString(6,addres);
		pst.setString(7,dept);
		pst.setString(8,phone);
		int i=pst.executeUpdate();
		if(i>0)
			out.println("Registered successfully");
			con.close();
		//System.out.println(i);
		}
		catch(Exception e){
		
		}
		%>
		<br><br>
		<a href="login.html">Click here for login</a>
		
		
