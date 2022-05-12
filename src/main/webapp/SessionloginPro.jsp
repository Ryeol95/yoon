<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.co.hyundai.dao.RentcarDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login Process</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("passwd1");

	RentcarDAO rdao = new RentcarDAO();

	
	int result = rdao.getMember(id, pass);// 1
	
	if(result == 0){

%>
	<script type="text/javascript">
		alert("회원 아이디 또는 패스워드가 틀립니다.");
		location.href='RentcarMain.jsp?center=Sessionlogin.jsp';
	</script>

	<%
	}else{
		session.setAttribute("id", id);
		response.sendRedirect("RentcarMain.jsp");
		
	}	
	%>

</body>
</html>