package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CadastroContatosLogic implements Logica {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "/WEB-INF/jsp/adiciona-contato.jsp";
	}
}
