<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<FORM METHOD=Post action="PWresult.jsp">
		<table  border='1' cellpadding='10' cellspacing='5'
			align='center'>

			<tr align='center'>
				<td colspan='3'>PW찾기</td>
			</tr>

			<tr>
				<td>ID</td>
				<td><input type='text' name='id'></td>
				<td rowspan="3"><input type='submit' value='찾기'></td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type='text' name='name'></td>
			</tr>

			<tr>
				<td>번호</td>
				<td><input type='text' name='number'></td>
			</tr>
		</table>
	</FORM>
</body>

</html>