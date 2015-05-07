<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="js/jquery-ui/css/ui-lightness/jquery-ui-1.9.2.custom.min.css" rel="stylesheet" />
	<script type="text/javascript" src="js/jquery-ui/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/jquery-ui/js/jquery-ui-1.9.2.custom.min.js"></script>
</head>
<body>
	<c:import url="/cabecalho.jsp" />
	<form action="mvc?logica=AtualizaContatoLogic" method="post">
		<input type="hidden" name="id" value="${contato.id}"/>
		Nome: <input type="text" name="nome" value="${contato.nome}" /><br>
		Email: <input type="text" name="email" value="${contato.email}"/><br>
		Endereço: <input type="text" name="endereco" value="${contato.endereco}"/><br>
		
		<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" var="dataNas"/>
		Data Nascimento: <caelum:campoData id="dataNascimento" value="${dataNas}" /><br>
		
		<input type="submit" value="Atualizar" />
	</form>
	
	<c:import url="/rodape.jsp" />
</body>
</html>