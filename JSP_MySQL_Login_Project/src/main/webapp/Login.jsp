<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="Pack.Person" %>
<%@ page import="Pack.MySQL" %>
    
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
	
	<jsp:setProperty name='recv' property='id' />
	<jsp:setProperty name='recv' property='pass'/>
	
	<%
	String head = null;
	String msg = null;
	String checkID = recv.getId();
	String checkPW = recv.getPass();
	System.out.println("�޾ƿ� ID:" + checkID);
	System.out.println("�޾ƿ� PW:" +checkPW);
	%>
	
	<jsp:useBean id='SQL' class='Pack.MySQL' scope='page'/>
	
	<%
	int num = SQL.readlogin(checkID, checkPW); 
	// 0 = �α��� ���� �߻�
	// 1 = ID�� ����
	// 2 = ID�� ������ PW�� Ʋ��
	// 3 = ID PW �Ѵ� ����
	System.out.println(num);
	switch (num) {
	case 0: {
		head = "�α��ν���";
		msg = "�α��� ���� �߻�";
		break;
	}
	case 1: {
		head = "�α��ν���";
		msg = "ID�� Ȯ�� ��Ź�帳�ϴ�.";
		break;
	}
	case 2: {
		head = "�α��ν���";
		msg = "PW�� Ȯ�� ��Ź�帳�ϴ�.";
		break;
	}
	case 3: {
		head = "�α��μ���";
		msg = "�α��� �Ǿ����ϴ�!";
		break;
	}
	default:
		head = "�α��ν���";
		msg = "�α��� ���� �߻�";
		break;
	}
	System.out.println(msg);
	%>
	
	<h1><%= head %></h1>
	<div><%= checkID %>��! <%= msg %></div>
	
	

</body>
</html>