<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ID찾기</title>
</head>

<body>
	<FORM METHOD=Post action="IDresult.jsp">
		<table width='100' border='1' cellpadding='10' cellspacing='5'
			align='center'>

			<tr align='center'>
				<td colspan='3'>ID찾기</td>
			</tr>

			<tr>
				<td width='10%'>이름</td>
				<td><input type='text' name='name'></td>
				<td rowspan="2"><input type='submit' value='찾기'></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><input type='text' name='email'></td>
			</tr>
		</table>
	</FORM>
</body>
</html>