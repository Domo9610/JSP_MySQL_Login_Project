<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="Pack.MySQL" %>
<%@ page import="Pack.Person" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mysql" class="Pack.MySQL" scope="page"/>
	<jsp:useBean id="person" class="Pack.Person" scope="page"/>
	<jsp:setProperty property="*" name="mysql"/>
	
	<% 
		String id=null;
		String result=null;
		String check=null;
		
		id=person.getId();
		result=mysql.readID(id);
		switch(result){
			case "checked":{
				out.print("<h1>사용할 수 있는 아이디입니다.</h1>");
				break;
			}
			case "denied":{
				out.print("<h1 style='color=red'>사용할 수 없는 아이디입니다.</h1>");
				break;
			}
		}
	%>
	
	<FORM METHOD=POST action="Join.jsp">
		<INPUT TYPE="hidden" NAME="idcheck" VALUE=<%=result%>>
		<INPUT TYPE="hidden" NAME="id" VALUE=<%=id%>>
		<input TYPE="submit" VALUE="확인">
	</FORM>
	
</body>
</html>