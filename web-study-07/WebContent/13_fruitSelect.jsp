<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
<c:forEach items="${paramValues.fruit}" var="fruit">
	<c:choose>

		<c:when test="${fruit == 1}">
			<span style="color:red;">사과</span>
		</c:when>
		<c:when test="${fruit == 2}">
			<span style="color:green;">메론</span>
		</c:when>
		<c:when test="${fruit == 3}">
			<span style="color:blue;">바나나</span>
		</c:when>
	</c:choose>
</c:forEach>

<%-- varStatus를 사용하여 현재 인덱스 정보 출력 --%>
<table border=1>
	<tr><th>index</th><th>count</th><th>fruitName</th></tr>
	<c:forEach items="${paramValues.fruit}" var="fruit" varStatus="status">
		<tr>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>
				<c:choose>
					<c:when test="${fruit == 1}">
						<span style="color:red;">사과</span>
					</c:when>
					<c:when test="${fruit == 2}">
						<span style="color:green;">메론</span>
					</c:when>
					<c:when test="${fruit == 3}">
						<span style="color:blue;">바나나</span>
					</c:when>
				</c:choose>
			</td>
	</c:forEach>
</table>

</body>
</html>

	<%--  왜 주석처리했냐고? form이 checkBox 타입이므로 fruit에는 value가 여러개 있을수 있다.
	<c:when test="${param.fruit == 1 }">
		<span style="color:red;">사과</span>
	</c:when>
	<c:when test="${param.fruit == 2 }">
		<span style="color:green;">메론</span>
	</c:when>
	<c:when test="${param.fruit == 3 }">
		<span style="color:blue;">바나나 </span>
	</c:when>
	--%>
	