<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.co.hyundai.dao.RentcarDAO" %>   
<%@ page import = "kr.co.hyundai.vo.CarListVO" %> 
<%@ page import = "java.util.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//자동차 최신정보 가져오기
	RentcarDAO rdao = new RentcarDAO();

	//벡터를 이용하여 자동타 정보를 저장합니다.
	Vector<CarListVO> cvo = rdao.getSelectCar();
%>

	<table width="800">
		<tr height = "100">
			<td align="center" colspan="3">
				<font size="5" color="red">최신형 자동차</font>
			</td>
		</tr>	
	
		<tr height="240">
			<%
				for(int i=0; i < cvo.size(); i++){
					CarListVO v = cvo.get(i);					
				
			%>
		
			<td width="240" align="center">
				<a href="RentCarMain.jsp?center=CarReserveInfo.jsp?no=<%=v.getNo() %>">
					<img src="./images/<%=v.getImg() %>" width="200" height="150">
				</a>
				<p>
				차량명 : <%=v.getCarname() %>
			</td>
			<%
				}				
			%>				
		</tr>	
	</table>
	<br><br>
	<p>
	<font size="5" color="blue"><b>차량 검색하기</b></font><br>
	<form action="RentCarMain.jsp?center=CarCategoryList.jsp" method="post"> 
		<font size="3" color="blue" align="center"><b>차량검색</b></font>&nbsp;&nbsp;
		<select name="category">
			<option value="1">소형 자동차</option>
			<option value="2">중형 자동차</option>
			<option value="3">대형 자동차</option>
		</select>&nbsp;&nbsp;
		<input type="submit" value="검색">
	</form> 
	<button onclick="location.href='RentCarMain.jsp?center=CarAllList.jsp'">전체검색</button>

</body>
</html>