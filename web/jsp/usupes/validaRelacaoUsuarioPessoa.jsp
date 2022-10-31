<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Usuario"%>
<%@page import="ProjetoTerraControllers.ControllerUsuario"%>
<%@page import="ProjetoTerraModellBins.Pessoa"%>
<%@page import="ProjetoTerraControllers.ControllerPessoa"%>
<%@page import="ProjetoTerraModellBins.UsuarioPessoa"%>
<%@page import="ProjetoTerraControllers.ControllerUsuarioPessoa"%>

<%
    int idUsuario = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    UsuarioPessoa usupes = new UsuarioPessoa(idPessoa,idUsuario,obs);
    ControllerUsuarioPessoa usupescont = new ControllerUsuarioPessoa();
    usupes = usupescont.inserir(usupes);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoUsuarioPessoa.jsp";
    response.sendRedirect(url);

%>