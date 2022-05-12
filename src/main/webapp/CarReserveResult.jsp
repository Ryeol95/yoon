<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.co.hyundai.vo.CarListVO" %>    
<%@ page import = "kr.co.hyundai.dao.RentcarDAO" %>
<%@ page import = "java.util.Date" %>    
<%@ page import = "java.text.SimpleDateFormat" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 예약 처리 하기</title>
</head>
<body>
	<jsp:useBean id="crvo" class="kr.co.hyundai.vo.CarReserveVO">
		<jsp:setProperty name="crvo" property="*"/>	
	</jsp:useBean>

	 <%=crvo.getRday() %>에 예약이 되었습니다.

<%
	String id = (String)session.getAttribute("id");

	if(id == null){
%>
	<script>
		alert("로그인하고 예약이 가능합니다.");
		location.href'RentCarMain.jsp?center=Sessionlogin.jsp';
	</script>

<%
	}
	
	Date day1 = new Date();
	Date day2 = new Date();
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	day1 = sdf.parse(crvo.getRday());
	day2 = sdf.parse(sdf.format(day2));
	
	int compare = day1.compareTo(day2);
	
	/*
		현재 시스템 날짜보다 입력된 날짜가 크면 : 1 
		현재 시스템 날짜보다 입력된 날짜가 작으면 : -1 
		현재 시스템 날짜와 입력된 날짜가 동일하면 : 0 
	
	*/
	
	if(compare < 0){
%>
	<script type="text/javascript">
		alert("현재 날짜보다 이전 날짜는 사용할 수 없습니다.");
		history.back();
	</script>

<%		
	}
	
	String id2 = (String)session.getAttribute("id");
	crvo.setId(id2);
	
	RentcarDAO rdao = new RentcarDAO();
	rdao.setReserveCar(crvo);
	
	//한대의 자동차 정보 불러오기
	CarListVO cvo = rdao.getOneCar(crvo.getNo());
	
	
	/*
	<option value="1">1일</option>
					<option value="7">7일</option>
					<option value="14">2주</option>
					<option value="31">1달</option>
					<option value="365">1년</option>	
	*/
	
	int getday = 0;
		if(crvo.getDday() == 1)
			getday = 10000;
		else if(crvo.getDday() == 7)
			getday = 70000;
		else if(crvo.getDday() == 14)
			getday = 14000;
		else if(crvo.getDday() == 31)
			getday = 310000;
		else if(crvo.getDday() == 365)
			getday = 3650000;
	
		
	//자동차 총 금액
	int totalcar = cvo.getPrice() * crvo.getQty() + getday; //crvo.getDday();
	
	
	//선택 옵션 금액 처리
	
	/*   name= "insurance"
			<option value="1">적용(1일 1만원)</option>
			<option value="2">적용(7일 1만원)</option>
			<option value="3">비적용</option>			
	*/
	
	int insurance = 0;
		if(crvo.getInsurance() == 1)
			insurance = 10000;
		else if(crvo.getInsurance() == 7)
			insurance = 70000;
	
	/*
		<select name="wifi">
					<option value="1">적용(1일 1만원)</option>
					<option value="2">적용(7일 7만원)</option>
					<option value="3">비적용</option>				
				</select>
	*/
	
	int wifi = 0;
	if(crvo.getWifi() == 1)
		wifi = 10000;
	else if(crvo.getWifi() == 7)
		wifi = 70000;
	
	/*
		<select name="babyseat">
					<option value="1">적용(1일 1만원)</option>
					<option value="2">적용(7일 7만원)</option>
					<option value="3">비적용</option>				
				</select>
    */
    int babyseat = 0;
	if(crvo.getBabyseat() == 1)
		babyseat = 10000;
	else if(crvo.getBabyseat() == 7)
		babyseat = 70000;
    
	/*
		<select name="navination">
					<option value="1">적용(1일 1만원)</option>
					<option value="2">적용(7일 7만원)</option>
					<option value="3">비적용</option>				
				</select>
	*/
	int navination = 0;
	if(crvo.getNavination() == 1)
		navination = 10000;
	else if(crvo.getNavination() == 7)
		navination = 70000;
	
    int totalOption =  crvo.getQty() + getday + (insurance + wifi + babyseat + navination);	
%>

<table width="800">
	<tr height="100">
		<td align="center">
			<font size="5" color="blue">자동차 예약 완료 화면</font>
		</td>
	</tr>
	<tr>
		<td align="center">
			<img src="./images/<%=cvo.getImg() %>" width="500">
		</td>	
	</tr>
	<tr height="100">
		<td align="center">
			<font size="5" color="red">자동차 총예약 금액 : <%=totalcar %></font>
		</td>
	</tr>
	<tr height="100">
		<td align="center">
			<font size="5" color="blue">자동차 총옵션 금액 : <%=totalOption %></font>
		</td>
	</tr>
	<tr height="100">
		<td align="center">
			<font size="5" color="pink">자동차 총 예상 금액 : <%=totalcar + totalOption %></font>
		</td>
	</tr>

</table>	

</body>
</html>