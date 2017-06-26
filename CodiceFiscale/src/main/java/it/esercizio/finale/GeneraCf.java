package it.esercizio.finale;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.persistence.Query;


public class GeneraCf extends HttpServlet {
	
	GestioneCf genera = new GestioneCf();
	ServicesCrud crud = new ServicesCrud("generateCF");
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcherObj = req.getRequestDispatcher("/generaCf.jsp");
		requestDispatcherObj.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (!"delete".equals(req.getParameter("action"))) {
			String cognome = req.getParameter("cognome");
			String nome = req.getParameter("nome");
			String dataNascita = req.getParameter("dataNascita");
			String comune = req.getParameter("comune");
			String sesso = req.getParameter("sesso");
			
			try{
				String cf = (String) crud.jpaRead("select cf.codiceFiscale from CodiceFiscale cf where cf.nome=\'"+nome+"\' and cf.cognome=\'"+cognome+"\' and cf.dataNascita=\'"+dataNascita+"\'").getSingleResult();
				
				req.setAttribute("cf", cf);
				req.setAttribute("esiste", "0");
				RequestDispatcher requestDispatcherObj = req.getRequestDispatcher("/risultato.jsp");
				requestDispatcherObj.forward(req, resp);
			}catch (Exception e) {
				e.printStackTrace();
			}
			CodiceFiscale persona = genera.calcoloCodiceFiscale(cognome, nome, dataNascita, comune, sesso);
			crud.jpaCreate(persona);
			crud.jpaUpdate(persona);
			
			req.setAttribute("cf", persona.getCodiceFiscale());
			
			
			RequestDispatcher requestDispatcherObj = req.getRequestDispatcher("/risultato.jsp");
			requestDispatcherObj.forward(req, resp);
		} else {
			String cf = req.getParameter("cf");
			CodiceFiscale persona = (CodiceFiscale) crud.jpaRead("select cf from CodiceFiscale cf where cf.codiceFiscale=\'"+cf+"\'").getSingleResult();
			crud.jpaDelete(persona);
			crud.jpaRead("Delete from CodiceFiscale cf where cf.codiceFiscale=\'"+cf+"\'");
			crud.jpaUpdate(persona);
		}
	
	}
}
