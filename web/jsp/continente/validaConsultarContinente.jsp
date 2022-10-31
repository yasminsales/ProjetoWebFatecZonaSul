<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Continente"%>
<%@page import="ProjetoTerraModellBins.Usuario"%>
<%@page import="ProjetoTerraControllers.ControllerContinente"%>

<%
    String nome = request.getParameter("NOME");
    ControllerContinente concont = new ControllerContinente();
    List<Continente> cont = concont.listar(nome);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "CBUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CONTINENTES</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(cont.isEmpty())) { %>    
                <tbody>
                    <% for (Continente listaContinentes : cont) { %>
                        <tr>
                            <td><%=listaContinentes.getId()%></td>
                            <td><%=listaContinentes.getNome()%></td>
                            <td><%=listaContinentes.getArea()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirContinente.jsp?<%=url + listaContinentes.getId()%>">Excluir</a></td>
                                <td><a href="alterarContinente.jsp?<%=url + listaContinentes.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>