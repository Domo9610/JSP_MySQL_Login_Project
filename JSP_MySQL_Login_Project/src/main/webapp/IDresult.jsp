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
	String head = null;
	String msg = null;
	String checkname = recv.getName();
	String checkemail = recv.getEmail();
	System.out.println("�޾ƿ� �̸�:" + checkname);
	System.out.println("�޾ƿ� email:" +checkemail);
	%>
	
	<jsp:useBean id='SQL' class='Pack.MySQL' scope='page'/>
	
	<% 
	String findname = SQL.findID(checkname, checkemail);
	
	%>
	



	<table width='100' border='1' cellpadding= '10' cellspacing = '5' align='center'>
		<tr align='center'>
							<td> ID </td>
							<td> ������ ���̵�� �Դϴ� </td>
		</tr>
	</table>


</body>
</html>