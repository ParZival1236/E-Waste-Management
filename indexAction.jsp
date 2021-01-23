indexAction.jsp

<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String message=request.getParameter("message");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","Lordsin$g7");
	Statement st=con.createStatement();
     st.executeUpdate("insert into contactus(name,email,phone,message) values('"+name+"','"+email+"','"+phone+"','"+message+"')");
     
     
    response.sendRedirect("save.html");
}
catch(Exception e){
	out.println(e);
}
%>