<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.UsuarioPessoa"%>
<%@page import="ProjetoTerraControllers.ControllerUsuarioPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    UsuarioPessoa usuPes = new UsuarioPessoa(id);
    ControllerUsuarioPessoa usuPesCont = new ControllerUsuarioPessoa();
    usuPes = usuPesCont.excluir(usuPes);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoUsuarioPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

