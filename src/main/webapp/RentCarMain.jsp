<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentCar Site</title>
</head>
<body>
<%
	String center = request.getParameter("center");
	
	if(center == null){
		center = "Center.jsp";
	}
%>

<table border="1" width="1000">
	<tr height="150">
		<td align="center" colspan="2">
			<jsp:include page="top.jsp"></jsp:include>
		</td>
	</tr>
	<tr height="400">
		<td align="center" width="800">
			<jsp:include page="<%=center%>"/>		
		</td>
	</tr>
	<tr height="150">
		<td align="center" colspan="2">
			<jsp:include page="buttom.jsp"/>		
		</td>
	</tr>
	
</table>
</body>
</html>