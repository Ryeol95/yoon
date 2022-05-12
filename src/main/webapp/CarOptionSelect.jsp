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
	int no = Integer.parseInt(request.getParameter("no"));
	String img = request.getParameter("img");
	int qty = Integer.parseInt(request.getParameter("qty"));
	
	/* 예약 정보 다루기
	
	 - 대여일자: 과거의 날자로 예약 불가능
 	 - 대여기간: 1일, 2일, 7일, 14일, ..... 1달, 2달, 리스: 12개월
 	 - 보험적용: 1일 1만원, 비적용
 	 - 와이파이: 1일 2만원, 비적용
 	 - 베이비시트: 1일 3만원, 비적용
 	 - 네비게이션: 1일 5천원, 비적용
 	*/
 	
	//다른 jsp로 넘겨서 예약 마감되도록 설정하기
%>

<form action="RentCarMain.jsp?center=CarReserveResult.jsp" method="post">
	<table width="800">
		<tr height="100">
			<td align="center" colspan="3">
				<font size="5" color="gray">옵션 선택</font>
			</td>
		</tr>
		<tr height="100">
			<td width="500" align="center" rowspan="7">
				<img src="./images/<%=img %>" width="450">
			</td>
			<td width="250" align="center">대여일자</td>
			<td width="250" align="center">
				<input type="date" name="rday" size="10">
			</td>	
		</tr>
		<tr height="50">
			<td width="250" align="center">대여기간</td>
			<td width="250" align="center">
				<select name="dday">
					<option value="1">1일</option>
					<option value="7">7일</option>
					<option value="14">2주</option>
					<option value="31">1달</option>
					<option value="365">1년</option>				
				</select>
			</td>	
		</tr>
		<tr height="50">
			<td width="250" align="center">보험적용여부</td>
			<td width="250" align="center">
				<select name="insurance">
					<option value="1">적용(1일 1만원)</option>
					<option value="2">적용(7일 1만원)</option>
					<option value="3">비적용</option>				
				</select>
			</td>	
		</tr>
		<tr height="50">
			<td width="250" align="center">와이파이적용</td>
			<td width="250" align="center">
				<select name="wifi">
					<option value="1">적용(1일 1만원)</option>
					<option value="2">적용(7일 7만원)</option>
					<option value="3">비적용</option>				
				</select>
			</td>	
		</tr>
		<tr height="50">
			<td width="250" align="center">베이비시트적용</td>
			<td width="250" align="center">
				<select name="babyseat">
					<option value="1">적용(1일 1만원)</option>
					<option value="2">적용(7일 7만원)</option>
					<option value="3">비적용</option>				
				</select>
			</td>	
		</tr>
		<tr height="50">
			<td width="250" align="center">네비게이션적용</td>
			<td width="250" align="center">
				<select name="navination">
					<option value="1">적용(1일 1만원)</option>
					<option value="2">적용(7일 7만원)</option>
					<option value="3">비적용</option>				
				</select>
			</td>	
		</tr>
	
		<tr height="100">
			<td align="center" colspan="3">
				<input type="hidden" name="no" value="<%=no %>">
				<input type="hidden" name="qty" value="<%=qty %>">
				<input type="submit" value="자동차 예약하기">
			</td>
		</tr>
	
	</table>
</form>

</body>
</html>