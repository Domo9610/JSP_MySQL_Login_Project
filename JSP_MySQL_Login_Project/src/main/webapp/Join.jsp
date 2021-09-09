<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body align = 'center'>
<%
String CheckValue;
<<<<<<< HEAD

=======
>>>>>>> f8aabbd9f4e61f3d3ef388702e541de725e92be6
if(request.getParameter("CheckValue") != null) {
	CheckValue = request.getParameter("CheckValue");
} else {
	CheckValue = "none";
}

//CheckValue 로 판별하면 된다
// none은 아직 체크하지 않은 상태
// checked 는 체크완료된 상태
// denied 는 거부된 상태(중복이 있다)
//체크확인인지 아닌지 문구 띄워주는부분
String Check_color;
String Check_text;
String Submit_able;
if(CheckValue.equals("checked")){
	Check_color = "blue";
	Check_text = "*사용 가능한 아이디";
	Submit_able = " ";
} else if (CheckValue.equals("denied")){
	Check_color = "red";
	Check_text = "*중복된 아이디";
	Submit_able = "disabled";
} else {
	Check_color = "red";
	Check_text = " ";
	Submit_able = "disabled";
}
<<<<<<< HEAD

=======
>>>>>>> f8aabbd9f4e61f3d3ef388702e541de725e92be6
String id;
if(request.getParameter("id") != null) {
	id = request.getParameter("id");
} else {
	id = "";
}
%>
<<<<<<< HEAD
	<h1> 회원가입</h1>
	<hr/>
 	<form action="IDCheck.jsp" method="post">
      아이디<br/>
      <input type="text" name="id" placeholder="아이디 입력" value="<%=id%>">
      <input type="hidden" name="CheckValue" value="<%=CheckValue%>">
      <button style='background-color:#FFC0CB; color:#ffffff; border:0; border-radius:20px; width:100px; height:30px;'>중복확인</button>
    </form>
      <a style="color: <%=Check_color%>;"><%=Check_text%></a><br/><br/>
      
    <form name="login" action="Check.jsp" method="post">
    <input type="hidden" name="id" value="<%=id%>">
      비밀번호<br/> 
=======
 	<form action="IDCheck.jsp" method="post">
      아이디<br/>
      <input type="text" name="id" placeholder="아이디 입력" value="<%=id%>">
      <input type="hidden" name="CheckValue" value="<%=CheckValue%>" >
      <input type="submit" value="중복 확인"><br/>
    </form>
      <a style="color: <%=Check_color%>;"><%=Check_text%></a><br/><br/>
    <form name="login" action="Check.jsp" method="post">
    <input type="hidden" name="id" value="<%=id%>">
      비밀번호<br/>
>>>>>>> f8aabbd9f4e61f3d3ef388702e541de725e92be6
      <input type="password" name="pass" placeholder="비밀번호 입력"><br/><br/>
      이름<br/>
      <input type="text" name="name" placeholder="이름 입력"> <br/><br/>
      이메일<br/>
      <input type="email" name="email" placeholder="이메일 입력"><br/><br/>
      휴대전화<br/>
      <input type="text" name="num" placeholder="010-****-****"><br/><br/>
<<<<<<< HEAD
      생년월일(8자리)<br/> 
 	  <input type="text" name="date" placeholder="19941234"><br/><br/>
 	  <button style='background-color:#FFC0CB; color:#ffffff; border:0; border-radius:20px; width:100px; height:30px;' <%=Submit_able%>>가입완료</button>
  
=======
      생년월일(8자리)<br/>
 	  <input type="text" name="date" placeholder="941234"><br/><br/>
      <input type="submit" value="가입완료" <%=Submit_able%>>
>>>>>>> f8aabbd9f4e61f3d3ef388702e541de725e92be6
 </form>
</body>
</html>