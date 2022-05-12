<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.co.hyundai.dao.RentcarDAO" %>   
<%@ page import = "kr.co.hyundai.vo.CarListVO" %> 
<%@ page import = "java.util.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 차량 출력 화면</title>
</head>
<body>
<table width="800">
	<tr height="100">
		<td align="center" colspan="3">
			<font size="10" color="red"><b>전체 자동차 리스트 보기</b></font>
		</td>
	</tr>
</table>


<%
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarListVO> vo = rdao.getAllCar();
	
	int j=0;
%>	
	<table>
<% 
	for(int i = 0; i < vo.size(); i++){
		CarListVO cvo = vo.get(i);
		
		if(i%5==0){%><tr><%}
%>
	<td><a href = "RentCarMain.jsp?num=<%=cvo.getNo()%>"><img src = "./images/<%=cvo.getImg() %>"></a>
	<br>
	차량명 : <%=cvo.getCarname() %></td>
<%
		if(i%5==4){%></tr><%}
	}
%>
</table>
</body>
</html>