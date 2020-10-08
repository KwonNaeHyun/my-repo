<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get the checkbox!</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
String sSeason[] = request.getParameterValues("season");
for (String season : sSeason) {
	out.println(season+" ");
}
%>
</body>
</html>