<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Pessoa"%>
<%@page import="ProjetoTerraControllers.ControllerPessoa"%>

<%
    String cpf = request.getParameter("CPF");
    String nome = request.getParameter("NOME");
    String mail = request.getParameter("EMAIL");
    String rg = request.getParameter("RG");
 
    Pessoa pes = new Pessoa(nome,rg,cpf,mail);
    ControllerPessoa pescont = new ControllerPessoa();
    pes = pescont.inserir(pes);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPessoa.jsp";
    response.sendRedirect(url);
%>

