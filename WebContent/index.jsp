<%@page import="java.util.*"%>
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
List<String> strList = new ArrayList<>();
strList.add("gkgk");
strList.add("qeqe");
for(String str:strList){
	out.println(str+"<br>");
}
out.println(strList.get(0));
out.println(strList.get(1));
%>
</body>
</html>