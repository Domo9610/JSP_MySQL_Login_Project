<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
<%
String CheckValue = "none";
if(request.getParameter("CheckValue") != null){
	CheckValue = request.getParameter("CheckValue");
}
//CheckValue 로 판별하면 된다
// none은 아직 체크하지 않은 상태
// checked 는 체크완료된 상태
// denied 는 거부된 상태(중복이 있다)
//체크확인인지 아닌지 문구 띄워주는부분
String Check_color;
String Check_text;
String Submit_able;
if(CheckValue == "checked"){
	Check_color = "blue";
	Check_text = "*사용 가능한 아이디";
	Submit_able = " ";
} else if (CheckValue == "denied"){
	Check_color = "red";
	Check_text = "*중복된 아이디";
	Submit_able = "disabled";
} else {
	Check_color = "red";
	Check_text = " ";
	Submit_able = "disabled";
}
String id = " ";
if(request.getParameter("id") != null) {
	id = request.getParameter("id");
}
%>
 <form name="login" action="Check.jsp" method="post">
 	<form action="IDCheck.jsp" method="post">
      아이디<br/>
      <input type="text" name="id" placeholder="아이디 입력" value="<%=id%>">
      <input type="hidden" name="CheckValue" value="<%=CheckValue%>" > 
      <input type="submit" value="중복 확인"><br/>
    </form>
      <a style="color: <%=Check_color%>;"><%=Check_text%></a><br/><br/>
      비밀번호<br/> 
      <input type="password" name="pass" placeholder="비밀번호 입력"><br/><br/>
      이름<br/>  
      <input type="text" name="name" placeholder="이름 입력"> <br/><br/>
      이메일<br/>
      <input type="email" name="email" placeholder="이메일 입력"><br/><br/>
      휴대전화<br/>  
      <input type="text" name="num" placeholder="010-****-****"><br/><br/>
      생년월일(8자리)<br/> 
 	  <input type="text" name="date" placeholder="941234"><br/><br/>
      <input type="submit" value="가입완료" <%=Submit_able%>>    
 </form>
</body>
</html>