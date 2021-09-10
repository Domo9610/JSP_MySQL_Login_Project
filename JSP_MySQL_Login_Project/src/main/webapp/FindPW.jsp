<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body align = 'center'>
<h1>PW찾기</h1>
<hr/>
	<FORM METHOD=Post action="PWresult.jsp">
		<table cellpadding='5' cellspacing='5' align='center'>

			<tr>
				<td>ID</td>
				<td><input type='text' name='id'></td>
				<td rowspan="3"><button style='background-color: #FFC0CB; color: #ffffff; border: 0; border-radius: 20px; width: 100px; height: 30px;'>찾기</button></td>
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