<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${requestScope.empList != null and not empty requestScope.empList }">
<table border="1" cellpadding="3">
	<tr>
		<td>REG No</td>
		<td>First Name</td>
		<td>Balance</td>
		<td>&nbsp;</td>
		
	</tr>
	
	<c:forEach items="${requestScope.empList }" var="e">
		<tr>
		<td>${ e.regNo}</td>
		<td>${ e.custName}</td>
		<td>${ e.accBalance}</td>
		<td>&nbsp;</td>
		
	</tr>
	</c:forEach>



</table>

</c:if>




</body>
</html>