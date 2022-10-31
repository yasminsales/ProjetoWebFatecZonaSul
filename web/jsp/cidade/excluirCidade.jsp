<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Cidade"%>
<%@page import="ProjetoTerraControllers.ControllerCidade"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Cidade cid = new Cidade(id);
    ControllerCidade cidCont = new ControllerCidade();
    cid = cidCont.excluir(cid);
    String cdbusca = request.getParameter("CDBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarCidade.jsp?NOME=" + cdbusca;
    response.sendRedirect(url);
%>