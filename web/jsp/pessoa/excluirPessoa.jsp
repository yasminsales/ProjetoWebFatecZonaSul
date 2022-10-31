<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Pessoa"%>
<%@page import="ProjetoTerraControllers.ControllerPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pessoa pes = new Pessoa(id);
    ControllerPessoa pesCont = new ControllerPessoa();
    pes = pesCont.excluir(pes);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>
