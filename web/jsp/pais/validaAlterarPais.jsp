<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Pais"%>
<%@page import="ProjetoTerraModellBins.Continente"%>
<%@page import="ProjetoTerraControllers.ControllerPais"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String pib = request.getParameter("PIB");
    int intpib = Integer.parseInt(pib);
    String idh = request.getParameter("IDH");
    int intidh = Integer.parseInt(idh);
    String continenteid = request.getParameter("CONTINENTEID"); 
    int continenteId = Integer.parseInt(continenteid);
    String ppbusca = request.getParameter("PPBUSCA");
    Pais pais = new Pais(id,nome,intpib, intidh,new Continente (continenteId));
    ControllerPais conCont = new ControllerPais();
    pais = conCont.alterar(pais);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPais.jsp?NOME=" + ppbusca;
    response.sendRedirect(url);
%>
