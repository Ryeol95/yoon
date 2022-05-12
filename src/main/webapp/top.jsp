<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 에약쇼핑</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");

	if(id == null){
		id = "guest";
	}
	
%>

<table width="800">
	<tr height="100">
		<td align="center">
			<a href="RentCarMain.jsp" style="text-decoration: none">
			<img src="./images/hyundailogo.JPG" alt="현대자동차" width="100" height="50">
		</td>
		<td colspan="4" align="center">
			<font size="13">현대 자동차 쇼핑몰(주)</font>
		</td>
		
		<td align="center" width="200">
			<%=id %>님 반갑습니다
		<%
			if(id.equals("guest")){
		%>
			<button onclick = "location.href = 'RentCarMain.jsp?center=Sessionlogin.jsp'">로그인</button>
		
		<%		
			}else{		
		%>			
			<button onclick = "location.href = 'Sessionlogout.jsp'">로그아웃</button>
		
		<%
			}
		%>	
		</td>
	</tr>
	<tr>
		<td width="200" align="center" bgcolor="pink">
			<font color="white" size="5">
				<a href="RentCarMain.jsp?center=CarReserveMain.jsp" style="text-decoration: none">예약하기</a></font>
		</td>
		<td width="200" align="center" bgcolor="pink">
			<font color="white" size="5">
			<a href="#" style="text-decoration: none">예약확인</a></font>
		</td>
		<td width="200" align="center" bgcolor="pink">
			<font color="white" size="5">
			<a href="#" style="text-decoration: none">자유게시판</a></font>
		</td>
		<td width="200" align="center" bgcolor="pink">
			<font color="white" size="5">
			<a href="#" style="text-decoration: none">이벤트</a></font>
		</td>
		<td width="200" align="center" bgcolor="pink">
			<font color="white" size="5">
			<a href="#" style="text-decoration: none">고객센터</a></font>
		</td>	
	</tr>
	
</table>

</body>
</html>