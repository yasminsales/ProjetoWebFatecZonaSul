<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Cidade"%>
<%@page import="ProjetoTerraControllers.ControllerCidade"%>
<%@page import="ProjetoTerraModellBins.Pais"%>
<%
    String nome = request.getParameter("NOME");
    String capital = request.getParameter("CAPITAL");
    Boolean boolcapital = capital.equals("s");
    String clima = request.getParameter("CLIMA");
    String populacao = request.getParameter("POPULACAO");
    int intpopulacao = Integer.parseInt(populacao);
    String paisId = request.getParameter("PAISID");
    int intpaisid = Integer.parseInt(paisId);
    Cidade cid = new Cidade(nome, boolcapital, clima, intpopulacao, new Pais(intpaisid));
    ControllerCidade cidcont = new ControllerCidade();
    cid = cidcont.inserir(cid);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "../conta-acesso/menu.jsp";
    response.sendRedirect(url);
%>