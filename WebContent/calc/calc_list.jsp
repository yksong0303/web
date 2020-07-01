<%@page import="vo.calcHis"%>
<%@page import="java.util.List"%>
<%@page import="service.CalcService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>연산식</th>
			<th>결과</th>
		</tr>
		<%
		CalcService cs = new CalcService();
		List<calcHis> chList = cs.getCalcList();
		for (calcHis ch : chList) {
		%>
		<tr>
			<td><%=ch.getNum()%></td>
			<td><%=ch.getOps()%></td>
			<td><%=ch.getResult()%></td>
			<%
				}
			%>
	</table>
</body>
</html>