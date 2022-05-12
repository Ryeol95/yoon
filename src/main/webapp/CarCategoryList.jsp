<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.co.hyundai.dao.RentcarDAO" %>   
<%@ page import = "kr.co.hyundai.vo.CarListVO" %> 
<%@ page import = "java.util.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량(대형, 중형, 소형)분류</title>
</head>
<body>
	<table width="800" border="1" bordercolor="gray">

<%
	int category = Integer.parseInt(request.getParameter("category"));

	String str = null;
	
	if(category == 1)
		str = "소형";
	else if(category == 2)
		str = "중형";
	else if(category ==3)
		str = "대형";
%>

	<tr>
		<td align="center" colsapn="3">
			<font size="5" color="red"><%=str %>렌트카 보기</font> 
		</td>
	</tr>		

</table>
<%
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarListVO> vo = rdao.getCategoryCar(category);
	
	int j=0;
%>	
	<table>
<% 
	for(int i = 0; i < vo.size(); i++){
		CarListVO cvo = vo.get(i);
		
		if(i%3==0){%><tr><%}
%>
	<td><a href = "RentCarMain.jsp?num=<%=cvo.getNo()%>"><img src = "./images/<%=cvo.getImg() %>"></a>
	<br>
	차량명 : <%=cvo.getCarname() %></td>
<%
		if(i%3==2){%></tr><%}
	}
%>
</table>
</body>
</html>