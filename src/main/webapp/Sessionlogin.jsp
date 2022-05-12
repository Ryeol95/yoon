<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session을 이용한 로그인</title>
</head>
<body>
<h2 align="center">Session Login</h2> 
<form action="SessionloginPro.jsp" method="post"> 
	<table border="1" align="center" width="600" bordercolor="gray">
		<tr height="100">
			<td align="center" width="150">아이디</td>
			<td align="center" width="450">
				<input type="text" name="id" size="60" placeholder="id를 입력하세요.">
			</td>
		</tr>
		<tr height="100">
			<td align="center" width="150">패스워드</td>
			<td align="center" width="450">
				<input type="password" name="passwd1" size="60" placeholder="passwd를 입력하세요.">
			</td>
		</tr>	
		<tr height="60">
			<td align="center" colspan="2">
				<input type="submit" value="로그인">&nbsp;&nbsp;
				<input type="reset" value="취소">
			</td>
		</tr>
	
	</table>
</form>
</body>
</html>