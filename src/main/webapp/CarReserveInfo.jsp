<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.co.hyundai.dao.RentcarDAO" %>    
<%@ page import = "kr.co.hyundai.vo.CarListVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 정보보기</title>
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));

	RentcarDAO rdao = new RentcarDAO();
	CarListVO cvo = rdao.getOneCar(no);
	
	
	int category = cvo.getCategory();
	String str = null;
	
	if(category == 1)
		str = "소형";
	else if(category == 2)
		str = "중형";
	else if(category == 3)
		str = "대형";	
%>

<form action="RentCarMain.jsp?center=CarOptionSelect.jsp" method="post">
	<table width="800">
		<tr height="100">
			<td align="center" colspan="3">
				<font size="5" color="gray"><%=cvo.getCarname() %>자동차 선택</font>
			</td>
		</tr>
		<tr>
			<td rowspan="6" width="500" align="center">
				<img src="./images/<%=cvo.getImg() %>" width="450">
			</td>
			<td width="250" align="center">자동차 이름</td>
			<td width="250" align="center"><%=cvo.getCarname() %></td>				
		</tr>
		<tr>
			<td width="250" align="center">자동차 수량</td>
			<td width="250" align="center">
				<select name="qty">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>			
			</td>				
		</tr>
		<tr>
			<td width="250" align="center">자동차 분류</td>
			<td width="250" align="center"><%=str %></td>				
		</tr>
		<tr>
			<td width="250" align="center">대여가격</td>
			<td width="250" align="center"><%=cvo.getPrice() %></td>				
		</tr>
		<tr>
			<td width="250" align="center">제조회사</td>
			<td width="250" align="center"><%=cvo.getCompany() %></td>				
		</tr>
		<tr>
			<td align="center" colspn="2">
			<input type="hidden" name="no" value="<%=cvo.getNo() %>">
			<input type="hidden" name="img" value="<%=cvo.getImg() %>">
			<input type="submit" value="옵션선택후에 예약하기">
			</td>				
		</tr>			
	</table>
	<br><br>
	<font size="5" color="blue">자동차 정보 보기</font>
	<p>
	<%=cvo.getInfo() %>
</form>
</body>
</html>