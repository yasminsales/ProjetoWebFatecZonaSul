<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Continente"%>
<%@page import="ProjetoTerraControllers.ControllerContinente"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String area = request.getParameter("AREA");
    int intarea = Integer.parseInt(area);
    String cbusca = request.getParameter("CBUSCA");
    Continente con = new Continente(id,nome,intarea);
    ControllerContinente conCont = new ControllerContinente();
    con = conCont.alterar(con);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarContinente.jsp?NOME=" + cbusca;
    response.sendRedirect(url);
%>
