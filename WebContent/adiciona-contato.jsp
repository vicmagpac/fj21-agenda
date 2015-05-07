<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
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
	<c:import url="cabecalho.jsp" />
	<form action="adicionaContato" method="post">
		Nome: <input type="text" name="nome" /><br>
		Email: <input type="text" name="email" /><br>
		Endereço: <input type="text" name="endereco" /><br>
		Data Nascimento: <caelum:campoData id="dataNascimento" /><br>
		
		<input type="submit" value="Gravar" />
	</form>
	
	<c:import url="rodape.jsp" />
</body>
</html>