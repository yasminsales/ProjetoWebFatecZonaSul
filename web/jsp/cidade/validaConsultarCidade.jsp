<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Usuario"%>
<%@page import="ProjetoTerraModellBins.Cidade"%>
<%@page import="ProjetoTerraControllers.ControllerCidade"%>

<%
    String nome = request.getParameter("NOME");
    ControllerCidade cidcont = new ControllerCidade();
    List<Cidade> cida = cidcont.listar(nome);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "CDBUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CIDADES</title>
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
            <% if (!(cida.isEmpty())) { %>    
                <tbody>
                    <% for (Cidade listaCidade : cida) { %>
                        <tr>
                            <td><%=listaCidade.getId()%></td>
                            <td><%=listaCidade.getNome()%></td>
                            <td><%=listaCidade.isCapital()%></td
                              <td><%=listaCidade.getPopulacao()%></td>
                              <td><%=listaCidade.getPais()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirCidade.jsp?<%=url + listaCidade.getId()%>">Excluir</a></td>
                                <td><a href="alterarCidade.jsp?<%=url + listaCidade.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>

