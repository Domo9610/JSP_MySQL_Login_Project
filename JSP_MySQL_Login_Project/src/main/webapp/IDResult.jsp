<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id='recv' class='Pack.Person' scope='page'/>
	<!-- ��ü�� �����Ǹ� 'recv'��� �̸��� �����ٴ� -->
	<!-- ��ü�� ����� ���������� �� ������ �ȿ�������ϰٴ� -->
	
	<jsp:setProperty name='recv' property='name' />
	<jsp:setProperty name='recv' property='email'/>
	
	<%
	String msg = null;
	String checkname = recv.getName();
	String checkemail = recv.getEmail();
	System.out.println("�޾ƿ� name:" + checkname);
	System.out.println("�޾ƿ� email:" +checkemail);
	%>
	
	<jsp:useBean id='SQL' class='Pack.MySQL' scope='page'/>
	
	<%
	String result = SQL.findID(checkname, checkemail); 
	%>
	
	<h1>ã�� ���</h1>
	<div><%= checkname %><%= result %></div>


</body>
</html>