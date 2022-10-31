<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Pais"%>
<%@page import="ProjetoTerraControllers.ControllerPais"%>
<%@page import="ProjetoTerraModellBins.Continente"%>
<%
    String nome = request.getParameter("NOME");
    String pib = request.getParameter("PIB");
    int intpib = Integer.parseInt(pib);
    String idh = request.getParameter("IDH");
    int intidh = Integer.parseInt(idh);
    String continenteId = request.getParameter("CONTINENTEID");
    int intcontinenteid = Integer.parseInt(continenteId);
    Pais pai = new Pais(nome, intpib, intidh, new Continente(intcontinenteid));
    ControllerPais concont = new ControllerPais();
    pai = concont.inserir(pai);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "../conta-acesso/menu.jsp";
    response.sendRedirect(url);
%>
