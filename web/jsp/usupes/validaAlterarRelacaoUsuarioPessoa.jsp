<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Usuario"%>
<%@page import="ProjetoTerraControllers.ControllerUsuario"%>
<%@page import="ProjetoTerraModellBins.Pessoa"%>
<%@page import="ProjetoTerraControllers.ControllerPessoa"%>
<%@page import="ProjetoTerraModellBins.UsuarioPessoa"%>
<%@page import="ProjetoTerraControllers.ControllerUsuarioPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idUsuario = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    UsuarioPessoa usupes = new UsuarioPessoa(id,idPessoa,idUsuario,obs);
    ControllerUsuarioPessoa usupescont = new ControllerUsuarioPessoa();
    usupes = usupescont.alterar(usupes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoUsuarioPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    