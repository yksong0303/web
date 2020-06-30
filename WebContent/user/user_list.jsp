<%@page import="java.sql.ResultSet"%>
<%@page import="common.Connector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection con = Connector.getConnection();
	Statement stmt = con.createStatement();
	String sql = "SELECT * FROM user";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<a href="/web/car_list.jsp"><button>회원정보입력</button></a>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>아이디</th>
		</tr>
		<%
			while (rs.next()) {
		%>

		<tr>
			<th><%=rs.getInt("num")%></th>
			<th><%=rs.getString("NAME")%></th>
			<th><%=rs.getString("ID")%></th>
			<%
				}
			%>
		
	</table>
</body>
</html>