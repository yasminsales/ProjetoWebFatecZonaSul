<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Pais"%>
<%@page import="ProjetoTerraControllers.ControllerPais"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pais pai = new Pais(id);
    ControllerPais paiCont = new ControllerPais();
    pai = paiCont.excluir(pai);
    String ppbusca = request.getParameter("PPBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPais.jsp?NOME=" + ppbusca;
    response.sendRedirect(url);
%>
