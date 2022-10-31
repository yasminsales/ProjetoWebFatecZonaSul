<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Continente"%>
<%@page import="ProjetoTerraControllers.ControllerContinente"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Continente con = new Continente(id);
    ControllerContinente conCont = new ControllerContinente();
    con = conCont.excluir(con);
    String cbusca = request.getParameter("CBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarContinente.jsp?NOME=" + cbusca;
    response.sendRedirect(url);
%>