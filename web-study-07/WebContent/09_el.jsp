<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.saeyan.javabeans.MemberBean" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL에서 Bean 사용</title>
</head>
<body>
<% MemberBean bean = (MemberBean) request.getAttribute("member"); 
out.write(bean.getName());
out.write(bean.getUserid());
out.write("한글");
%>
<hr>

<!--  위와 같이 스크립트릿으로 할수도 있으나 아래처럼 표현언어로도 할수 있다 -->
${member.name} <br>
${member["userid"] }
</body>
</html>