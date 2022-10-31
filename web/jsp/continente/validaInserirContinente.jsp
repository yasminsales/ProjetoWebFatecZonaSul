<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Continente"%>
<%@page import="ProjetoTerraControllers.ControllerContinente"%>

<%
    String nome = request.getParameter("NOME");
    String area = request.getParameter("AREA");
    int intarea = Integer.parseInt(area);
    Continente con = new Continente(nome, intarea);
    ControllerContinente concont = new ControllerContinente();
    con = concont.inserir(con);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "../conta-acesso/menu.jsp";
    response.sendRedirect(url);
%>
