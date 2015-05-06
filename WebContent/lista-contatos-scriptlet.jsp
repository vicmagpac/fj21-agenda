<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*" %>
<%@ page import="br.com.caelum.dao.*" %>
<%@ page import="br.com.caelum.modelo.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<table border="1">
	<tr>
		<th>Nome</th>
		<th>Email</th>
		<th>Endereço</th>
		<th>Data de nascimento</th>
	</tr>
	<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		for (Contato contato : contatos) {
	%>
		<tr>
			<td><%= contato.getNome() %></td>
			<td><%= contato.getEmail() %></td>
			<td><%= contato.getEndereco() %></td>
			<td>
				<%
					SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
					out.print(data.format(contato.getDataNascimento().getTime()));
				%>
			</td>
		</tr>
	<%
		}
	%>
</table>
</body>
</html>