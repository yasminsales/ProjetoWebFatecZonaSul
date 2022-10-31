<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Usuario"%>
<%@page import="ProjetoTerraControllers.ControllerUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    
    Usuario usuSaida = null;
    if (login != null) {    
        String senha = request.getParameter("SENHA");
        Usuario usuEntrada = new Usuario(login,senha);
        ControllerUsuario usucont = new ControllerUsuario();
        usuSaida = usucont.validaWeb(usuEntrada);
        session.setAttribute("UsuarioLogado",usuSaida);
    } else {
        usuSaida = (Usuario)session.getAttribute("UsuarioLogado");
    }
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (usuSaida != null) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Acesso</a>             
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown-continente'>Continente</a>       
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown-pais'>País</a>       
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown-cidade'>Cidade</a>         

            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> Inserir Usuario </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> Consultar Usuário Parametro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> Consultar Usuário Parametro </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/inserirPessoa.jsp"> Inserir Pessoa </a></li>
                    <li><a href="../pessoa/consultarPessoa.jsp"> Consultar Pessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> Consultar Pessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usupes/inserirRelacaoUsuarioPessoa.jsp"> Inserir Usuário Pessoa </a></li>
                    <li><a href="../usupes/consultarRelacaoUsuarioPessoa.jsp"> Consultar Usuário Pessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuario/consultarRelacaoUsuarioPessoa.jsp"> Consulta Usuário Pessoa </a></li>
                </ul>
            <% } %>
            
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown CONTINENTE Structure -->
                <ul id='dropdown-continente' class='dropdown-content'>
                    <li><a href="../continente/inserirContinente.jsp"> Inserir Continente</a></li>
                    <li><a href="../continente/consultarContinente.jsp"> Consultar Continente</a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown-continente' class='dropdown-content'>
                    <li><a href="../continente/consultarContinente.jsp"> Consultar Continente </a></li>
                </ul>
            <% } %>
              <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown-pais Structure -->
                <ul id='dropdown-pais' class='dropdown-content'>
                    <li><a href="../pais/inserirPais.jsp">Inserir País</a></li>
                    <li><a href="../pais/consultarPais.jsp">Consultar País</a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown-continente' class='dropdown-content'>
                    <li><a href="../pais/consultarPais.jsp">Consultar País</a></li>
                </ul>
            <% } %>
            <!-- termino item menu -->
             <!-- Dropdown2 Structure -->
                <ul id='dropdown-cidade' class='dropdown-content'>
                    <li><a href="../cidade/inserirCidade.jsp"> Inserir Cidade </a></li>
                    <li><a href="../cidade/consultarCidade.jsp"> Consultar Cidade </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../cidade/consultarCidade.jsp"> Consultar Cidade </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
            <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>
