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
	String sql = "SELECT * FROM user ";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<a href="/web/user/user_insert.jsp"><button>회원정보입력</button></a>
	<form action="/web/user/user_del_ok.jsp">
	<button>삭제</button>
	<table border="1">
		<tr>
			<th><input type="checkbox" id="all" onclick="checkAll()"></th>
			<th>번호</th>
			<th>ID</th>
			<th>유저명</th>
		</tr>
		<%
			while (rs.next()) {
		%> 

		<tr>
			<td><input type="checkbox" NAME="ch" VALUE="<%=rs.getInt("num")%>"></td>
			<td><a href="/web/user/user_update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("num")%></a></td>
			<td><a href="/web/user/user_update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("NAME")%></a></td>
			<td><a href="/web/user/user_update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("ID")%></a></td>
			<%
				}
			%>
		
	</table>
	</form>
	
	<script>
		function checkAll(){
			var obj = document.getElementById('all');
			var objs = document.getElementsByName('ch'); 
			for(var i =0;i<objs.length;i++){
				objs[i].checked = obj.checked;
			}
			
		}
	</script>
</body>
</html>