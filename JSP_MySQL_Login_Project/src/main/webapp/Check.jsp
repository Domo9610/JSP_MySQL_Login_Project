<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:useBean id="person" class="Pack.Person" scope="page" /> <!-- javaBean객체 전달 -->
		<jsp:setProperty name="person" property="*"/>  <!-- Person파일을 불러옴 -->

		<jsp:useBean id="db" class="Pack.MySQL" scope="page" /> <!-- javaBean객체 전달 -->
		<jsp:setProperty name="db" property="*"/>  <!-- Person파일을 불러옴 -->
		
	<%  
		
		if(person.getId().equals("")) 
		{
			out.println("<h1>아이디를 입력해주세요.</h1>");
			out.println("<button style='background-color:#1a73e8; color:#ffffff; border:0; border-radius:20px; width:100px; height:30px;' onClick=location.href='Join.jsp'>확인</button>");
		}
		else if(person.getPass().equals(""))
		{
			out.println("<h1>패스워드를 입력해주세요.</h1>");
			out.println("<button style='background-color:#1a73e8; color:#ffffff; border:0; border-radius:20px; width:100px; height:30px;' onClick=location.href='Join.jsp'>확인</button>");
		}
		else if(person.getName().equals(""))
		{
			out.println("<h1>이름을 입력해주세요.</h1>");
			out.println("<button style='background-color:#1a73e8; color:#ffffff; border:0; border-radius:20px; width:100px; height:30px;' onClick=location.href='Join.jsp'>확인</button>");
		}
		else if(person.getEmail().equals(""))
		{
			out.println("<h1>이메일을 입력해주세요.</h1>");
			out.println("<button style='background-color:#1a73e8; color:#ffffff; border:0; border-radius:20px; width:100px; height:30px;' onClick=location.href='Join.jsp'>확인</button>");
		}
		else{
			db.create(person.getId(), person.getPass(), person.getName(), person.getEmail(), person.getNum(), person.getDate());
			out.println("<h1>"+person.getName()+"님 가입을 축하드립니다!</h1>");
			out.println("<button style='background-color:#1a73e8; color:#ffffff; border:0; border-radius:20px; width:100px; height:30px;' onClick=location.href='index.html'>확인</button>");
		 } 
	%>

</body>
</html>