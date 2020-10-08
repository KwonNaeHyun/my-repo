<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
자바 코드 : <%=request.getParameter("id") %> <br>
EL : ${param.id} <br>

<hr>

== 연산자 사용 결과 : <%= request.getParameter("id")=="mrkwons" %> <br>
equals() 메소드 사용 결과 : <%= request.getParameter("id").equals("mrkwons") %>  <br>
EL 사용 결과 : ${param.id == "mrkwons" }
</body>
</html>