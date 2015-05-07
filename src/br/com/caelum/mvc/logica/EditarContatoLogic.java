package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class EditarContatoLogic implements Logica {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		long id = Long.parseLong(request.getParameter("id"));
		
		ContatoDao dao = new ContatoDao();
		Contato contato = dao.getContato(id);
		
		request.setAttribute("contato", contato);		
		
		return "WEB-INF/jsp/editar-contato.jsp";
	}
}
