<%@page import="model.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--1.�����ͺ��̽����� ��� ȸ���� ������ ������. 2.table�±׸� �̿��Ͽ� ȭ���� ȸ���鿡 ������ ���-->
	<%
	MemberDAO mdao = new MemberDAO();
	
	//ȸ������ ������ �󸶳� ����Ǿ� �ִ��� �𸣱⿡ ���������� Vector�� �̿��Ͽ� �����͸� ����.
	Vector<MemberBean> vec = mdao.allSelectMember();
	%>
	<h2>��� ȸ�� ���� ����</h2>
	<table width = "800" border = "1">
		<tr height = "50">
			<td align = "center" width = "150">���̵�</td>
			<td align = "center" width = "250">�̸���</td>
			<td align = "center" width = "200">��ȭ��ȣ</td>
			<td align = "center" width = "200">���</td>
		</tr>
	<%
		for(int i = 0; i < vec.size(); i++){
			MemberBean bean = vec.get(i);
	%>
		<tr height = "50">
			<td align = "center" width = "150"><%=bean.getId() %></td>
			<td align = "center" width = "150"><%=bean.getEmail() %></td>
			<td align = "center" width = "150"><%=bean.getTel() %></td>
			<td align = "center" width = "150"><%=bean.getHobby() %></td>
		</tr>		
	<% 
		}
	%>	
	
	</table>
</body>
</html>